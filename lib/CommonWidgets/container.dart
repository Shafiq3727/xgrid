 import 'package:flutter/material.dart';

container(icon,text,onPressed){
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey[400],
      borderRadius: BorderRadius.circular(20),
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.grey.withOpacity(0.5),
      //     spreadRadius: 2,
      //     blurRadius: 5,
      //     offset: const Offset(0, 3), // changes position of shadow
      //   ),
      // ],
    ),

  
    padding: EdgeInsets.all(10),
    child: Row(
      children: [
        Icon(icon),
        SizedBox(width: 10,),
        Text(text,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
        Spacer(),
        IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_forward_ios))
      ],
    ),
  );
 }