class UserModel {
  String id;
  String name;
  String user;
  String password;

  UserModel({this.id, this.name, this.user, this.password});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    user = json['User'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Name'] = this.name;
    data['User'] = this.user;
    data['Password'] = this.password;
    return data;
  }
}
