import 'package:flutter/material.dart';

class TileList extends StatelessWidget {
  final String icon;
  final String title;
  final String subTitle;

  TileList({required this.icon,
  required this.title,
  required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(6,6)
                      )]
                ),
                child: Image.asset(icon,
                  height: 40,
                  width: 40,),
              ),

              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),

                  SizedBox(height: 15,),

                  Text(subTitle, style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF989EBB)
                  ),),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF989EBB),),
          )
        ],
      ),
    );
  }
}
