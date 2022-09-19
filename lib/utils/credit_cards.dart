import 'package:flutter/material.dart';

class CreditCards extends StatelessWidget {
  final String cardType;
  final String amount;
  final cardDigits;
  final expiryDate;
  final cardColor;
  final cardTypeColor;

  CreditCards({
    required this.cardType,
    required this.amount,
    required this.cardDigits,
    required this.expiryDate,
    required this.cardColor,
    required this.cardTypeColor
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 25, right: 25, bottom: 5),
      child: Container(
        padding: EdgeInsets.all(35),
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(40)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(cardType,
                  style: TextStyle(
                      color: cardTypeColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),),
              ],
            ),
            Text('Balance', style: TextStyle(
                fontSize: 18,
                color: Color(0xFFFCFBFF),
                fontWeight: FontWeight.w300
            ),),
            SizedBox(height: 10,),
            Text('\$'+amount, style: TextStyle(
                fontSize: 40,
                color: Color(0xFFFCFBFF)
            ),),

            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('****'+cardDigits, style: TextStyle(
                    color: Color(0xFFFCFBFF),
                    fontSize: 20
                ),),
                Text(expiryDate, style: TextStyle(
                    color: Color(0xFFFCFBFF),
                    fontSize: 20
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
