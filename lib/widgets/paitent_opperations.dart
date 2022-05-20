import 'package:flutter/material.dart';
import '../providers/paitent_providers.dart';

class addNewPaitent extends StatefulWidget {
  @override
  // ignore: no_logic_in_create_state
  State<addNewPaitent> createState() => _addNewPaitentState();
}
class _addNewPaitentState extends State<addNewPaitent>{
  final TextEditingController _firstname = new TextEditingController();
  final TextEditingController _lastname = new TextEditingController();
  final TextEditingController _middlename = new TextEditingController();
 // final TextEditingController _dob = new TextEditingController();
  final TextEditingController _gender = new TextEditingController();
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _address = new TextEditingController();
  final TextEditingController _phonenumber = new TextEditingController();
  final TextEditingController _idnumber = new TextEditingController();
  final TextEditingController _idtype = new TextEditingController();

 // DateTime dob;

 void _showDateTimePicker(){
   showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1955), lastDate: DateTime.now(),) .then((SelectedDate){
     if(SelectedDate == null){
       return;
     }
     setState(() {
    //   dob = SelectedDate;
     });
   });
 }
  void _AppointmentDateTimePicker(){
    showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime(2040),) .then((SelectedDate){
      if(SelectedDate == null){
        return;
      }
      setState(() {
        //   dob = SelectedDate;
      });
    });
  }



  @override
    Widget build(BuildContext contex){
      return Scaffold(
        appBar: AppBar(title: Text('Create Appointment')),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          margin: EdgeInsets.only(top: 10.0),
          child: ListView(
            children: [

              Container(

                padding: EdgeInsets.symmetric(horizontal: 10.0),
                margin: EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  controller: _firstname,
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
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                margin: EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  controller: _lastname,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.blueAccent),
                    ),
                    prefixIcon: Icon(Icons.person_pin),
                    hintText: 'Last Name',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ), Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                margin: EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  controller: _middlename,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.blueAccent),
                    ),
                    prefixIcon: Icon(Icons.person_pin_outlined),
                    hintText: 'Middle Name',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),
             Container(
              child: Row(
                children: [
              //    Text(dob == null ? 'No Date was Selected' : 'DOB: $dob',),
                    TextButton(onPressed: _showDateTimePicker,
                        child: Text('Select Date'))
                ],
              ),
             ),
               Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                margin: EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.blueAccent),
                    ),
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                margin: EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  controller: _address,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.blueAccent),
                    ),
                    prefixIcon: Icon(Icons.home),
                    hintText: 'Address',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                margin: EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  controller: _phonenumber,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.blueAccent),
                    ),
                    prefixIcon: Icon(Icons.phone),
                    hintText: 'PhoneNumber',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ), Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                margin: EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  controller: _idnumber,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.blueAccent),
                    ),
                    prefixIcon: Icon(Icons.credit_card),
                    hintText: 'ID Card Number',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ), Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                margin: EdgeInsets.only(top: 10.0),
                child: TextFormField(
                  controller: _idtype,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.blueAccent),
                    ),
                    prefixIcon: Icon(Icons.perm_identity),
                    hintText: 'Type of Identification',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),
              Container(
                child: Row(
                children: [
                  //    Text(dob == null ? 'No Date was Selected' : 'DOB: $dob',),
                  TextButton(onPressed:_AppointmentDateTimePicker,
                      child: Text('Select Appointment Date'))
                ],
              ),

              ),
              ElevatedButton(
                  child: Text('Make Appointment'),
              onPressed: () async{
                final PaitentProviders paitent = new PaitentProviders();
                await paitent.addPaitent(_firstname.text, _lastname.text, _middlename.text, 'dob', _gender.text, _email.text, _address.text, _phonenumber.text, _idnumber.text, _idtype.text).
                then((value) {
                  ScaffoldMessenger.of(contex).showSnackBar(
                      SnackBar(content: Text(value.toString())));

                });
              },)


            ],

          ),
        ),


      );
  }




}