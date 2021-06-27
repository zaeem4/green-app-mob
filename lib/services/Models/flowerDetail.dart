class FlowerDetail {
  FlowerDetails flowerDetails;

  FlowerDetail({this.flowerDetails});

  FlowerDetail.fromJson(Map<String, dynamic> json) {
    flowerDetails = json['flowerDetails'] != null
        ? new FlowerDetails.fromJson(json['flowerDetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.flowerDetails != null) {
      data['flowerDetails'] = this.flowerDetails.toJson();
    }
    return data;
  }
}

class FlowerDetails {
  int id;
  String flowerType;
  String soil;
  String sunlight;
  String plantationTime;
  String water;
  String createdAt;
  String updatedAt;

  FlowerDetails(
      {this.id,
      this.flowerType,
      this.soil,
      this.sunlight,
      this.plantationTime,
      this.water,
      this.createdAt,
      this.updatedAt});

  FlowerDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    flowerType = json['flower_type'];
    soil = json['soil'];
    sunlight = json['sunlight'];
    plantationTime = json['plantation_time'];
    water = json['water'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['flower_type'] = this.flowerType;
    data['soil'] = this.soil;
    data['sunlight'] = this.sunlight;
    data['plantation_time'] = this.plantationTime;
    data['water'] = this.water;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
