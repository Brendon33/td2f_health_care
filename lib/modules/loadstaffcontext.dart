import 'package:flutter/material.dart';

import '../providers/paitent_providers.dart';
import '../widgets/staff.dart';

class StaffContext extends StatelessWidget {

final PaitentProviders paitent = new PaitentProviders();


@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
    ),
    body: FutureBuilder(
      future: paitent.getPaitents(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Staff(
            items: snapshot.data,
          );
        }
        if (snapshot.hasError) {
          return Center(
            child: Text('${snapshot.error}'),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    ),

  );
}
}
