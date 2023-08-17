import 'package:demo1/practice%20two.dart';
import 'package:demo1/practicetwo.dart';
import 'package:demo1/stackposition%20practice.dart';
import 'package:demo1/task.dart';
import 'package:demo1/textfield.dart';
import 'package:demo1/vertical.dart';
import 'package:flutter/material.dart';

import 'Alert box.dart';
import 'Drawer.dart';
import 'Grideview.dart';
import 'LIst.dart';
import 'Listview builder.dart';
import 'Login.dart';
import 'Radiobutton practice.dart';
import 'Radiobutton.dart';
import 'Stack position.dart';
import 'Task 1.dart';
import 'Task 2.dart';
import 'Toast firt.dart';
import 'Toast practice.dart';
import 'Toast_Screen.dart';
import 'checkbox_practice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: radio_practice()
    );
  }
}


