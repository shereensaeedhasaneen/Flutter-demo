import 'package:day1_new_course/models/postsmodel.dart';
import 'package:day1_new_course/postdetails.dart';
import 'package:day1_new_course/services.dart/postsservices.dart';
import 'package:flutter/material.dart';


class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  List<Post> postList=new List();
  @override

  void initState(){
    super.initState();
    getPostsFromServer();
  }

  getPostsFromServer() async{
    postList= await PostService().getposts();
  }
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: postList.length,
        itemBuilder: (BuildContext context,int index){
        return Card(
       child: Padding(
         padding: const EdgeInsets.all(10.0),
         child: Column(
           children: [
           FlatButton(
    onPressed: () {
      Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=>PostDetails(postList[index].body))
            );
           // print(postList[index].id);
          },
    
   child: Text(postList[index].title, style: TextStyle(fontSize: 20 ,color: Colors.grey,)),
           ),
       Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
       
        Icon(Icons.thumb_up),
        Padding(
          padding: const EdgeInsets.only(
              top: 20,
              bottom: 20,
              left: 10
            ),
          child: Text("Like"),
        )
        ])
           
           ],
         ),
       ),

      
     );
        }
            ),
          );
        
        
      
   
  }
}