import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class practice_two extends StatefulWidget {
  const practice_two({super.key});

  @override
  State<practice_two> createState() => _practice_twoState();
}

class _practice_twoState extends State<practice_two> {
  void showToast() {
    Fluttertoast.showToast(
        msg: 'This is toast notification',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.blue,
        textColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Toast practice'),
        ),
        body: Container(
          child: Column(
            children: [
              ElevatedButton(
                child: Text('shoe toast'),
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: 'This is toast notification',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 2,
                      backgroundColor: Colors.blue,
                      textColor: Colors.white);
                },

              )
            ],
          ),
        ),
      ),
    );
  }
}
