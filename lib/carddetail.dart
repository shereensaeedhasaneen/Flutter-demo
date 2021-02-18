import 'package:day1_new_course/posts.dart';
import 'package:flutter/material.dart';

class CardImage extends StatefulWidget {
  
  @override
  _CardImageState createState() => _CardImageState();
}

class _CardImageState extends State<CardImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Image"),
      ),
    
    body: Card(
       child: Padding(
         padding: const EdgeInsets.all(10.0),
         child: Column(
           children: [
             FlatButton(
    onPressed: () {
      Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=>Posts())
            );
          },
         child: Image(image: NetworkImage('https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg?fbclid=IwAR0k9IDAHODHUU3RZKAYxWN1TqTC6Lyo3X5ZMxnoWA22IMoAUrzO_Q5GjBE')),
         ),
           ])
       )
    )
    );
    }
}