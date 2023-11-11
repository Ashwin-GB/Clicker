import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';
import 'package:flutter_appwrite/core/res/app_constants.dart';
import 'dart:developer';
import 'package:flutter_appwrite/features/auth/data/model/user.dart';

class AuthState extends ChangeNotifier {
  Client client = Client();
  late Account account;
  late bool _isLoggedIn;
  late User _user;
  late String _error;

  bool get isLoggedIn => _isLoggedIn;
  User get user => _user;
  String get error => _error;

  AuthState() {
    _init();
  }

  _init() {
    _isLoggedIn = false;
    client.setEndpoint(AppConstants.endpoint)
        .setProject(AppConstants.projectId)
        .setSelfSigned(status: true); // For self signed certificates, only use for development
    account = Account(client);
    _checkIsLoggedIn();
  }

  _checkIsLoggedIn() async {
    try{
       log('Checking if logged in');
      _user = (await _getAccount())!;
      log(user.registrationDate.toString());
      _isLoggedIn = true;
      notifyListeners();
    }
    catch(e){
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<User?> _getAccount() async{
    try{
      //Response<dynamic> res  = (await account.get()) as Response;
      final res  = (await account.get());
      Map<String, dynamic> mappedRes = res.toMap();
      log('Trying to login');
      if (kDebugMode) {

        print(res.hashCode);
      }
      print(res.status);
      if(res.status == true){
        return User.fromJson(mappedRes);
      }
      else {
        return null;
      }
    }catch(e){
      rethrow;
    }
  }

  login(String email, String password) async {
    try{
      log('Trying to login');
      log(email);
      log(password);
      var result = await account.createEmailSession(email: email, password: password);
      if (kDebugMode) {
        print(result);
      }
    }catch(e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  createAccount(String userId, String name, String email, String password) async
  {
    try{
      var result = await account.create(userId: userId, email: email, password: password,name: name);
      if (kDebugMode) {
        print(result);
      }
    }
    catch(e){
      if (kDebugMode) {
        print(e);
      }
    }

  }

  logout() async {
    try{
    final res = await account.deleteSession(sessionId: 'current');
    _isLoggedIn = false;
    notifyListeners();
  }
  catch(e)
  {
    print(e);
  }
}
}