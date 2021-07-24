import 'package:employee_app/login.dart';
import 'package:employee_app/register.dart';
import 'package:employee_app/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
         child: Column(
         children: [
          SizedBox(height: 20,),
           SizedBox(
             height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.purpleAccent,
                   onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder:(context)=>Login()));

             },
               child: Text("LOGIN",
                 style: TextStyle(
                  color: Colors.black,
                    fontSize: 25,
              ),
               )
               ),
               ),
                 SizedBox(height: 20,),
                  SizedBox(
                     height: 60,
                      width: double.infinity,
                       child: RaisedButton(
                        color: Colors.purpleAccent,
                           onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));

                       },
                      child: Text("REGISTER",
                        style: TextStyle(
                        color: Colors.black,
                           fontSize: 25,
                   ),
                   ),

                  ),
              ),
           SizedBox(height: 20,),
           SizedBox(
             height: 60,
             width: double.infinity,
             child: RaisedButton(
               color: Colors.purpleAccent,
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>View()));

               },
               child: Text("VIEW STUDENTS",
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 25,
                 ),
               ),

             ),
           ),

         ],//children
              ),
            ),
          );
  }
}
