import 'package:flutter/material.dart';
import 'package:flutter_my_app/pages/real_home_page.dart';

class FirstPage extends StatefulWidget {
  

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
 
  String value="";
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 255, 255, 255),
     body: Padding(
       padding: const EdgeInsets.fromLTRB(0, 270, 0, 0),
       child: Column(
        children: [
          Text("Enter your nick name buddy",style: TextStyle(color: Colors.indigo,fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 40),
           Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(
                    onChanged: (text) {
                     value=text; 
                    }, 
                     
                    decoration: InputDecoration( 
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.indigo),
                      labelStyle: TextStyle(color: Colors.indigo), 
                      border: OutlineInputBorder(),  
                      labelText: 'Nick Name',  
                      hintText: 'Enter Nick Name',  
                    ),  
                  ),  
                ), 
          RaisedButton(  
                  textColor: Colors.white,  
                  color: Colors.indigo,  
                  child: Text('Log in',style: TextStyle(color: Colors.white),),  
                  onPressed: (){
                         
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>RealHomePage(value : value),));
                

                  
                  },  
                )   
        ],
       ),
     ) 
    );
  }
}


















