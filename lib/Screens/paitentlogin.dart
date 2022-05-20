import 'package:flutter/material.dart';

import '../modules/loadpatentcontext.dart';
import '../widgets/paitent.dart';
import 'Login.dart';

class PaitentLogin extends StatefulWidget {


  @override
  State<PaitentLogin> createState() => _PaitentLoginState();
}

class _PaitentLoginState extends State<PaitentLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' View Appointment'),
      ),body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
      child: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      SizedBox(
      height: 30.0,
    ),
      Text(
        'Enter Your First And Last Name To Sigin',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
            fontSize: 20.0),
      ),
      SizedBox(
        height: 20.0,
      ),
      Image.asset(
        "assets/images/signup1.png",
        height: 100.0,
        width: 100.0,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        margin: EdgeInsets.only(top: 10.0),
        child: TextFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.blueAccent),
            ),
            prefixIcon: Icon(Icons.person),
            hintText: 'First Name',
            fillColor: Colors.grey[200],
            filled: true,
          ),
        ),
      ),Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          margin: EdgeInsets.only(top: 10.0),
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.blueAccent),
              ),
              prefixIcon: Icon(Icons.person),
              hintText: 'Last Name',
              fillColor: Colors.grey[200],
              filled: true,
            ),
          ),
         ),
        Container(
          margin: EdgeInsets.all(20.0),
          width: double.infinity,
          child: TextButton(
            child: Text('Login', style: TextStyle(color: Colors.white),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> LoadPaitentContext()));
            },
          ),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
         ]
        ),
        ),
        ),
       )

    );
  }
}
