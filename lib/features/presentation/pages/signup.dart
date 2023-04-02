
import 'package:flutter/material.dart';
import 'package:flutter_appwrite/features/presentation/notifiers/authstate.dart';
import 'package:provider/provider.dart';
class SignupPage extends StatefulWidget{
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _name = TextEditingController();
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
                Text("Signup", style: Theme
                    .of(context)
                    .textTheme
                    .headline3,),
                const SizedBox(height: 20.0),
                TextField(
                  controller: _name,
                  decoration: InputDecoration(
                      hintText: "name"
                  ),
                ),
                const SizedBox(height: 10.0),
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
                          AuthState state = Provider.of<AuthState>(context,listen:
                          false);
                          state.createAccount("userId", _name.text,_email.text, _password.text);
                        },
                        child: Text("Signup"))

                )
              ]
          ),
        ));
    throw UnimplementedError();
  }
}