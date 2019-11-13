import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Chapter 6 - Iamges'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
          ),
          actions: <Widget>[
            PopupMenuButton<Icon>(
              icon: Icon(Icons.more_vert),
              onSelected: null,
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Icon>>[
                const PopupMenuItem<Icon>(
                  child: Icon(Icons.flag),
                ),
                const PopupMenuItem<Icon>(
                  child: Icon(Icons.radio),
                ),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
          ),
        ),
      ),
    );
  }
}

