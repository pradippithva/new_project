import 'package:flutter/material.dart';

class task extends StatefulWidget {
  const task({super.key});

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      height: 300,
                    ),
                    Positioned(
                      top: 0,
                      child: Container(
                        height: 250,
                        child: Image.asset(
                          'assets/istockphoto-517188688-612x612.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      child: Container(
                        height: 80,
                        color: Colors.red,
                      ),
                    ),
                    Positioned(
                      bottom: 18,
                      left: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        alignment: Alignment.center,
                        height: 60,
                        width: 320,
                        child: Center(
                          child: Container(
                            height: 40,
                            width: 300,
                            // color: Colors.yellow,
                            child: Container(
                              color: Colors.white,
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.bottom,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.black,
                                    ),
                                    hintText: 'Search',
                                    hintStyle: TextStyle(color: Colors.black),
                                    // suffixIcon: Icon(
                                    //   // Icons.accessibility_rounded,
                                    //   // color: Colors.black,
                                    // ),
                                    // errorBorder: OutlineInputBorder(
                                    //     borderSide: BorderSide(
                                    //         color: Colors.greenAccent)),
                                    // enabledBorder: (OutlineInputBorder(
                                    //     borderSide:
                                    //         BorderSide(color: Colors.black))),
                                    focusedBorder: (OutlineInputBorder(
                                        borderSide: BorderSide.none))),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter password';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
