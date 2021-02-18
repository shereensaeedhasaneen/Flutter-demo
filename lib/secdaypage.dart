import 'package:day1_new_course/card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Secday extends StatefulWidget {
  @override
  _SecdayState createState() => _SecdayState();
}

class _SecdayState extends State<Secday> {
  @override
  Widget build(BuildContext context) {
    List<String>images=["https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg?fbclid=IwAR0k9IDAHODHUU3RZKAYxWN1TqTC6Lyo3X5ZMxnoWA22IMoAUrzO_Q5GjBE","https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg?fbclid=IwAR0k9IDAHODHUU3RZKAYxWN1TqTC6Lyo3X5ZMxnoWA22IMoAUrzO_Q5GjBE"];
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: images.length,
      itemBuilder: (BuildContext context , int index){
        return MyCard(images[index]);
      },
      )
      );
    
  }
}