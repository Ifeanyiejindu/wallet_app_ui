import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/utils/action_button.dart';
import 'package:wallet_app_ui/utils/credit_cards.dart';
import 'package:wallet_app_ui/utils/statistics_and_transactions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color(0xFFFF99B7),
        child: Icon(Icons.monetization_on),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.home,
                  color: Color(0xFFFF99B7),),
              iconSize: 40,),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.settings),
              iconSize: 40,),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFF9FCFF),
      body: SafeArea(
        child: Column(
          children: [
            //top part
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('My', style: TextStyle(
                        fontSize: 30,
                      fontWeight: FontWeight.bold),),
                      Text(' Cards', style: TextStyle(
                        fontSize: 30
                      ),),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFE7EEFC)
                    ),
                    child:
                    Icon(Icons.add),
                  ),
                ],
              ),
            ),

            //credit cards
            Container(
              height: 240,
              child:PageView(
                controller: _controller,
                children: [
                  CreditCards(
                    cardType: 'VISA',
                    amount: '5,250.20',
                    cardDigits: '3456',
                    expiryDate: '10/24',
                    cardColor: Color(0xFF7469F4),
                    cardTypeColor: Color(0xFF9CDBF6),
                  ),
                  CreditCards(
                    cardType: 'MASTERCARD',
                    amount: '1,250.20',
                    cardDigits: '2321',
                    expiryDate: '01/22',
                    cardColor: Colors.red,
                    cardTypeColor: Colors.white,
                  ),
                  CreditCards(
                    cardType: 'VISA',
                    amount: '250.20',
                    cardDigits: '0000',
                    expiryDate: '07/24',
                    cardColor: Color(0xFF7469F4),
                    cardTypeColor: Color(0xFF9CDBF6),
                  ),

                ],
              ),
            ),

            SizedBox(height: 15,),

            //scroll identifier
            SmoothPageIndicator(

                effect: ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: Colors.grey.shade800
                ),
                controller: _controller, count: 3),
            SizedBox(height: 10,),

            //the action buttons
            Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 25, bottom: 25, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  //action button icon
                  ActionButton(icon: 'lib/icons/send-money.png', text: 'Send'),
                  SizedBox(width: 10,),
                  ActionButton(icon: 'lib/icons/credit-card.png', text: 'Pay'),
                  SizedBox(width: 10,),
                  ActionButton(icon: 'lib/icons/bill.png', text: 'Bills'),
                ],
              ),
            ),

            SizedBox(height: 10,),

            //statistics
            Expanded(
              child: ListView(
                children: [
                  TileList(icon: 'lib/icons/analysis.png',
                      title: 'Statistics',
                      subTitle: 'Payments and Income'),
                  SizedBox(height: 20,),


                  //transactions
                  TileList(icon: 'lib/icons/transaction.png', title: 'Transactions', subTitle: 'Transaction History')

                ],
              ),
            )

            //bottom navigation menu
          ],
        ),
      ),
    );
  }
}
