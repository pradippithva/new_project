import 'package:flutter/material.dart';

class stack_position extends StatefulWidget {
  const stack_position({super.key});

  @override
  State<stack_position> createState() => _stack_positionState();
}

class _stack_positionState extends State<stack_position> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Stack position'),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      height: 400,
                      width: 400,
                      color: Colors.blue,
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        bottom: 0,
                        left: 250,
                        child: Container(
                          color: Colors.red,
                        )),
                    Positioned(
                        top: 150,
                        right: 100,
                        bottom: 150,
                        left: 0,
                        child: Container(
                          color: Colors.greenAccent,
                        )),
                    Positioned(
                        top: 50,
                        right: 100,
                        bottom: 260,
                        left: 0,
                        child: Container(
                          color: Colors.yellow,
                        )),
                    Positioned(
                      top: 300,
                        right: 100,
                        bottom: 10,
                        left: 0,
                        child: Container(
                          child: Image.asset('assets/stock-vector-caution-exclamation-mark-white-red-color-vector-1055269061.jpg',
                          fit: BoxFit.fill,),
                          color: Colors.orange,
                        ))

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
