import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_my_app/pages/home_page.dart';
import 'package:flutter_my_app/utils/container.dart';
import 'package:http/http.dart' as http;

import 'firstpage.dart';


class GridViewPage  extends StatefulWidget {
  

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {

  var url="https://jsonplaceholder.typicode.com/photos";
  var data;

@override
void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }
  
fetchData() async{
  var res=await http.get(Uri.parse(url));
  data=jsonDecode(res.body);
  setState(() {
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      floatingActionButton: FloatingActionButton(onPressed: (() {
         Navigator.pushReplacement(context, MaterialPageRoute(
         builder: ((context) => HomePage()) 
        ));
         } ),
      child: Icon(Icons.list), 
     ),
     body: data!=null?GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      itemBuilder: ((context, index) {
        return ListTile(
           title: Text(data[index]["title"]),
           subtitle: Text("ID :${data[index]["id"]}"),
           leading: Image.network(data[index]["url"]),
           

         );
         
      } 
       ),
       itemCount: data.length,
     ):Center(
      child: CircularProgressIndicator(color: Colors.indigo),
     ),
     appBar: AppBar(
      title: Text("API Testing"),
      actions: [
        IconButton(onPressed: (){
           Navigator.pushReplacement(context, MaterialPageRoute(
         builder: ((context) => FirstPage()) 
        ));
        },
         icon: Icon(Icons.logout))
      ], 
     ), 
    );
  }
}