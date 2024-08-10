class UserRoleResponseModel {
  int? status;
  String? message;
  List<UserRoleData>? data;

  UserRoleResponseModel({this.status, this.message, this.data});

  UserRoleResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <UserRoleData>[];
      json['data'].forEach((v) {
        data!.add(new UserRoleData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserRoleData {
  String? id;
  String? name;
  String? slug;
  String? key;
  String? colourCode;
  String? sequence;
  bool? isDeleted;
  bool? isEnabled;
  String? createdOn;
  String? modifiedOn;
  String? deletedOn;
  String? createdAt;
  String? updatedAt;

  UserRoleData(
      {this.id,
        this.name,
        this.slug,
        this.key,
        this.colourCode,
        this.sequence,
        this.isDeleted,
        this.isEnabled,
        this.createdOn,
        this.modifiedOn,
        this.deletedOn,
        this.createdAt,
        this.updatedAt});

  UserRoleData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    key = json['key'];
    colourCode = json['colour_code'];
    sequence = json['sequence'];
    isDeleted = json['is_deleted'];
    isEnabled = json['is_enabled'];
    createdOn = json['created_on'];
    modifiedOn = json['modified_on'];
    deletedOn = json['deleted_on'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['key'] = this.key;
    data['colour_code'] = this.colourCode;
    data['sequence'] = this.sequence;
    data['is_deleted'] = this.isDeleted;
    data['is_enabled'] = this.isEnabled;
    data['created_on'] = this.createdOn;
    data['modified_on'] = this.modifiedOn;
    data['deleted_on'] = this.deletedOn;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
