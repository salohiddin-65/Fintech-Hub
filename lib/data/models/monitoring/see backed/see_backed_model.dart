class SeeBackedModel {
  String? origin;
  String? method;
  bool? status;
  List<Data>? data;
  Null message;

  SeeBackedModel(
      {this.origin, this.method, this.status, this.data, this.message});

  SeeBackedModel.fromJson(Map<String, dynamic> json) {
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
  int? quantity;
  int? cost;
  bool? order;
  int? productId;
  int? userId;
  String? productName;
  String? productImg;

  Data(
      {this.id,
      this.quantity,
      this.cost,
      this.order,
      this.productId,
      this.userId,
      this.productName,
      this.productImg});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantity = json['quantity'];
    cost = json['cost'];
    order = json['order'];
    productId = json['product_id'];
    userId = json['user_id'];
    productName = json['product_name'];
    productImg = json['product_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['quantity'] = this.quantity;
    data['cost'] = this.cost;
    data['order'] = this.order;
    data['product_id'] = this.productId;
    data['user_id'] = this.userId;
    data['product_name'] = this.productName;
    data['product_img'] = this.productImg;
    return data;
  }
}
