class Posts {
  List<AllPosts> allPosts;

  Posts({this.allPosts});

  Posts.fromJson(Map<String, dynamic> json) {
    if (json['allPosts'] != null) {
      allPosts = new List<AllPosts>();
      json['allPosts'].forEach((v) {
        allPosts.add(new AllPosts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.allPosts != null) {
      data['allPosts'] = this.allPosts.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllPosts {
  int id;
  String userId;
  String flowerType;
  String discription;
  String quantity;
  String city;
  String createdAt;
  String updatedAt;
  String image;
  User user;

  AllPosts(
      {this.id,
      this.userId,
      this.flowerType,
      this.discription,
      this.quantity,
      this.city,
      this.createdAt,
      this.updatedAt,
      this.image,
      this.user});

  AllPosts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    flowerType = json['flower_type'];
    discription = json['discription'];
    quantity = json['quantity'];
    city = json['city'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
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
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  int id;
  String name;
  String email;
  Null emailVerifiedAt;
  String type;
  String createdAt;
  String updatedAt;
  NurseryDetail nurseryDetail;

  User(
      {this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.nurseryDetail});

  User.fromJson(Map<String, dynamic> json) {
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
