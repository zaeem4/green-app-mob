class RecommendedFlowersDetails {
  List<FlowerDetails> flowerDetails;

  RecommendedFlowersDetails({this.flowerDetails});

  RecommendedFlowersDetails.fromJson(Map<String, dynamic> json) {
    if (json['flowerDetails'] != null) {
      flowerDetails = new List<FlowerDetails>();
      json['flowerDetails'].forEach((v) {
        flowerDetails.add(new FlowerDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.flowerDetails != null) {
      data['flowerDetails'] =
          this.flowerDetails.map((v) => v.toJson()).toList();
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
  String image;

  FlowerDetails(
      {this.id,
      this.flowerType,
      this.soil,
      this.sunlight,
      this.plantationTime,
      this.water,
      this.createdAt,
      this.updatedAt,
      this.image});

  FlowerDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    flowerType = json['flower_type'];
    soil = json['soil'];
    sunlight = json['sunlight'];
    plantationTime = json['plantation_time'];
    water = json['water'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'];
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
    data['image'] = this.image;
    return data;
  }
}
