import 'package:flutter/material.dart';

import 'secdaypage.dart';

class Mypage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
      ),
      body: Column(
        children: [
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextField(decoration: InputDecoration(
               
              hintText: 'Enter a username '
                 ),

                    ),
           ),
          
         Padding(
           padding: const EdgeInsets.all(15.0),
           child: TextField(decoration: InputDecoration(
            hintText: 'Enter Password '
                ),
                  ),
         ),
            

    RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.blue)),
          onPressed: () {
            Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=>Secday()),
            );},
          color: Colors.blue,
          textColor: Colors.white,
          child: Text("Sign In".toUpperCase(),
            style: TextStyle(fontSize: 14)),
        ),
          Center(child: Text("Need An account ? Register",)),
          Center(child: Text("Forget Password")),

       
        ],
      ),
    );
  }
}