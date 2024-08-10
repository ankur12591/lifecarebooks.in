import 'package:book_nest_life_care/app/model/status_details.dart';
import 'package:book_nest_life_care/app/ui/screens/notification/model/notifcation_list_model.dart';

class AppConstants {
  static const sourceSansPro = 'SoursSansPro';
  static const inter = 'Inter';
  static const poppins = 'Poppins';

  static const multiLineMaxLength = 500;
  static const textFieldMaxLength = 100;
  static const phoneMaxLength = 15;

  static const portfolio = 1;
  static const caseStudy = 2;

  /// Page limit for products
  static const paginationPageLimit = 30;

  // Date Formats
  static const String dateFormatDdMMYy = "dd/MM/yyyy";
  static const String dateFormatdMMMMYyyy = "d MMMM yyyy";
  static const String dateFormatMMMMyyyy = "MMMM yyyy";
  static const String dateFormatyyyyMMdd = "yyyy-MM-dd";
  static const String dateFormatddMMyyy = "dd-MM-yyyy";
  static const String dateFormatMMMMdYyyy   = "MMMM d, yyyy";
  static const String dateFormatyyyyMMddHHmmss = "yyyy-MM-dd-HH_mm_ss";
  static const String dateFormatGMT = 'EEE MMM dd yyyy HH:mm:ss \'GMT\'';

  static const attendanceStatus = [
    "Present",
    "Absent",
    "Half Leave",
    "Late",
  ];
  static const statusValues = [1, 2, 3, 4];

  // static const ticketsSubItems = [
  //   "Ticket",
  // ];

  static const attendanceSubItems = [
    "Students",
    "Attendance Report",
    "My Attendance",
  ];

  static const syllabusSubItems = [
    "Add Syllabus",
    "Syllabus List",
  ];

  static const courseSubItems = [
    "My Courses",
  ];

  static const classRoutineSubItems = [
    "Class Routine List",
    "My Class Routine",
  ];

  // Attendance status
  static const String statusPresent = "P";
  static const String statusAbsent = "A";
  static const String statusLate = "L";
  static const String statusHalfLeave = "HL";
  static const String statusWeekend = "WK";

  // Drawer main module keys
  static const assignment = "assignment";
  static const dashboard = "dashboard";
  static const offlineExam = "offline_exam";
  static const ticket = "ticket";
  static const liveClasses = "live_classes";
  static const attendance = "attendance";
  static const classRoutine = "class_routine";
  static const course = "course";
  static const syllabus = "syllabus";
  static const websiteSettings = "website_settings";
  static const libraryManagement = "library_management";
  static const noticeBoard = "notice_board";
  static const accountSettings = "account_settings";
  static const leaveManagement = "leave_management";

// Drawer sub module keys
  static const assignmentList = "assignment_list";
  static const evaluation = "evaluation";
  static const assessmentReport = "assesment_report";

  static const examSchedule = "exam_schedule";
  static const examResult = "exam_result";
  static const manageExamGrade = "manage_exam_grade";
  static const uploadExamMarks = "upload_exam_marks";

  static const liveClassList = "live_class_list";

  static const students = "students";
  static const attendanceReport = "attendance_report";
  static const myAttendance = "my_attendance";

  static const classRoutineList = "class_routine_list";
  static const myClassRoutine = "my_class_routine";

  static const myCourse = "my_course";

  static const addSyllabus = "add_syllabus";
  static const syllabusList = "syllabus_list";

  static const bookRequest = "book_request";

  static const createNotice = "create_notice";
  static const listNotice = "list_notice";
  static const myNotice = "my_notice";

  static const applyLeave = "apply_leave";
  static const leaveRequest = "leave_request";

  // Book status
  static const String statusPending = "Pending";
  static const String statusIssued = "Issued";
  static const String statusReturned = "Returned";
  static const String statusLost = "Lost";
  static const String statusDamaged = "Damaged";
  static const String statusRejected = "Rejected";

  // Notification List
  static var notificationList = [
    NotificationListModel(
      messageTitle: "New Message",
      messageBodySubtitle: "Important Update Regarding Payment Processing",
      messageBody: "Support Team",
      isUpdate: false,
      isSimpleMessage: false,
      isRead: true,
      isAlert: false,
      timestamp: "11 Mnt",
    ),
    NotificationListModel(
      messageTitle: "System Alert",
      message: "Maintenance Scheduled Tonight from 10 PM to 6 AM",
      isUpdate: false,
      isSimpleMessage: true,
      isRead: true,
      isAlert: true,
      timestamp: "2 days",
    ),
    NotificationListModel(
      messageTitle: "Account Update",
      message: "Your Account Information Has Been Updated",
      isUpdate: true,
      isSimpleMessage: true,
      isRead: false,
      isAlert: false,
      timestamp: "1 Mont",
    ),
    NotificationListModel(
      messageTitle: "Leave Alert",
      message: "Auto generated half day",
      isUpdate: false,
      isSimpleMessage: true,
      isRead: true,
      isAlert: true,
      timestamp: "2023",
    )
  ];

  // Status Options List

  static var statusOptions = [
    StatusDetailsData(name: "Pending", value: 1),
    StatusDetailsData(name: "Approve", value: 2),
    StatusDetailsData(name: "Reject", value: 3),
  ];

  // Status Options List

  static var statusSortByOptions = [
    StatusDetailsData(name: "Approved", value: 1),
    StatusDetailsData(name: "Pending", value: 2),
    StatusDetailsData(name: "Rejected", value: 3),
  ];
}
