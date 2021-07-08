import 'package:employee_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Register extends StatelessWidget {
TextEditingController name=TextEditingController();
TextEditingController gen=TextEditingController();
TextEditingController bp=TextEditingController();
TextEditingController edu=TextEditingController();
TextEditingController jtitle=TextEditingController();
TextEditingController ecode=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("REGISTER"),
        ),
        body:SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child:TextField(
                    controller: name,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.account_circle,color: Colors.teal,size: 40,),
                      hintText: "Name",
                      labelText: "Name",
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
                    controller: gen,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.arrow_forward_outlined,color: Colors.teal,size: 40,),
                      hintText: "Gender",
                      labelText: "Gender",
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
                    controller: bp,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.add_location_alt_rounded,color: Colors.brown,size: 40,),
                      hintText: "Birth place",
                      labelText: "Birth place",
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
                    controller: edu,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.assignment_ind_rounded,color: Colors.deepOrangeAccent,size: 40,),
                      hintText: "Education",
                      labelText: "Education",
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
                    controller: jtitle,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.add_business_sharp,color: Colors.red,size: 40,),
                      hintText: "Jobtitle",
                      labelText: "Jobtitle",
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
                    controller:ecode,
                    decoration: InputDecoration(
                      prefix: CircularProgressIndicator(),
                      prefixIcon: Icon(Icons.arrow_forward_outlined,color: Colors.red,size: 40,),
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
                  child: RaisedButton(
                    color: Colors.orange,
                    onPressed: (){
                      var getName=name.text;
                      var getGen=gen.text;
                      var getBp=bp.text;
                      var getEdu=edu.text;
                      var getJtitle=jtitle.text;
                      var getEcode=ecode.text;
                      print(getName);
                      print(getGen);
                      print(getBp);
                      print(getEdu);
                      print(getJtitle);
                      print(getEcode);


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
                    )
                ),
              ],//children
            ),
          ),
        ),

      ),
    );
  }
}
