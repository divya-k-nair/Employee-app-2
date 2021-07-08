import 'package:employee_app/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(App());
}
class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("EMPLOYEE APP"),

        ),
        body: Home(),
      ),

    );
  }
}


