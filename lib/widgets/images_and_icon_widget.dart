import 'package:flutter/material.dart';



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
