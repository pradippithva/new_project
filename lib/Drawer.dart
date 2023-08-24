import 'package:flutter/material.dart';

import 'Alert Dailog.dart';

class Drawer_Screen extends StatefulWidget {
  const Drawer_Screen({super.key});

  @override
  State<Drawer_Screen> createState() => _Drawer_ScreenState();
}

class _Drawer_ScreenState extends State<Drawer_Screen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openEndDrawer();
            },
            icon: Icon(Icons.account_box_outlined)),
        title: Text("Drawer Screen"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          "Drawer",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      endDrawer: Drawer(
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
              color: Colors.red[200],
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
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Pradip Pithva",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                      child: Text("pradip@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))),
                  Divider(
                    color: Colors.black,
                    height: 5,
                  )
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => vertical_horizontal()));
              },
            ),
          ],
        ),
      ),
    ));
  }
}
