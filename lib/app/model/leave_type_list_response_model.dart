class LeaveTypeResponseModel {
  int? status;
  String? message;
  LeaveData? leaveData;

  LeaveTypeResponseModel({this.status, this.message, this.leaveData});

  LeaveTypeResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    leaveData = json['data'] != null ? new LeaveData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.leaveData != null) {
      data['data'] = this.leaveData!.toJson();
    }
    return data;
  }
}

class LeaveData {
  List<LeaveTypeData>? leaveTypeData;
  int? pageSize;
  int? page;
  int? total;

  LeaveData({this.leaveTypeData, this.pageSize, this.page, this.total});

  LeaveData.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      leaveTypeData = <LeaveTypeData>[];
      json['data'].forEach((v) {
        leaveTypeData!.add(new LeaveTypeData.fromJson(v));
      });
    }
    pageSize = json['pageSize'];
    page = json['page'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.leaveTypeData != null) {
      data['data'] = this.leaveTypeData!.map((v) => v.toJson()).toList();
    }
    data['pageSize'] = this.pageSize;
    data['page'] = this.page;
    data['total'] = this.total;
    return data;
  }
}

class LeaveTypeData {
  String? id;
  String? roleId;
  String? leaveTypeId;
  int? numberOfLeave;
  String? organizationId;
  String? organizationBranchId;
  bool? isDeleted;
  int? status;
  String? sessionYearId;
  String? createdAt;
  String? updatedAt;
  LeaveType? leaveType;

  LeaveTypeData(
      {this.id,
        this.roleId,
        this.leaveTypeId,
        this.numberOfLeave,
        this.organizationId,
        this.organizationBranchId,
        this.isDeleted,
        this.status,
        this.sessionYearId,
        this.createdAt,
        this.updatedAt,
        this.leaveType});

  LeaveTypeData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roleId = json['role_id'];
    leaveTypeId = json['leave_type_id'];
    numberOfLeave = json['number_of_leave'];
    organizationId = json['organization_id'];
    organizationBranchId = json['organization_branch_id'];
    isDeleted = json['is_deleted'];
    status = json['status'];
    sessionYearId = json['session_year_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    leaveType = json['leave_type'] != null
        ? new LeaveType.fromJson(json['leave_type'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['role_id'] = this.roleId;
    data['leave_type_id'] = this.leaveTypeId;
    data['number_of_leave'] = this.numberOfLeave;
    data['organization_id'] = this.organizationId;
    data['organization_branch_id'] = this.organizationBranchId;
    data['is_deleted'] = this.isDeleted;
    data['status'] = this.status;
    data['session_year_id'] = this.sessionYearId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    if (this.leaveType != null) {
      data['leave_type'] = this.leaveType!.toJson();
    }
    return data;
  }
}

class LeaveType {
  String? id;
  String? name;

  LeaveType({this.id, this.name});

  LeaveType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
