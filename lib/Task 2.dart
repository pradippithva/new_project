import 'package:flutter/material.dart';

class card extends StatefulWidget {
  const card({super.key});

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/rr.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 110,
                              child: const Text(
                                "Dr.Stefeni Albert",
                                maxLines: 2,
                                style: TextStyle(fontSize: 23),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 4),
                              child: const Text(
                                "Heart Speailist",
                                style: TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                            ),
                            Container(
                              width: 130,
                              margin: const EdgeInsets.only(top: 50),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: const Icon(
                                      Icons.message,
                                      color: Colors.orangeAccent,
                                      size: 35,
                                    ),
                                  ),
                                  Container(
                                    child: const Icon(
                                      Icons.call,
                                      color: Colors.red,
                                      size: 35,
                                    ),
                                  ),
                                  Container(
                                    child: const Icon(
                                      Icons.video_call,
                                      color: Colors.grey,
                                      size: 35,
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
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Text(
                            "About",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text(
                            "Dr.stefeni albert is a cardiologist in nashville & affiliated with multiple hospitals in the area he received his medical degree from duke university school of medicine and has been in practice for more than 20 years.",
                            style: TextStyle(fontSize: 17),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 50),
                                  child: const Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 150,
                                  margin: const EdgeInsets.only(top: 25),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: const Text(
                                          "Address",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      Container(
                                        child: const Text(
                                          "House #2,road #5,green road",
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.grey),
                                        ),
                                      ),
                                      Container(
                                        child: const Text(
                                          "Dhanmondi,dhaka,bangladesh",
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 50),
                                  child: const Icon(
                                    Icons.access_time,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 150,
                                  margin: const EdgeInsets.only(top: 25),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: const Text(
                                          "Daily Practict",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      Container(
                                        child: const Text(
                                          "Monday-Friday",
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.grey),
                                        ),
                                      ),
                                      Container(
                                        child: const Text(
                                          "Open till 7 pm",
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.grey),
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
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 200,
                        width: 140,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            "https://www.adobe.com/acrobat/hub/how-to/media_177c6b232df976d37b7450f633e350b3c6beab0c4.jpeg?width=2000&format=webply&optimize=medium",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    // margin: EdgeInsets.only(top: 50),
                    width: 100,
                    child: Text(
                      "Activity",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow,
                        ),
                        width: 155,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Icon(Icons.newspaper),
                                  ),
                                  Container(
                                    width: 100,
                                    child: Text("List of Schedule",style: TextStyle(fontSize: 20),),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        width: 155,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Icon(Icons.newspaper),
                                  ),
                                  Container(
                                    width: 100,
                                    child: Text("Docter's Daily Post",style: TextStyle(fontSize: 20),),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
