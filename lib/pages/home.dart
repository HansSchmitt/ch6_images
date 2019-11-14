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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                const ImagesAndIconWidget(),
                Divider(),
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.orange,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0),
                      )
                    ]
                  ),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImagesAndIconWidget extends StatelessWidget {
  const ImagesAndIconWidget({
    Key key
}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image(
          image: AssetImage('assets/images/house.png'),
          fit: BoxFit.cover,
          color: Colors.blue,
          width: MediaQuery.of(context).size.width / 3,
          height: MediaQuery.of(context).size.width / 3,
        ),
        Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png',
          width: MediaQuery.of(context).size.width / 3,
        ),
        Icon(
          Icons.brush,
          color: Colors.lightBlue,
          size: MediaQuery.of(context).size.width / 4,
        )
      ],
    );
  }
}
