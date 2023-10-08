class AllCardModel {
  String? origin;
  String? method;
  bool? status;
  List<Data>? data;
  Null message;

  AllCardModel(
      {this.origin, this.method, this.status, this.data, this.message});

  AllCardModel.fromJson(Map<String, dynamic> json) {
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
  String? id;
  String? user;
  String? name;
  int? balance;
  String? mask;
  String? number;
  String? token;
  String? expireDate;
  bool? isPrimary;
  String? cardRegisteredPhone;
  Null blocked;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.user,
      this.name,
      this.balance,
      this.mask,
      this.number,
      this.token,
      this.expireDate,
      this.isPrimary,
      this.cardRegisteredPhone,
      this.blocked,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'];
    name = json['name'];
    balance = json['balance'];
    mask = json['mask'];
    number = json['number'];
    token = json['token'];
    expireDate = json['expire_date'];
    isPrimary = json['is_primary'];
    cardRegisteredPhone = json['card_registered_phone'];
    blocked = json['blocked'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user'] = this.user;
    data['name'] = this.name;
    data['balance'] = this.balance;
    data['mask'] = this.mask;
    data['number'] = this.number;
    data['token'] = this.token;
    data['expire_date'] = this.expireDate;
    data['is_primary'] = this.isPrimary;
    data['card_registered_phone'] = this.cardRegisteredPhone;
    data['blocked'] = this.blocked;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
