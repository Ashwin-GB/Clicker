import 'package:flutter/material.dart';
import 'package:flutter_appwrite/core/res/presentation/notifiers/providers.dart';
import 'package:flutter_appwrite/features/general/presentation/pages/home.dart';
import 'package:flutter_appwrite/features/presentation/notifiers/authstate.dart';
import 'package:flutter_appwrite/features/presentation/pages/login.dart';
import 'package:flutter_appwrite/features/presentation/pages/signup.dart';
import 'package:flutter_appwrite/features/presentation/routes.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.red,
            visualDensity:VisualDensity.adaptivePlatformDensity,
            inputDecorationTheme: InputDecorationTheme(border:OutlineInputBorder()),
            buttonTheme: ButtonThemeData(
              height: 100.0,
              textTheme: ButtonTextTheme.primary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            )
        ),
        home: Consumer<AuthState>(
          builder: (context, state, chile){
            return state.isLoggedIn ? HomePage() : LoginPage();
          }
        ),
      onGenerateRoute: Approutes.onGenerateRoute,
      ),
    );
  }
}