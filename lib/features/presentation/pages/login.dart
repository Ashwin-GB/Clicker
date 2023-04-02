import 'package:flutter/material.dart';
import 'package:flutter_appwrite/features/presentation/notifiers/authstate.dart';
import 'package:flutter_appwrite/features/presentation/routes.dart';
import 'package:provider/provider.dart';
import 'dart:developer';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Clicker'),
        ),
        body: Center(
          child:ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(16.0),
              children: <Widget>[
                Text("Login", style: Theme
                    .of(context)
                    .textTheme
                    .headline3,),
                const SizedBox(height: 20.0),
                TextField(
                  controller: _email,
                  decoration: InputDecoration(
                      hintText: "email"
                  ),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "password"
                  ),
                ),
                const SizedBox(height: 10.0),
                Center(
                    child: ElevatedButton(
                        onPressed: (){
                          log('your message here');
                          AuthState state = Provider.of<AuthState>(context,listen:
                          false);
                          state.login(_email.text, _password.text);
                        },
                        child: Text("Login"))

                ),
                const SizedBox(height: 10.0),
                Center(
                    child: ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, Approutes.signup),
                        child: Text("Create Account"))
                )
              ]
          ),
        ));
    throw UnimplementedError();
  }
}