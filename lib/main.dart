import 'package:flutter/material.dart';
import 'package:ch6_images/pages/home.dart';

/*
Project folder structure:
Assets: Contains subfolders to organize data and files that will be shipped with the app, for example: images, fonts, data files, etc.
lib: Contains source code logic, including UI. It is subdivided into subfolders for better maintainability and organization.
lib\models: Holds classes of data that model things like customer information and inventory items.
lib\pages: Holds User Interface(UI) files, such as login, lists, charts, and settings pages.
lib\utils: Hols helper classes such as data conversion and calculations.
lib\widgets: Holds individual or composite widgets that will be displayed on UI files in the Lib\pages folder.
lib\services: Holds classes that help transceive data from services on the internet
 */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}