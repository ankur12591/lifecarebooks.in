class LeaveTypeRequestModel {
  String? status;

  LeaveTypeRequestModel({this.status});

  LeaveTypeRequestModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
    };
  }
}
