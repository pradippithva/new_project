import 'package:flutter/material.dart';

class image_slider extends StatefulWidget {
  const image_slider({super.key});

  @override
  State<image_slider> createState() => _image_sliderState();
}

class _image_sliderState extends State<image_slider> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Image_Slider'),
      ),
    ));
  }
}
