import 'package:flutter/material.dart';

import 'Alert box.dart';

class listview_test extends StatefulWidget {
  const listview_test({super.key});

  @override
  State<listview_test> createState() => _listview_testState();
}

class _listview_testState extends State<listview_test> {
  final List<dynamic> CardList = [
    {
      "image": 'assets/istockphoto-517188688-612x612.jpg',
      "Text1": "Text",
      "Text2": "Text jch",
      "Icon": Icons.add_alarm
    },
    {
      "image": 'assets/Natural_History_Museum_London_Jan_2006.jpg',
      "Text1": "Text",
      "Text2": "Add",
      "Icon": Icons.add_circle
    },
    {
      "image": 'assets/istockphoto-517188688-612x612.jpg',
      "Text1": "Text",
      "Text2": "Text jch",
      "Icon": Icons.backpack
    },
  ];
  final List<dynamic> Gview = [
    {
      "images": "assets/1692179869588.JPEG",
      "text_": "Text 1",
      "text__": "Text 2",
    },
    {
      "images": "assets/1692179869588.JPEG",
      "text_": "Text 3",
      "text__": "Text 4",
    },
    {
      "images": "assets/1692179869588.JPEG",
      "text_": "Text 5",
      "text__": "Text 6",
    },
    {
      "images": "assets/1692179869588.JPEG",
      "text_": "Text 7",
      "text__": "Text 8",
    },
    {
      "images": "assets/1692179869588.JPEG",
      "text_": "Text 9",
      "text__": "Text 10",
    },
    {
      "images": "assets/1692179869588.JPEG",
      "text_": "Text 11",
      "text__": "Text 12",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              // height: MediaQuery.of(context).size.height,
              height: 740,
              // width: 500,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: CardList.length,
                  itemBuilder: (BuildContext Context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.green)),
                      child: Column(
                        children: [
                          Container(
                            child: Column(children: [
                              Stack(
                                children: [
                                  Container(
                                    child: (Image.asset(
                                      CardList[index]["image"],
                                    )),
                                  ),
                                  Container(

                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (Context) =>
                                                      Alertbox()));
                                        },
                                        child: Text('ok')),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 20,
                                    child: Container(
                                        child: Text(
                                      CardList[index]["Text1"],
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    child: Container(
                                        child: Text(
                                      CardList[index]["Text2"],
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    right: 5,
                                    child: Container(
                                      child: Icon(
                                        CardList[index]["Icon"],
                                        color: Colors.white,
                                        size: 50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                            ]),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 500,
              child: GridView.builder(
                  itemCount: Gview.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemBuilder: (BuildContext Context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.black)),
                      child: Stack(
                        children: [
                          Container(
                            height: 300,
                            color: Colors.yellow[300],
                          ),
                          Positioned(
                            height: 100,
                            bottom: 50,
                            left: 10,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(Gview[index]["images"]),
                            ),
                          ),
                          Positioned(
                              right: 20,
                              top: 100,
                              child: Text(Gview[index]["text__"])),
                          Positioned(
                              right: 20,
                              top: 80,
                              child: Text(Gview[index]["text_"])),
                        ],
                      ),
                    );
                  }),
            ),
          ]),
        ),
      ),
    ));
  }
}
