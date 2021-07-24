import 'package:flutter/material.dart';

class Employeeentry extends StatefulWidget {

  @override
  _EmployeeentryState createState() => _EmployeeentryState();
}

class _EmployeeentryState extends State<Employeeentry> {
  TextEditingController name=TextEditingController();
  TextEditingController code=TextEditingController();
  TextEditingController des=TextEditingController();
  TextEditingController cpny=TextEditingController();
  List empname=[];
  List empcode=[];
  List empdes=[];
  List empcpny=[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         title: Text("EMPLOYEE LIST"),
       ),
       body: SingleChildScrollView(
         child: Container(
           margin: EdgeInsets.all(20),
           child: Column(
             children: [
               SizedBox(height: 0,),
               TextField(
                 controller: name,
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.account_circle,color: Colors.purpleAccent,size: 25,),
                   labelText: "Employee name",
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                   )
                 ),
               ),
               TextField(
                 controller: code,
                 decoration: InputDecoration(
                     prefixIcon: Icon(Icons.visibility_off_outlined,color: Colors.purpleAccent,size: 25,),
                     labelText: "Employee code",
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                     )
                 ),
               ),
               TextField(
                 controller: des,
                 decoration: InputDecoration(
                     prefixIcon: Icon(Icons.accessibility,color: Colors.purpleAccent,size: 25,),
                     labelText: "Designation",
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                     )
                 ),
               ),
               TextField(
                 controller: cpny,
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.work,color: Colors.purpleAccent,size: 25,),
                   labelText: "Company name",
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                   )
                 ),
               ),
               SizedBox(height: 10,),
               SizedBox(
                 height: 40,
                 width: double.infinity,
                 child: RaisedButton(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20),
                   ),
                   color: Colors.greenAccent,
                   onPressed: (){
                   var getname=name.text;
                   var getcode=code.text;
                   var getdes=des.text;
                   var getcpny=cpny.text;
                   print(getname);
                   print(getcode);
                   print(getdes);
                   print(getcpny);
                   setState(() {
                     empname.add(getname);
                     empcode.add(getcode);
                     empdes.add(getdes);
                     empcpny.add(getcpny);
                   });





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
               ListView.builder(
                 shrinkWrap: true,
                 itemCount: empname.length==null?0:empname.length,
                   itemBuilder: (context, index) {
                     return Card(
                       child: ListTile(
                         trailing: GestureDetector(
                           onTap: (){
                             print("Delete clicked"+index.toString());
                             setState(() {
                               empname.removeAt(index);
                               empcode.removeAt(index);
                               empdes.removeAt(index);
                               empcpny.removeAt(index);
                             });
                           },
                             child: Icon(Icons.delete,color: Colors.pink,size: 25,)),
                         title: Text(empname[index]),
                         subtitle: Text("Empcode:"+empcode[index].toString()+"\n"+"Designation:"+empdes[index]+"\n"+"Company name:"+empcpny[index]),
                       ),
                     );
                   },)
             ],//children
           ),
         ),
       ),
     ),
    );
  }
}

