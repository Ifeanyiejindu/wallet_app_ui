import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String icon;
  final  String text;

  ActionButton({
    required this.icon,
    required this.text
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 15,
                    spreadRadius: 1,
                    offset: Offset(6,6)
                )]
          ),
          child: Image.asset(icon,
            height: 50,
            width: 50,),
        ),
        SizedBox(height: 10,),

        //action text
        Text(text, style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFF9AA0BF)
        ),)
      ],
    );
  }
}
