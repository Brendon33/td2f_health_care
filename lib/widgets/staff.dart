import 'package:flutter/material.dart';

class Staff extends StatelessWidget {
  var items;
//Doctorview(items);

  Staff ({required this.items});
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
