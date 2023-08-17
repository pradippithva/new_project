import 'package:flutter/material.dart';

class one extends StatefulWidget {
  const one({super.key});

  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: 160,
                    child: Image.asset(
                      ''
                          'assets/istockphoto-517188688-612x612.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Dr.Stefeni Albert',
                            maxLines: 2,
                            style: TextStyle(fontSize: 23),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Heart Speailist',
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ),
                        Container(
                          width: 130,
                          margin: EdgeInsets.only(top: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Icon(
                                  Icons.message,
                                  size: 35,
                                  color: Colors.orange,
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.call,
                                  size: 35,
                                  color: Colors.red,
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.video_call,
                                  size: 35,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "About",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        'Dr.stefeni albert is a cardiologist in nashville & affiliated with multiple hospitals in the area he received his medical degree from duke university school of medicine and has been in practice for more than 20 years.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        child: Row(
                          children: [],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
