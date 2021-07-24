import 'package:flutter/material.dart';

class View extends StatelessWidget {
  var names=["ram","neethu","athira","rose","pallavi","meera","geeta","balu","hari","naina"];
  var empcode=[10,11,12,13,14,15,16,17,18,19];
  var designation=[" software developer","analyst","data scientist","cloud architect","software engineer","Team lead","web developer",".net developer","php developer","python developer"];
  var salary=[29000,30000,40000,50000,35000,45000,50000,55000,25000,60000];
  var mobileno=[2233333561,446778999,389993322,6789453212,2537484764,233447865,78459037364,374846443,1234578590,4778853255];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("VIEW EMPLOYEES"),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: names.length,
              itemBuilder:(context, index) {
                return Card(
                  child: ListTile(
                    trailing: Icon(Icons.work_outlined,color: Colors.teal,size: 26,),
                    title: Text(names[index]),
                    subtitle: Text("Empcode:"+empcode[index].toString()+"\n"+"Designation:"+designation[index]+"\n"+"Salary:"+salary[index].toString()+"\n"+"Mobileno:"+mobileno[index].toString()),
                  ),
                );
              },
          ),


          ),
        ),

    );
  }
}
