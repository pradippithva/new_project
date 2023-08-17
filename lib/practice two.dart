import 'package:flutter/material.dart';

class two extends StatefulWidget {
  const two({super.key});

  @override
  State<two> createState() => _twoState();
}

class _twoState extends State<two> {
  final List<dynamic> icon = [Icons.ac_unit, Icons.back_hand, Icons.home];
  final List<dynamic> text = ['one', 'two', 'three'];
  final List<dynamic> colorcode = [Colors.red, Colors.green, Colors.red];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('home'),
        ),
        body: Container(
          color: Colors.grey,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                  height: 600,
                  child: GridView.builder(
                      itemCount: icon.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 5,
                      ),
                      itemBuilder: (BuildContext contect, int index) {
                        return Container(
                          padding: EdgeInsets.all(30),
                          color: Colors.yellow [100],
                          child: Column(
                            children: [
                              Container(
                                child: Icon(icon[index]),
                              ),
                              Container(
                                child: Text(text[index]),
                              ),
                            ],
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
