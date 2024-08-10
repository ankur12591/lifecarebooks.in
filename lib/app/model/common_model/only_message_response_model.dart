class OnlyMessageResponseModel {
  int? status;
  String? message;
  DeleteSyllabusData? deleteSyllabusData;

  OnlyMessageResponseModel(
      {this.status, this.message, this.deleteSyllabusData});

  OnlyMessageResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    deleteSyllabusData = json['data'] != null
        ? new DeleteSyllabusData.fromJson(json['data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.deleteSyllabusData != null) {
      data['data'] = this.deleteSyllabusData!.toJson();
    }
    return data;
  }
}

class DeleteSyllabusData {
  DeleteSyllabusData();

  DeleteSyllabusData.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}
