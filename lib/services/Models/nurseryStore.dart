class NurseryStore {
  Nursery nursery;

  NurseryStore({this.nursery});

  NurseryStore.fromJson(Map<String, dynamic> json) {
    nursery =
        json['nursery'] != null ? new Nursery.fromJson(json['nursery']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.nursery != null) {
      data['nursery'] = this.nursery.toJson();
    }
    return data;
  }
}

class Nursery {
  int id;
  String name;
  String email;
  Null emailVerifiedAt;
  String type;
  String createdAt;
  String updatedAt;
  List<Post> post;
  NurseryDetail nurseryDetail;

  Nursery(
      {this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.post,
      this.nurseryDetail});

  Nursery.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    type = json['type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['post'] != null) {
      post = new List<Post>();
      json['post'].forEach((v) {
        post.add(new Post.fromJson(v));
      });
    }
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
    if (this.post != null) {
      data['post'] = this.post.map((v) => v.toJson()).toList();
    }
    if (this.nurseryDetail != null) {
      data['nursery_detail'] = this.nurseryDetail.toJson();
    }
    return data;
  }
}

class Post {
  int id;
  String userId;
  String flowerType;
  String discription;
  String quantity;
  String city;
  String createdAt;
  String updatedAt;
  String image;

  Post(
      {this.id,
      this.userId,
      this.flowerType,
      this.discription,
      this.quantity,
      this.city,
      this.createdAt,
      this.updatedAt,
      this.image});

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    flowerType = json['flower_type'];
    discription = json['discription'];
    quantity = json['quantity'];
    city = json['city'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['flower_type'] = this.flowerType;
    data['discription'] = this.discription;
    data['quantity'] = this.quantity;
    data['city'] = this.city;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['image'] = this.image;
    return data;
  }
}

class NurseryDetail {
  int id;
  String userId;
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
