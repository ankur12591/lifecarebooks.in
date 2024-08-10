class ClassListResponseModel {
  int? status;
  String? message;
  List<ClassListData>? classListData;

  ClassListResponseModel({this.status, this.message, this.classListData});

  ClassListResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      classListData = <ClassListData>[];
      json['data'].forEach((v) {
        classListData!.add(new ClassListData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.classListData != null) {
      data['data'] = this.classListData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ClassListData {
  String? id;
  String? className;

  ClassListData({this.id, this.className});

  ClassListData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    className = json['class_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['class_name'] = this.className;
    return data;
  }
}
