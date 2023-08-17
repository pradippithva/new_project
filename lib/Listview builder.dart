import 'package:flutter/material.dart';

class Listview_Builder extends StatefulWidget {
  const Listview_Builder({super.key});

  @override
  State<Listview_Builder> createState() => _Listview_BuilderState();
}

class _Listview_BuilderState extends State<Listview_Builder> {
  final List<dynamic> Addtext = ['one', 'two', 'three', 'four', 'five','six'];
  final List<dynamic> Colorcodes = [100, 300, 100, 100, 100,100];
  final List<dynamic> Fontcode = [];

  final List<dynamic> Iconslist = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 600,
                  child: ListView.builder(
                      itemCount: Addtext.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          color: Colors.green[Colorcodes[index]],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  Addtext[index],
                                  style: TextStyle(color: Colors.black),
                                ),
                                height: 50,
                                width: 300,
                              ),
                              Icon(Icons.arrow_back_ios)
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
