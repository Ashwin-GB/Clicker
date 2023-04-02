import 'package:flutter/material.dart';
import 'package:flutter_appwrite/features/presentation/routes.dart';

class HomePage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clicker Dashboard'),
        actions: <Widget>[
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            Navigator.pushNamed(context,Approutes.profile);
          },
        )
        ]
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[

          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

