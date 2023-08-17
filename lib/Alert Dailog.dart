import 'package:flutter/material.dart';

class Alert_Dailoug_Screen extends StatefulWidget {
  const Alert_Dailoug_Screen({super.key});

  @override
  State<Alert_Dailoug_Screen> createState() => _Alert_Dailoug_ScreenState();
}

class _Alert_Dailoug_ScreenState extends State<Alert_Dailoug_Screen> {


  _displaydailouge (BuildContext context) async{
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Dailouge"),
        content: Container(
          child: Text("Alert"),
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("ok"))
        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Alert Dailoug"),
      ),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey,),
                  height: 50,
                  width: 400,
                  // color: Colors.grey,
                  child: TextButton(
                    onPressed: (){
                      _displaydailouge(context);
                    },
                    child: Text("On press",style: TextStyle(color: Colors.white),),
                  ),
                )
              ],
            ),
          ),
    ));
  }
}
