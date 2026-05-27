import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_learning/screen/preferredSize.dart';

class profileCard_Screen extends StatelessWidget {
  Widget statColoum(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(label, style: TextStyle(fontSize: 17, color: Colors.white)),
      ],
    );
  }

  Widget name(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Myappbar1(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xff0419a0), Colors.black]),
          border: Border.all(color: Colors.white, width: 4),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey.shade200,
                  child: Icon(Icons.person, size: 50, color: Color(0xff110b0b)),
                ),
                SizedBox(height: 10),
                name("Akash kumar"),
                SizedBox(height: 5),
                name("akash01csc@gmail.com"),
                SizedBox(height: 5),
                name("India"),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    statColoum("120", "Post"),
                    statColoum("320K", "Followers"),
                    statColoum("150", "Following"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 60),
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
                padding: EdgeInsets.all(15),
              ),
              child: Text(
                "Follow",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
