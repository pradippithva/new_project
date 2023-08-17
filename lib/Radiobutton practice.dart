import 'dart:ffi';

import 'package:flutter/material.dart';

class radio_practice extends StatefulWidget {
  const radio_practice({super.key});

  @override
  State<radio_practice> createState() => _radio_practiceState();
}

class _radio_practiceState extends State<radio_practice> {
  String? gender;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          leading: IconButton(onPressed: (){},
            icon: Icon(Icons.arrow_back,color: Colors.red,),

          ),
          title: Text('Radio button'),
        ),
        body: Column(
          children: [
            RadioListTile(
              title: Text('Radio 1'),
              value: 'Radio 1',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text('Radio 2'),
              value: 'Radio 2',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text('Radio 3'),
              value: 'Radio 3',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text('Radio 4',style: TextStyle(color: Colors.blue),),
              value: 'Radio 4',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text('Radio 5'),
              value: 'Radio 5',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
