import 'package:flutter/material.dart';

import 'grid_view.dart';
import 'home_page.dart';

class RealHomePage extends StatefulWidget {
  String value="";
  RealHomePage({required this.value});
  // RealHomePage({Key key,@required this.value}) : super(key : key);

 

  @override
  State<RealHomePage> createState() => _RealHomePageState(value);
}

class _RealHomePageState extends State<RealHomePage>{ 
 
String value="";
_RealHomePageState(this.value);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.indigo,
     body: Padding(
       padding: const EdgeInsets.fromLTRB(110,280,0,0),
       child: Column(
        children: [
          Text("Hi $value!",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),),
          SizedBox(height: 40),
          RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
         builder: ((context) => HomePage()) 
        ));
          },
           child: Text("Show data in List"),
          ),

          SizedBox(height: 20),
          RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
         builder: ((context) => GridViewPage()) 
        ));
          },
           child: Text("Show data in Grid"),
          )  
        ],
       ),
     ) 
    );
  }
}

























