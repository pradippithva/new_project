import 'package:flutter/material.dart';

class grideview extends StatefulWidget {
  const grideview({super.key});

  @override
  State<grideview> createState() => _grideviewState();
}

class _grideviewState extends State<grideview> {
  final List<dynamic> icon = [
    Icons.home,
    Icons.call,
    Icons.mail,
    Icons.image,
    Icons.message,
    Icons.add_circle,
    Icons.back_hand,
    Icons.abc_rounded,
    Icons.access_alarms,
    Icons.access_time_rounded
  ];
  final List<dynamic> text = ['mail', 'call', 'message', 'home', 'image','circal','hand','rounded','alarms','rounded'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('grideview'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 300,
                child: GridView.builder(
                    itemCount: icon.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext contex, int index) {
                      return Container(
                        color: Colors.yellow[300],
                        padding: EdgeInsets.all(25),
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
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
