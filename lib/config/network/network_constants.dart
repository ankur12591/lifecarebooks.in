abstract class NetworkConstants {
  /// Server URLs
  ///

  static const kServerURL = "https://parseapi.back4app.com";

  //Local
  // static const kServerURL = "http://172.16.2.200:2011";

  //Local2
  // static const kServerURL = "http://172.16.0.203:2011";

  // static const kServerURL = "https://stag-usermgmt.bitsrack.com";

  // static const kServerURL = "https://soloapiclient.devstageserver.online/";
  // static const kServerURL = "https://stag-usermgmt.bitsrack.com/v1/users/signin";

  // Dev

  static const kDevelopment = "$kServerURL/";

  // Client and QA
  static const kProduction = "$kServerURL/$kApiVersion";

  static const kApiVersion = "v1/";

  static const kImageBasePath = "http://xxx.xxx.xx.xxx:0000/";
}

abstract class NetworkAPIs {
  /// User Roles
  ///

  static const kStudents = "students/";
  static const kParents = "patents/";

  // User Role
  static const kUserRole = "roles?";

  // User Role
  static const kSignUp = "users";

  // Language List
  static const kLanguageList = "language/list";

  // Grade level List
  static const kGradeLevelList = "classes/grade_level";

  // Language Details
  static const kLanguageDetails = "language/details/";

  // Login
  static const kLogin = "login";

  // ForgotPassword
  static const kForgotPassword = "users/forgot-password";

  // ForgotPassword
  static const kChangePassword = "users/change-password";

  // Country List
  static const kCountry = "regional/countries";

  // My Profile Details
  static const kMyProfileDetails = "users/user-profile";

  // State List
  static const kState = "regional/states/";

  // City List
  static const kCity = "regional/cities/";

  // Timezone
  static const kTimezone = "regional/timezones/";

  // Edit Profile
  static const kEditProfile = "users/update";

  // File Upload
  static const kFileUpload = "fileupload/file-upload";

  // Class List
  static const kClassList = "teachers/class-list";

  // Class Section List
  static const kClassSectionList = "teachers/teacher-class-sections/";

  // Student List for attendance
  static const kStudentListForAttendance =
      "attendance/studentlistforattendance";

  // Student Add attendance
  static const kAddAttendance = "attendance/add";

  // Student attendance report
  static const kAttendanceReport = "attendance/report?";

  // Section List
  static const kSectionList = "teachers/section-list/";

  // Subject List
  static const kSubjectList = "organaization-section/get-section-subject/";

  // Leave Type List
  static const kLeaveTypeList = "assign-leave/role-wise?";

  // Syllabus List
  static const kSyllabusList = "syllabus/all/";

  // Syllabus List
  static const kSyllabusDetails = "syllabus/details/";

  // Add Syllabus
  static const kAddSyllabus = "syllabus/add/";

  // Update Syllabus
  static const kUpdateSyllabus = "syllabus/update/";

  // Delete Syllabus
  static const kDeleteSyllabus = "syllabus/delete/";

  // My Courses List
  static const kMyCoursesList = "course/all?";

  // Courses Overview
  static const kCoursesOverview = "course/overview/";

  // Reviews and Ratings
  static const kCourseRating = "course-rating/all/";

  // Course Content
  static const kCourseContent = "course/content/";

  // Book Category List
  static const kBookCategory = "book-category/all?";

  // Book List
  static const kBook = "book/all?";

  // Book Issue List
  static const kBookIssueList = "book-issue/all?";

  // Book Request List
  static const kBookRequest = "book-issue/add";

  // Course Routine List
  static const kClassRoutineList = "class-time-table/details?";

  // Course Routine List
  static const kMyClassRoutineList = "class-time-table/details";

  // Delete Class Routine
  static const kDeleteClassRoutine = "class-time-table/delete/";

  // Role for notice board
  static const kRoleForNotice = "roles/all?list_for=teacher_notice_board";

  // Create notice
  static const kCreateNotice = "notice/add";

  // Delete Class Routine
  static const kAssignmentList = "assignment/all?";

  // products
  static const products = "products";
}

abstract class NetworkParams {
  static const kFirstName = "first_name";
  static const kMiddleName = "middle_name";
  static const kLastName = "last_name";
  static const kEmail = "email";
  static const kProfilePicture = "profile_picture";
  static const kSyllabusFile = "syllabus_file";
  static const kPhoneCountryCode = "phone_country_code";
  static const kPhone = "phone";
  static const kAddress1 = "address_line_1";
  static const kAddress2 = "address_line_2";
  static const kCity = "city";
  static const kState = "state";
  static const kZipcode = "zipcode";
  static const kCountry = "country";
}
