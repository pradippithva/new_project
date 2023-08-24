import 'package:flutter/material.dart';

class Stack_Position extends StatefulWidget {
  const Stack_Position({super.key});

  @override
  State<Stack_Position> createState() => _Stack_PositionState();
}

class _Stack_PositionState extends State<Stack_Position> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: (Scaffold(
          appBar: AppBar(
            title: Text("Stack"),
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Container(
                        height: 300,
                        width: 300,
                        color: Colors.red,
                        // child: Image.asset("assets/flutter_icon.png",fit: BoxFit.cover,),
                      ),
                      Positioned(
                          top: 10,
                          left: 10,
                          right: 10,
                          bottom: 10,
                          child: Container(
                            child: Text('fgvhb',style: TextStyle(fontSize: 15),),
                            color: Colors.red,

                          )),
                      Positioned(
                          top: 20,
                          left: 20,
                          right: 20,
                          bottom: 20,
                          child: Container(
                            color: Colors.black,
                          )),
                      Positioned(
                          top: 150,
                          right: 150,
                          child: Icon(Icons.favorite,color: Colors.blue,))
                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
