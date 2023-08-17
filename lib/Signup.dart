import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Grideview.dart';
import 'Login.dart';

class signuppage extends StatefulWidget {
  const signuppage({super.key});

  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Form'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Container(
                    child: Center(
                      child: Text('Signup',
                          style: GoogleFonts.roboto(fontSize: 30)),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 35),
                        child: Center(
                          child: Text(
                            'already have account?',
                            style: GoogleFonts.kanit(fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => loginpage()));
                            }
                            ;
                          },
                          child: Text(
                            'Login',
                            style: GoogleFonts.kanit(fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Username',
                            prefixIcon: Icon(Icons.content_copy_outlined)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'plaese enter username';
                          }
                          return null;
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'plaese enter email';
                          }
                          return null;
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock_open_rounded)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'plaese enter Password';
                          }
                          return null;
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Confirm password',
                            prefixIcon: Icon(Icons.lock_open_rounded)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'plaese enter Password';
                          }
                          return null;
                        }),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    height: 50,
                    width: 400,
                    child: TextButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginpage()));
                        }
                        ;
                      },
                      child: Text(
                        'REGISTER NOW',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
