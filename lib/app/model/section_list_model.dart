class SectionListResponseModel {
  int? status;
  String? message;
  List<SectionListData>? sectionListData;

  SectionListResponseModel({this.status, this.message, this.sectionListData});

  SectionListResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      sectionListData = <SectionListData>[];
      json['data'].forEach((v) {
        sectionListData!.add(new SectionListData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.sectionListData != null) {
      data['data'] = this.sectionListData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SectionListData {
  String? id;
  String? sectionName;

  SectionListData({this.id, this.sectionName});

  SectionListData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sectionName = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.sectionName;
    return data;
  }
}
