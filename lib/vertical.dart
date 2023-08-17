import 'package:flutter/material.dart';

class lview extends StatefulWidget {
  const lview({super.key});

  @override
  State<lview> createState() => _lviewState();
}

class _lviewState extends State<lview> {
  final List<dynamic> text = ['one', 'two', 'three'];
  final List<dynamic> img = [
    'assets/istockphoto-517188688-612x612.jpg',
    'assets/istockphoto-517188688-612x612.jpg',
    'assets/istockphoto-517188688-612x612.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 500,
                child: ListView.builder(
                    itemCount: text.length,
                    itemBuilder: (BuildContext contex, int index) {
                      return Container(
                        child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              // height: 500,
                              child: Image.asset(img[index]),
                            ),
                            Container(
                              child: Text(text[index]),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
