import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:xgrid/CommonWidgets/container.dart';

import '../CommonWidgets/button.dart';
import '../CommonWidgets/text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.amber,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.person_2_outlined,
                        color: Colors.amber,
                        size: 100,
                      ),
                    ),
                  ),
                  text("John Doe", 20.00, FontWeight.bold),
                  text("john.doe@example.com", 15.00, FontWeight.w500),
                  SizedBox(
                    height: 8,
                  ),
                  btnShow("Upgrade to PRO", () {}, 170.00, Colors.amber,
                      TextStyle(color: Colors.black), 10.00),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                child: Column(
                  children: [
                    container(Icons.privacy_tip_outlined, "Privacy", () {}),
                    SizedBox(
                      height: 10,
                    ),
                    container(Icons.history, "Purchase History", () {}),
                    SizedBox(
                      height: 10,
                    ),
                    container(
                        Icons.help_outline_outlined, "Help & Support", () {}),
                    SizedBox(
                      height: 10,
                    ),
                    container(Icons.settings_outlined, "Setting", () {}),
                    SizedBox(
                      height: 10,
                    ),
                    container(
                        Icons.person_add_outlined, "Invite a Friend", () {}),
                    SizedBox(
                      height: 10,
                    ),
                    btnShow("LOGOUT", () {}, Get.width, Colors.black,
                        TextStyle(color: Colors.white), 18.00)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
                    Container(
            height: 6,
            width: 200,
            decoration:  BoxDecoration(color: Colors.black,
             borderRadius: BorderRadius.circular(5),

             
            ),
          ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
