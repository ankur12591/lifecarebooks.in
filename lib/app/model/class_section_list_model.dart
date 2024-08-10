class ClassSectionListResponseModel {
  int status;
  List<ClassSectionData> data;

  ClassSectionListResponseModel({
    required this.status,
    required this.data,
  });

  factory ClassSectionListResponseModel.fromJson(Map<String, dynamic> json) {
    return ClassSectionListResponseModel(
      status: json['status'],
      data: List<ClassSectionData>.from(
          json['data'].map((item) => ClassSectionData.fromJson(item))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'data': data.map((item) => item.toJson()).toList(),
    };
  }
}

class ClassSectionData {
  String id;
  DateTime createdOn;
  String userId;
  String classId;
  String sectionId;
  String organizationBranchId;
  bool isDeleted;
  dynamic deletedOn;
  DateTime createdAt;
  DateTime updatedAt;
  Class datumClass;
  OrganizationSection organizationSection;

  ClassSectionData({
    required this.id,
    required this.createdOn,
    required this.userId,
    required this.classId,
    required this.sectionId,
    required this.organizationBranchId,
    required this.isDeleted,
    required this.deletedOn,
    required this.createdAt,
    required this.updatedAt,
    required this.datumClass,
    required this.organizationSection,
  });

  factory ClassSectionData.fromJson(Map<String, dynamic> json) {
    return ClassSectionData(
      id: json['id'],
      createdOn: DateTime.parse(json['created_on']),
      userId: json['user_id'],
      classId: json['class_id'],
      sectionId: json['section_id'],
      organizationBranchId: json['organization_branch_id'],
      isDeleted: json['is_deleted'],
      deletedOn: json['deleted_on'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      datumClass: Class.fromJson(json['class']),
      organizationSection: OrganizationSection.fromJson(json['organization_section']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created_on': createdOn.toIso8601String(),
      'user_id': userId,
      'class_id': classId,
      'section_id': sectionId,
      'organization_branch_id': organizationBranchId,
      'is_deleted': isDeleted,
      'deleted_on': deletedOn,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'class': datumClass.toJson(),
      'organization_section': organizationSection.toJson(),
    };
  }
}

class Class {
  String id;
  String className;

  Class({
    required this.id,
    required this.className,
  });

  factory Class.fromJson(Map<String, dynamic> json) {
    return Class(
      id: json['id'],
      className: json['class_name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'class_name': className,
    };
  }
}

class OrganizationSection {
  String id;
  String name;

  OrganizationSection({
    required this.id,
    required this.name,
  });

  factory OrganizationSection.fromJson(Map<String, dynamic> json) {
    return OrganizationSection(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
