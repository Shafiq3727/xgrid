import 'package:flutter/material.dart';

//btnShow({IconData?icon, required text,required ontap})
Widget btnShow(text, ontap,width,color,style,hight) {
  return TextButton(
    onPressed: ontap,
    child: Container(
      width: width,
      
      padding:  EdgeInsets.symmetric(horizontal: 0, vertical: hight),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Text(
            text,
            style: style
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
    ),
  );
}
