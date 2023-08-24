import 'dart:ffi';

import 'package:flutter/material.dart';

class chekbox_practice extends StatefulWidget {
  const chekbox_practice({super.key});

  @override
  State<chekbox_practice> createState() => _chekbox_practiceState();
}

class _chekbox_practiceState extends State<chekbox_practice> {
  bool _chekbox_one = false;
  bool _checkbox_2 = false;
  bool _checkbox_3 =false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Check Box'),
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                      value: _chekbox_one,
                      onChanged: (value) {
                        setState(() {
                          _chekbox_one = !_chekbox_one;
                          _checkbox_2 = !_checkbox_2;
                          _checkbox_3 = !_checkbox_3;
                        });
                      }),
                  Text('are you sure')
                ],
              ),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('are you sure'),
                  value: _checkbox_2,
                  onChanged: (value){
                    setState(() {
                      _checkbox_2 = ! _checkbox_2;
                    });
                  },),

              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('are you sure'),
                value: _checkbox_3,
                onChanged: (value){
                  setState(() {
                    _checkbox_3 = ! _checkbox_3;
                  });
                },),
            ],

          ),
        ),
      ),
    );
  }
}
