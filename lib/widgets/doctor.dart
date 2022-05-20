import 'package:flutter/material.dart';
import '../modules/paitent_modules.dart';
import '../providers/paitent_providers.dart';
import '../modules/login_modules.dart';
class Doctorview extends StatelessWidget {
var items;
//Doctorview(items);

Doctorview ({required this.items});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment Schedule'),
      ),
      body: ListView.builder(
        itemCount: items.length,
          itemBuilder: (context, index){
          return ListTile(
            title: Text('${items[index].firstname} ${items[index].lastname}'),
            subtitle: Text(items[index].middlename),
          );
        }
      ),
    );
  }
}

