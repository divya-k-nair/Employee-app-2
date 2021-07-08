import 'package:employee_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Login extends StatelessWidget {
  TextEditingController empcode=TextEditingController();
  TextEditingController empname=TextEditingController();
  TextEditingController des=TextEditingController();
  TextEditingController sal=TextEditingController();
  TextEditingController cname=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("LOGIN"),
        ),
        
        body: SingleChildScrollView(
         child: Container(
            margin:EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child:TextField(
                    controller: empcode,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.arrow_forward,color: Colors.teal,size: 40,),
                      hintText: "Employee code",
                      labelText: "Employee code",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child:TextField(
                    controller: empname,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.account_circle,color: Colors.teal,size: 40,),
                      hintText: "Employee name",
                      labelText: "Employee name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child:TextField(
                    controller: des,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.accessibility_new,color: Colors.brown,size: 40,),
                      hintText: "Designation",
                      labelText: "Designation",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child:TextField(
                    controller: sal,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.attach_money_sharp,color: Colors.deepOrangeAccent,size: 40,),
                      hintText: "Salary",
                      labelText: "Salary",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child:TextField(
                    controller: cname,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.add_business_sharp,color: Colors.red,size: 40,),
                      hintText: "Company name",
                      labelText: "Company name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.orange,
                    onPressed: (){
                      var getEmpcode=empcode.text;
                      var getEmpname=empname.text;
                      var getDes=des.text;
                      var getSal=sal.text;
                      var getCname=cname.text;
                      print(getEmpcode);
                      print(getEmpname);
                      print(getDes);
                      print(getSal);
                      print(getCname);


                    },
                    child: Text("SUBMIT",
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>App()));
                    },
                    child: Text("BACK TO HOME",
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
        ),

      ),
    );
  }
}
