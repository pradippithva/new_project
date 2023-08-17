import 'package:flutter/material.dart';

import 'Grideview.dart';

class Textfield_Screen extends StatefulWidget {
  const Textfield_Screen({super.key});

  @override
  State<Textfield_Screen> createState() => _Textfield_ScreenState();
}

class _Textfield_ScreenState extends State<Textfield_Screen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Textfield"),
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Number',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.ac_unit),
                          suffixIcon: Icon(Icons.accessibility_rounded),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          enabledBorder: (OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                          focusedBorder: (OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.red, width: 2)))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,borderRadius: BorderRadius.circular(20)),

                    height: 50,
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => grideview()));
                        if (_formKey.currentState!.validate()) ;
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
