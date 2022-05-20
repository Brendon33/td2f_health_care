import 'package:flutter/material.dart';

class PaitentPage extends StatelessWidget{
  var items;

  PaitentPage ({required this.items});


    @override
    Widget build(BuildContext context) {
      var index;
      return Scaffold(
        appBar: AppBar(
          title: Text('Welcome ${items[index].firstname}'),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                    '${items[index].firstname} ${items[index].lastname}'),
                subtitle: Text(items[index].middlename),
              );
            }
        ),
      );
    }
  }

