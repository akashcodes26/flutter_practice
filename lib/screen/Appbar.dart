import 'package:flutter/material.dart';

class Myappbar_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Appbar Screen..",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
        selectionColor: Colors.black,),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        actions: [IconButton(icon: Icon(Icons.search),onPressed: (){},),IconButton(icon: Icon(Icons.search),onPressed: (){},),
        ],
      ),
    );
  }
}
