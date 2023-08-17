import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class toast_practice extends StatefulWidget {
  const toast_practice({super.key});

  @override
  State<toast_practice> createState() => _toast_practiceState();
}

class _toast_practiceState extends State<toast_practice> {
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
          title: Text('Toast'),
        ),
        body: Container(
          // height: 50,
          width: 400,
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  final snackbar = SnackBar(
                    content: const Text('sending'),
                    action: SnackBarAction(
                      label: 'undo',
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: const Text('snackbar'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  showToast();
                },
                child: Text('show toast'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  final snackbar = SnackBar(
                    content: const Text('panding...'),
                    action: SnackBarAction(
                      label: 'undo',
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: const Text('snackbar'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
