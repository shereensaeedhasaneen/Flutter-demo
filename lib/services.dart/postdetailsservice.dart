import 'package:day1_new_course/models/postsmodel.dart';
import 'package:dio/dio.dart';

class PostDetailsService{

  String url="https://jsonplaceholder.typicode.com/posts/2";

  Future<List<Post>> getposts() async{
    List<Post> posts=new List();
    Response res;
    Dio dio =new Dio();
    res= await dio.get(url);
    var data=res.data;
   // data.forEach((value){
      posts.add(Post.fromJson(data));
      
    //});

    return posts;

  }
}