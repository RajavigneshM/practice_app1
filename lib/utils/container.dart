import 'package:flutter/material.dart';

class Containerwidget extends StatelessWidget {
 final String _txt;



  Containerwidget(this._txt);

  @override
  Widget build(BuildContext context) {
    return Container(
              alignment: Alignment.center,
              child: Text(_txt,
              style: TextStyle(
                fontSize: 25,
                
                color: Color.fromARGB(255, 255, 255, 255)
                ),),
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.all(20),
              
              height: 100.00,
              width: 300.00,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF616161),

              ),
            );
  }
}