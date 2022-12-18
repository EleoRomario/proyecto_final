class UserApp {
  final String uid;
  final String displayName;
  final String photoURL;
  final String email;
  final String password;

  UserApp({
    required this.uid,
    required this.displayName,
    required this.photoURL,
    required this.email,
    required this.password,
  });

  factory UserApp.fromJson(Map<String, dynamic> json) {
    return UserApp(
      uid: json['uid'],
      displayName: json['displayName'],
      photoURL: json['photoURL'],
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'displayName': displayName,
      'photoURL': photoURL,
      'email': email,
      'password': password,
    };
  }
}
