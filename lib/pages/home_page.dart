import 'package:flutter/material.dart';
import 'package:flutter_my_app/utils/container.dart';


class HomePage extends StatefulWidget {
 
 
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> 

{
    String _mytxt="hello";
   TextEditingController contrlr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold
    
    (
     
      backgroundColor: Color.fromARGB(255, 42, 39, 39),
      appBar: AppBar(title: Text("Hello Everyone") ),
      body: SingleChildScrollView(
        child: Column(
         mainAxisSize: MainAxisSize.max,
          children: 
          
          [
          Text(_mytxt), 
           SizedBox(height: 80),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: contrlr,
                 
               decoration: InputDecoration(alignLabelWithHint: true,hintText: "Enter something",
              labelText: "Enter something",
          
              border: OutlineInputBorder(),
              ), 
              ),
            ), 
            RaisedButton(onPressed: (){
               _mytxt=contrlr.text;
               setState(() {
                 
               }); 
           }
           , color: Colors.teal,child: Text("Press me",style: TextStyle(color: Colors.white),),),
          ],
        ),
      ),
    );
  }
}