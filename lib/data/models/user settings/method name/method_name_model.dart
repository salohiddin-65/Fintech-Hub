class MethodNameModel {
  String? origin;
  String? method;
  bool? status;
  List<String>? data;
  Null message;

  MethodNameModel(
      {this.origin, this.method, this.status, this.data, this.message});

  MethodNameModel.fromJson(Map<String, dynamic> json) {
    origin = json['Origin'];
    method = json['method'];
    status = json['status'];
    data = json['data'].cast<String>();
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Origin'] = this.origin;
    data['method'] = this.method;
    data['status'] = this.status;
    data['data'] = this.data;
    data['message'] = this.message;
    return data;
  }
}
