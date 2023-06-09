class UserFields {
  static const String id = "\$id";
  static const String name  = "name";
  static const String email  = "email";
  static const String registrationDate  = "1234";
  static const String roles  = "roles";
}

class User {
  late String id;
  late String email;
  late String registrationDate;
  late String name;
  late List <String> roles;

  User({required this.id,required this.email,required this.registrationDate,
    required this.name,required this.roles});

  User.fromJson(Map<String,dynamic> json)
  {
    id = json[UserFields.id];
    print(id);

    email = json[UserFields.email];
    print(email);

     registrationDate = "1234";
     print(registrationDate);

    name  = json[UserFields.name];
    print(name);

    // roles = json[UserFields.roles].cast<String>();
    // print(roles);

  }

  Map<String,dynamic> toJson() {
    final Map<String, dynamic>data = new Map<String,dynamic>();
    data[UserFields.id] = this.id;
    data[UserFields.email] = this.email;
    data[UserFields.registrationDate] = this.registrationDate;
    data[UserFields.name] = this.name;
    data[UserFields.roles] = this.roles;

    return data;
  }
}