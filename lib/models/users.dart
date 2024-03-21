class Users {
  final String? id;
  final String? name;
  final String? email;
  final String? password;

  Users({this.id, this.name, this.email, this.password});

toJson(){
  return {
    'id': id,
    'name': name,
    'email': email,
    'password': password,
  };
}

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );
}
}