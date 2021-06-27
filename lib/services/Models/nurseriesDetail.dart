class NurseriesDetail {
  List<Nurseries> nurseries;

  NurseriesDetail({this.nurseries});

  NurseriesDetail.fromJson(Map<String, dynamic> json) {
    if (json['nurseries'] != null) {
      nurseries = new List<Nurseries>();
      json['nurseries'].forEach((v) {
        nurseries.add(new Nurseries.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.nurseries != null) {
      data['nurseries'] = this.nurseries.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Nurseries {
  int id;
  String name;
  String email;
  Null emailVerifiedAt;
  String type;
  String createdAt;
  String updatedAt;
  NurseryDetail nurseryDetail;

  Nurseries(
      {this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.nurseryDetail});

  Nurseries.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    type = json['type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    nurseryDetail = json['nursery_detail'] != null
        ? new NurseryDetail.fromJson(json['nursery_detail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['type'] = this.type;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.nurseryDetail != null) {
      data['nursery_detail'] = this.nurseryDetail.toJson();
    }
    return data;
  }
}

class NurseryDetail {
  int id;
  int userId;
  String location;
  String phoneNumber;
  String createdAt;
  String updatedAt;
  String city;

  NurseryDetail(
      {this.id,
      this.userId,
      this.location,
      this.phoneNumber,
      this.createdAt,
      this.updatedAt,
      this.city});

  NurseryDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    location = json['location'];
    phoneNumber = json['phone_number'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['location'] = this.location;
    data['phone_number'] = this.phoneNumber;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['city'] = this.city;
    return data;
  }
}
