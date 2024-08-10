class GradeLevelResponse {
  final List<GradeLevel> results;

  GradeLevelResponse({required this.results});

  factory GradeLevelResponse.fromJson(Map<String, dynamic> json) {
    var list = json['results'] as List;
    List<GradeLevel> gradeLevels =
        list.map((i) => GradeLevel.fromJson(i)).toList();

    return GradeLevelResponse(results: gradeLevels);
  }

  Map<String, dynamic> toJson() {
    return {
      'results': results.map((gradeLevel) => gradeLevel.toJson()).toList(),
    };
  }
}

class GradeLevel {
  final String objectId;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;

  GradeLevel({
    required this.objectId,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory GradeLevel.fromJson(Map<String, dynamic> json) {
    return GradeLevel(
      objectId: json['objectId'],
      name: json['name'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'objectId': objectId,
      'name': name,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
