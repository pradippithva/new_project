import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Alertbox extends StatefulWidget {
  const Alertbox({super.key});

  @override
  State<Alertbox> createState() => _AlertboxState();
}

class _AlertboxState extends State<Alertbox> {
  _displaydailouge(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Column(
              children: [
                Text('popup Dialog Title'),
              ],
            ),
            content: Container(
              height: 100,
              color: Colors.grey,
              child: Column(
                children: [
                  Text('Custom popup dialog'),
                  Container(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/stock-vector-caution-exclamation-mark-white-red-color-vector-1055269061.jpg'),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'No',
                    style:
                        GoogleFonts.roboto(fontSize: 20, color: Colors.blue),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Yes',
                    style:
                    GoogleFonts.roboto(fontSize: 20, color: Colors.blue),
                  ))

            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Alert box'),
          actions: [Container(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.menu))],
        ),
        body: Container(
          height: 200,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red),
                  height: 40,
                  width: 500,
                  child: TextButton(
                    onPressed: () {
                      _displaydailouge(context);
                    },
                    child: Text(
                      'on press',
                      style:
                          GoogleFonts.roboto(fontSize: 20, color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
