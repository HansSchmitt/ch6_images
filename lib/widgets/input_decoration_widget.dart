import 'package:flutter/material.dart';

class InputDecorationWidget extends StatelessWidget {
  const InputDecorationWidget({
    Key key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 16.0,
            ),
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Colors.purple),
              labelText: "Notes",
              border: OutlineInputBorder(),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter your notes',
            ),
          )
        ],
      ),
    );
  }
}
