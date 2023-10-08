class MentorsModel {
  String? origin;
  String? method;
  bool? status;
  List<Data>? data;
  Null message;

  MentorsModel(
      {this.origin, this.method, this.status, this.data, this.message});

  MentorsModel.fromJson(Map<String, dynamic> json) {
    origin = json['Origin'];
    method = json['method'];
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Origin'] = this.origin;
    data['method'] = this.method;
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  int? id;
  String? password;
  String? lastLogin;
  String? phone;
  String? firstName;
  String? lastName;
  String? email;
  String? avatar;
  bool? gender;
  String? username;
  bool? isTest;
  bool? isSuperuser;
  bool? isStaff;
  bool? isActive;
  bool? everf;
  String? lang;
  int? ut;
  String? created;
  String? updated;
  String? level;
  String? specialty;

  Data(
      {this.id,
      this.password,
      this.lastLogin,
      this.phone,
      this.firstName,
      this.lastName,
      this.email,
      this.avatar,
      this.gender,
      this.username,
      this.isTest,
      this.isSuperuser,
      this.isStaff,
      this.isActive,
      this.everf,
      this.lang,
      this.ut,
      this.created,
      this.updated,
      this.level,
      this.specialty});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    password = json['password'];
    lastLogin = json['last_login'];
    phone = json['phone'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    avatar = json['avatar'];
    gender = json['gender'];
    username = json['username'];
    isTest = json['is_test'];
    isSuperuser = json['is_superuser'];
    isStaff = json['is_staff'];
    isActive = json['is_active'];
    everf = json['everf'];
    lang = json['lang'];
    ut = json['ut'];
    created = json['created'];
    updated = json['updated'];
    level = json['level'];
    specialty = json['specialty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['password'] = this.password;
    data['last_login'] = this.lastLogin;
    data['phone'] = this.phone;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['avatar'] = this.avatar;
    data['gender'] = this.gender;
    data['username'] = this.username;
    data['is_test'] = this.isTest;
    data['is_superuser'] = this.isSuperuser;
    data['is_staff'] = this.isStaff;
    data['is_active'] = this.isActive;
    data['everf'] = this.everf;
    data['lang'] = this.lang;
    data['ut'] = this.ut;
    data['created'] = this.created;
    data['updated'] = this.updated;
    data['level'] = this.level;
    data['specialty'] = this.specialty;
    return data;
  }
}
