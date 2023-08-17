import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toast_Screeen extends StatefulWidget {
  const Toast_Screeen({super.key});

  @override
  State<Toast_Screeen> createState() => _Toast_ScreeenState();
}

class _Toast_ScreeenState extends State<Toast_Screeen> {

  void showToast() {
    Fluttertoast.showToast(
        msg: 'This is toast notification',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.yellow
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tost Screen"),
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                ElevatedButton(onPressed: ()=>showToast (), child: Text("Show Tost"))

              ],
            ),
          ),
        ));
  }
}

