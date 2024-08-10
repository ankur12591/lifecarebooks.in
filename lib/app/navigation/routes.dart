import 'package:book_nest_life_care/app/navigation/route_arguments.dart';

abstract class Routes {
  static const kSplashScreen = "splash";
  static const kWelcomeScreen = "welcome";
  static const kLoginScreen = "login";
  static const kRegisterScreen = "register";
  static const kForgotPasswordScreen = "forgot-password";
  static const kDashboardScreen = "dashboard-screen";
  static const kCategoryScreen = "category-screen";
  static const kClassBooksScreen = "class_books-screen";
  static const kCartScreen = "cart-screen";
  static const kHomeScreen = "home";
  static const kAdminDashboardScreen = "admin-dashboard";


  ///
  static const kStudentsSearchScreen = "students-search-screen";
  static const kStudentsListScreen = "students-list-screen";
  static const kAttendanceReportSearchScreen =
      "attendance-report-search-screen";
  static const kAttendanceReportListScreen = "attendance-report-list-screen";
  static const kMyAttendanceScreen = "my-attendance-screen";
  static const kAddSyllabusScreen = "add-syllabus-screen";
  static const kUploadSyllabusScreen = "upload-syllabus-screen";
  static const kSearchSyllabusScreen = "search-syllabus-screen";
  static const kSyllabusListScreen = "syllabus-list-screen";
  static const kMyCoursesScreen = "my-courses-screen";
  static const kCoursesOverviewScreen = "courses-overview-screen";
  static const kRatingsAndReviewsScreen = "ratings-and-reviews-screen";
  static const kLessonsScreen = "lessons-screen";
  static const kContentViewScreen = "content-view-screen";
  static const kClassRoutineListScreen = "class-routine-list-screen";
  static const kSearchClassRoutineScreen = "search-class-routine-screen";
  static const kMyClassRoutineScreen = "my-class-routine-screen";
  static const kBookIssueListScreen = "book-issue-list-screen";
  static const kBookRequestScreen = "book-request-screen";
  static const kApplyLeaveScreen = "apply-leave-screen";
  static const kSearchApplyLeaveScreen = "search-apply-leave-screen";
  static const kTicketScreen = "ticket-screen";
  static const kCreateNoticeScreen = "create-notice-screen";
  static const kAppliedLeavesListScreen = "applied-leaves-list-screen";
  static const kAllLeaveRequestListScreen = "all-leave-request-list-screen";
  static const kApproveRejectLeavesListScreen = "approve-reject-leaves-screen";
  static const kSearchAllLeaveRequestListScreen =
      "search-all-leave-request-list-screen";
  static const kNotificationListScreen = "notification-list-screen";
  static const kSearchAssignmentListScreen = "search-assignment-list-screen";
  static const kSearchAssessmentReportScreen = "search-assessment-report-screen";
  static const kAssignmentListScreen = "assignment-list-screen";
  static const kAssessmentReportScreen = "assessment-report-screen";
  static const kAbout = "about";
  static const kChangeLog = "changeLog";
  static const kProductDetail = "product-detail";
  static const kOffline = "offline";
}

abstract class RoutePaths {
  static const kSplashPath = "/";
  static const kWelcomePath = "/welcome";
  static const kLoginPath = "/login";
  static const kRegisterPath = "/register";
  static const kForgotPasswordPath = "/forgot-password";
  static const kCategoryPath = "/category";
  static const kAdminDashboardPath = "/admin-dashboard";
  static const kDashboardPath = "/dashboard";
  static const kCartPath = "/cart";
  static const kClassBooksPath = "/class-books";


  ///
  static const kStudentsSearchPath = "/students-search";
  static const kStudentsListPath =
      "/students-list-screen:${RouteArguments.studentRequestData}";
  static const kAttendanceReportSearchPath = "/attendance-report-search";
  static const kAttendanceReportListPath =
      "/attendance-report-list:${RouteArguments.attendanceReportRequestData}";
  static const kMyAttendancePath = "/my-attendance";
  static const kAddSyllabusPath =
      "/add-syllabus-screen:${RouteArguments.syllabusData}";
  static const kUploadSyllabusPath = "/upload-syllabus-screen";
  static const kSearchSyllabusPath = "/search-syllabus-screen";
  static const kSyllabusListPath = "/syllabus-list-screen";
  static const kMyCoursesPath = "/my-courses-screen";
  static const kCoursesOverviewPath = "/courses-overview-screen";
  static const kRatingsAndReviewsPath = "/ratings-and-reviews-screen";
  static const kLessonsPath = "/lessons-screen";
  static const kContentViewPath = "/content-view-screen";
  static const kNotificationListPath = "/notification-list";
  static const kClassRoutineListPath = "/class-routine-list-screen";
  static const kSearchClassRoutinePath = "/search-class-routine-screen";
  static const kMyClassRoutinePath = "/my-class-routine-screen";
  static const kBookIssueListPath = "/book-issue-list-screen";
  static const kBookRequestPath =
      "/book-request-screen:${RouteArguments.bookDetailData}";
  static const kApplyLeavePath = "/apply-leave-screen";
  static const kSearchApplyLeavePath = "/search-apply-leave-screen";
  static const kTicketPath = "/ticket-screen";
  static const kCreateNoticePath = "/create-notice-screen";
  static const kAppliedLeavesListPath = "/applied-leaves-list-screen";
  static const kAllLeaveRequestListPath = "/all-leave-request-list-screen";
  static const kApproveRejectLeavesListPath = "/approve-reject-leaves-screen";
  static const kSearchAllLeaveRequestListPath =
      "/search-all-leave-request-list-screen";
  static const kSearchAssignmentListPath = "/search-assignment-list";
  static const kSearchAssessmentReportPath = "/search-assessment-report";
  static const kAssignmentListPath =
      "/assignment-list:${RouteArguments.assignmentListRequestData}";
  static const kAssessmentReportPath =
      "/assessment-report:${RouteArguments.assessmentReportRequestData}";
  static const kAboutPath = "/about";
  static const kChangeLogPath = "/change-log";
  static const kProductDetailPath =
      "/product-detail:${RouteArguments.productId}";
  static const kOfflinePath = "/offline-path";
}
