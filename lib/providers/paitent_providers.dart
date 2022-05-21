import 'package:http/http.dart' as http;
import 'dart:convert';
import '../modules/paitent_modules.dart';

class PaitentProviders{
final baseUrl ='http://10.0.2.2/td2fhealthcare/api/v1/public';

    Future<List<Paitent>> getPaitents() async{
      final endPoint = '/paitents';
      final url = Uri.parse(baseUrl + endPoint);
        try{
            final response = await http.get(url);
            print(response.body);
            List<dynamic> body = jsonDecode(response.body);
            List<Paitent> paitent =
              body.map((dynamic item) => Paitent.fromJson(item)).toList();
              return paitent;
        }catch(error){
          print(error.toString());
          throw("Failed to retrieve the list a Paitents");
        }
    }

Future<Paitent> getPaitentDetails(int id) async{
      final endPoint = '/paitents/$id';
      final url = Uri.parse(baseUrl +endPoint);
        try{
            final response = await http.get(url);
            return Paitent.fromJson(jsonDecode(response.body));
        }catch(error){
          throw Exception("Fail to retrieve Paitent");

        }
}

Future<String> addPaitent(String firstname, String lastname, String middlename,String dob,
    String gender, String email, String address,String phonenumber, String idnumber, String idtype) async{
    final endPoint = '/Paitents';
    final url = Uri.parse(baseUrl +endPoint);

    try{
        final response = await http.post(url,
          headers: <String, String>{
            'Content-Type':'application/json; charset=UTF-8',
          },
          body:jsonEncode(<String ,dynamic>{
            'firstname' : firstname,
            'lastname' : lastname,
            'middlename': middlename,
            'dob': dob,
            'gender': gender,
            'email': email,
            'phonenumber' : phonenumber,
            'address': address,
            'idnumber': idnumber,
            'idtype': idtype,

          })
        );
        print(response.body);
        return response.body;

      }catch(error){
        throw("There was An error while adding this Paitent");
    }
  }
}