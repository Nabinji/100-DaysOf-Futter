class UpdateModel {
  String? name;
  String? job;
  String? updatedAt;

  UpdateModel({this.name, this.job, this.updatedAt});

  UpdateModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    job = json['job'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['job'] = this.job;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
