import 'package:day1_new_course/carddetail.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  String imglink;
  MyCard(this.imglink);
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
     return Card(
       child: Padding(
         padding: const EdgeInsets.all(10.0),
         child: Column(
           children: [
          
    FlatButton(
    onPressed: () {
      Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=>CardImage()),
            );
    },
       child: Image.network(widget.imglink)//(image: NetworkImage('https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg?fbclid=IwAR0k9IDAHODHUU3RZKAYxWN1TqTC6Lyo3X5ZMxnoWA22IMoAUrzO_Q5GjBE')),
  ),
    
       Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
        Icon(Icons.thumb_up),
        Padding(
          padding: const EdgeInsets.only(
             left: 5,
              top: 20,
              right: 130,
              bottom: 20,),
          child: Text("Like"),
        ),
        Icon(Icons.comment),
        Padding(
          padding: const EdgeInsets.only(
              top: 20,
              bottom: 20
            ),
          child: Text("Comment"),
        )
        ])
           
           ],
         ),
       ),

      
     );
  }
}