import 'package:flutter/material.dart';

class Paitent{

  int PaitentId;
  String firstname;
  String lastname;
  String middlename;
  String dob;
  String gender;
  String email;
  String phonenumber;
  String address;
  String idnumber;
  String idtype;

Paitent({required this.firstname, required this.lastname, required this.middlename,
         required this.dob, required this.gender, required this.address, required this.idnumber,
         required this.idtype, required this.PaitentId, required this.email, required this.phonenumber
});
    factory Paitent.fromJson(Map<String, dynamic> Json) =>Paitent(
      PaitentId: Json['Paitent_id'],
      firstname: Json['First_Name'],
      lastname: Json['Last_Name'],
      middlename: Json['MiddleName'],
      dob: Json['DOB'],
      gender: Json['Gender'],
      email: Json['Email'],
      phonenumber: Json['PhoneNumber'],
      address: Json['Address'],
      idnumber: Json['Id_Number'],
      idtype: Json['Id_Type']
    );




}