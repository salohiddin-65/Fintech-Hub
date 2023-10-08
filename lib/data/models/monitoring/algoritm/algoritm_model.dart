class AlgoritmModel {
  String? origin;
  String? method;
  bool? status;
  Data? data;
  Null message;

  AlgoritmModel(
      {this.origin, this.method, this.status, this.data, this.message});

  AlgoritmModel.fromJson(Map<String, dynamic> json) {
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
  List<Algorithms>? algorithms;
  Pagging? pagging;

  Data({this.algorithms, this.pagging});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['algorithms'] != null) {
      algorithms = <Algorithms>[];
      json['algorithms'].forEach((v) {
        algorithms!.add(new Algorithms.fromJson(v));
      });
    }
    pagging =
        json['pagging'] != null ? new Pagging.fromJson(json['pagging']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.algorithms != null) {
      data['algorithms'] = this.algorithms!.map((v) => v.toJson()).toList();
    }
    if (this.pagging != null) {
      data['pagging'] = this.pagging!.toJson();
    }
    return data;
  }
}

class Algorithms {
  int? id;
  int? reward;
  String? description;
  int? bonus;
  int? creatorId;
  String? firstName;
  String? lastName;
  String? username;

  Algorithms(
      {this.id,
      this.reward,
      this.description,
      this.bonus,
      this.creatorId,
      this.firstName,
      this.lastName,
      this.username});

  Algorithms.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    reward = json['reward'];
    description = json['description'];
    bonus = json['bonus'];
    creatorId = json['creator_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['reward'] = this.reward;
    data['description'] = this.description;
    data['bonus'] = this.bonus;
    data['creator_id'] = this.creatorId;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['username'] = this.username;
    return data;
  }
}

class Pagging {
  int? count;
  Null next;
  Null previous;
  int? perPage;
  int? currentPage;

  Pagging(
      {this.count, this.next, this.previous, this.perPage, this.currentPage});

  Pagging.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    perPage = json['per_page'];
    currentPage = json['current_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    data['per_page'] = this.perPage;
    data['current_page'] = this.currentPage;
    return data;
  }
}
