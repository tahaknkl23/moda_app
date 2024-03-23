import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  Detay({super.key, this.imagePath});
  var imagePath;

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Hero(
      tag: widget.imagePath,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.imagePath), fit: BoxFit.cover)),
      ),
    ));
  }
}
