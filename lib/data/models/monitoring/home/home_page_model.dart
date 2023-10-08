class HomePageModel {
  String? origin;
  String? method;
  bool? status;
  Data? data;
  Null message;

  HomePageModel(
      {this.origin, this.method, this.status, this.data, this.message});

  HomePageModel.fromJson(Map<String, dynamic> json) {
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
  double? balance;
  List<Rating>? rating;
  List<News>? news;

  Data({this.balance, this.rating, this.news});

  Data.fromJson(Map<String, dynamic> json) {
    balance = json['balance'];
    if (json['rating'] != null) {
      rating = <Rating>[];
      json['rating'].forEach((v) {
        rating!.add(new Rating.fromJson(v));
      });
    }
    if (json['news'] != null) {
      news = <News>[];
      json['news'].forEach((v) {
        news!.add(new News.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['balance'] = this.balance;
    if (this.rating != null) {
      data['rating'] = this.rating!.map((v) => v.toJson()).toList();
    }
    if (this.news != null) {
      data['news'] = this.news!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Rating {
  double? balance;
  int? id;
  String? username;
  String? phone;
  String? firstName;
  String? lastName;
  String? avatar;

  Rating(
      {this.balance,
      this.id,
      this.username,
      this.phone,
      this.firstName,
      this.lastName,
      this.avatar});

  Rating.fromJson(Map<String, dynamic> json) {
    balance = json['balance'];
    id = json['id'];
    username = json['username'];
    phone = json['phone'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['balance'] = this.balance;
    data['id'] = this.id;
    data['username'] = this.username;
    data['phone'] = this.phone;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['avatar'] = this.avatar;
    return data;
  }
}

class News {
  int? id;
  String? img;
  String? title;

  News({this.id, this.img, this.title});

  News.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    img = json['img'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['img'] = this.img;
    data['title'] = this.title;
    return data;
  }
}
