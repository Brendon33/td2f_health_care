import 'package:flutter/material.dart';
import 'package:td2f_health_care/modules/loadpatentcontext.dart';
import './widgets/paitent.dart';
import './widgets/paitent_opperations.dart';
import 'Screens/Login.dart';
import 'Screens/paitentlogin.dart';


void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
@override
  Widget build(BuildContext context){
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'Patient appointment Scheduler',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
@override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Appointment'),
    ),
    body: Container(
      child: ListView(
        children: [


          Container(
      margin: EdgeInsets.only(right: 70, top: 50, left: 70),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PaitentLogin())
          );
        },
        style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent, onPrimary: Colors.white),
        child: Text("Click here to view appointment"),
      ),
          ),
          Container(
            margin: EdgeInsets.only(right: 70, top: 30, left: 70),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginForm())
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent, onPrimary: Colors.white),
              child: Text("Click here to Login as a Doctor"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 70, top: 30, left: 70),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginForm())
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent, onPrimary: Colors.white),
              child: Text("Click here to Login as a Staff"),
            ),
          )
        ],
      ),
      ),

    floatingActionButton: FloatingActionButton(
child: Icon(Icons.add),
      onPressed: (){
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => addNewPaitent(),));
      },
    ),
  );
}
}