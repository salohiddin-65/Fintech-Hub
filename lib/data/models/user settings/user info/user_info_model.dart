class UserInfoModel {
  String? origin;
  String? method;
  bool? status;
  Data? data;
  String? message;

  UserInfoModel(
      {this.origin, this.method, this.status, this.data, this.message});

  UserInfoModel.fromJson(Map<String, dynamic> json) {
    origin = json['Origin'];
    method = json['method'];
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Origin'] = this.origin;
    data['method'] = this.method;
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  String? firstName;
  String? lastName;
  String? mobile;
  String? lang;
  String? userType;
  bool? gender;
  String? level;
  String? spec;
  String? username;
  bool? email;

  Data(
      {this.firstName,
      this.lastName,
      this.mobile,
      this.lang,
      this.userType,
      this.gender,
      this.level,
      this.spec,
      this.username,
      this.email});

  Data.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    mobile = json['mobile'];
    lang = json['lang'];
    userType = json['user_type'];
    gender = json['gender'];
    level = json['level'];
    spec = json['spec'];
    username = json['username'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['mobile'] = this.mobile;
    data['lang'] = this.lang;
    data['user_type'] = this.userType;
    data['gender'] = this.gender;
    data['level'] = this.level;
    data['spec'] = this.spec;
    data['username'] = this.username;
    data['email'] = this.email;
    return data;
  }
}
