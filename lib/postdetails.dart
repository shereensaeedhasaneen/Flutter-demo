import 'package:day1_new_course/models/postsmodel.dart';
import 'package:day1_new_course/services.dart/postdetailsservice.dart';
import 'package:flutter/material.dart';

class PostDetails extends StatefulWidget {
   String postbody;
  PostDetails(this.postbody);
  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
   // List<Post> postList=new List();

  @override

    /*void initState(){
    super.initState();
    getPostsFromServer();
  }

  getPostsFromServer() async{
    postList= await PostDetailsService().getposts();
  }*/


 Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Post Details"),),
     body:Card(
       child: Padding(
         padding: const EdgeInsets.all(30.0),
         child: Column(
           children: [
          Text("Post Body" ,style: TextStyle(fontSize: 22,color: Colors.red),),
         Padding(
           padding: const EdgeInsets.only(top:20.0),
           child: Text(widget.postbody,style: TextStyle(fontSize: 18),),
         )
  
           ],
         ),
       ),

     )
     );
  }
}