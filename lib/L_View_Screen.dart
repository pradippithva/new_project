import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'Alert Dailog.dart';
import 'Login.dart';

class vertical_horizontal extends StatefulWidget {
  const vertical_horizontal({super.key});

  @override
  State<vertical_horizontal> createState() => _vertical_horizontalState();
}

class _vertical_horizontalState extends State<vertical_horizontal> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  final List<dynamic> image = [
    // Image(image: )
  ];
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Center(
            child: Text(
              "vertical_horizontal",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
          actions: [
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            )
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (Context, image) => Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(20),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          "assets/download.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      // child: Center(
                      //   child: Text("Card $index"),
                      // ),
                      color: Colors.green,
                    ),
                  ),
                ),
                Flexible(
                    child: ListView.builder(
                      itemCount: 15,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (Contex, index) => Container(
                        child: ListTile(
                          title: Text(
                            "List $index",
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              // UserAccountsDrawerHeader(
              //   accountName: Text("Yankit Rajgor"),
              //   accountEmail: mailto:text("gorbha1111@gmail.com"),
              //   currentAccountPicture: Container(
              //     // width: 180,
              //     // height: 180,
              //     decoration: BoxDecoration(
              //       color: Colors.red,
              //       shape: BoxShape.circle,
              //       image: DecorationImage(
              //           image: AssetImage("assets/1692179337165.JPEG"),
              //           fit: BoxFit.cover),
              //     ),
              //   ),
              // ),
              Container(
                height: 180,
                color: Colors.blue[300],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/1692179869588.JPEG"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "pradip pithva",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "pradippithva789@gmail.com",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      height: 2,
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Alert_Dailoug_Screen()));
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Contact Us"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => vertical_horizontal()));
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginpage()));
                },
              ),
              Container(
                child: FlutterSwitch(
                  width: 100.0,
                  height: 55.0,
                  toggleSize: 45.0,
                  value: status,
                  borderRadius: 30.0,
                  padding: 2.0,
                  toggleColor: Colors.black12,
                  switchBorder: Border.all(
                    color: Colors.black,
                    width: 6.0,
                  ),
                  toggleBorder: Border.all(
                    color: Colors.white,
                    width: 4.0,
                  ),
                  activeColor: Colors.green,
                  inactiveColor: Colors.black38,
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
