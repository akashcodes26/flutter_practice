import 'package:flutter/material.dart';

class Myappbar1 extends StatelessWidget implements PreferredSizeWidget {
  const Myappbar1({super.key});

  Widget actionIcon(IconData icon, Color color) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon),
      color: Colors.white
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(25),
        side: BorderSide(color: Colors.white, width: 2),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.purple, Colors.blue],
        )),
      ),
      toolbarHeight: 80,
      title: Text(
        "My Appbar Screen..",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      //backgroundColor: Color(0xffffb189),
      //centerTitle: true,
      actions: [
        actionIcon(Icons.search, Colors.white),
        actionIcon(Icons.notifications, Colors.white),
        actionIcon(Icons.more_vert, Colors.white),
      ],
      elevation: 10,
      shadowColor: Colors.black,

      leading: Builder(
        builder: (context) => IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      // bottom: TabBar(
      //     labelColor: Color(0xfff8ff3b),
      //     unselectedLabelColor: Colors.white,
      //     labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //     tabs: [Tab(text: 'A'), Tab(text: 'B')]),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}
