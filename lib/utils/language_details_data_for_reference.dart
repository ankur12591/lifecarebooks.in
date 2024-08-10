import 'package:flutter/material.dart';

class LanguageDetailsDataForReference extends StatelessWidget {
  LanguageDetailsDataForReference({super.key});

  final String languageDetailsData = {
    "status": 1,
    "message": "language  get successfully.",
    "data": {
      "data": [
        {
          "id": "a40c1df8-f406-48f6-b600-02df5118e61a",
          "language": "English",
          "code": "en",
          "status": "1",
          "messages": {
            "CR": {
              "GET_CR": "Change Request get successfully.",
              "CREATED": "Change Request Created",
              "NOT_FOUND": "Change request does not exist.",
              "GET_CR_LIST": "Change Request list get successfully.",
              "GET_PROJECT_WO_CR": "Get Project which has now change request",
              "DELETED_SUCCESSFULLY": "Change request deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Change request updated successfully.",
              "CR_DETAILS_NOT_AVAILABLE": "Change Request details not found.",
              "PROJECT_CR_NOT_AVAILABLE": "This project has no change request"
            },
            "BOOK": {
              "NOT_FOUND": "Book  not found",
              "NOT_DELETED":
                  "Book not deleted due to dependency on other modules",
              "NUMBER_SAME":
                  "same number exists please try with another book number",
              "SOME_DELETED": "Some book deleted",
              "ALREADY_EXIST": "Book  already Exists",
              "EXCEL_NOT_FOUND": "Book  Excel not found",
              "GET_SUCCESSFULLY": "Book  get successfully.",
              "NAME_ALREADY_EXIST":
                  "Book  name is already there please try with another Book  name",
              "CREATED_SUCCESSFULLY": "Book created successfully.",
              "DELETED_SUCCESSFULLY": "Book  deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Book  updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Book  list get successfully.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "Book  excel's json file created successfully"
            },
            "FILE": {"GIF_NOT_FOUND": "Gif file is not allowed."},
            "MAKE": {
              "NAME_EXIST": "Name of the Make already exists.",
              "MAKE_NOT_EXIST": "Make is not exist.",
              "GET_MAKE_LISTING": "Get make details successfully.",
              "EDIT_MAKE_SUCCESSFULLY": "Edit make successfully.",
              "MAKE_CREATED_SUCCESSFULLY": "Make created successfully."
            },
            "PLAN": {
              "NOT_FOUND": "Plan not found",
              "NOT_DELETED": "Plan not deleted relation exists.",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "ALREADY_EXIST":
                  "Plan name is already there please try with another Plan name",
              "GET_SUCCESSFULLY": "Plan get successfully.",
              "CREATED_SUCCESSFULLY": "Plan created successfully.",
              "DELETED_SUCCESSFULLY": "Plan deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Plan updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Plan list get successfully."
            },
            "ROLE": {
              "ADDED": "Role added successfully.",
              "FETCH": "Role fetched Successfully",
              "EDITED": "Role edited successfully.",
              "DELETED": "Role deleted successfully.",
              "ALREADY_EXIST": "Role already exist."
            },
            "SMTP": {
              "NOT_FOUND": "SMTP not found",
              "ALREADY_EXIST": "SMTP already Exists",
              "EXCEL_NOT_FOUND": "SMTP Excel not found",
              "GET_SUCCESSFULLY": "SMTP get successfully.",
              "NAME_ALREADY_EXIST":
                  "SMTP name is already there please try with another SMTP name",
              "CREATED_SUCCESSFULLY": "SMTP created successfully.",
              "DELETED_SUCCESSFULLY": "SMTP deleted successfully.",
              "UPDATED_SUCCESSFULLY": "SMTP updated successfully.",
              "GET_LIST_SUCCESSFULLY": "SMTP list get successfully.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "SMTP excel's json file created successfully"
            },
            "TASK": {
              "TASK_GET": "Fetch Task successfully.",
              "DUPLICATE_TASK": "Task Already Exist.",
              "TASK_NOT_FOUND": "Task not found.",
              "ADD_TASK_SUCCESS": "Task added successfully.",
              "EDIT_TASK_SUCCESS": "Task edited successfully.",
              "DELETE_TASK_SUCCESS": "Task deleted successfully.",
              "GET_ALL_TASK_SUCCESS": "Fetch all Task successfully.",
              "EDIT_TASK_SUCCESS_STATUS": "Task status change successfully.",
              "TASK_DETAILS_NOT_AVAILABLE": "Task Details not available."
            },
            "ZOOM": {
              "GET_ALL": "Zoom detail list get successfully..",
              "NOT_EXIST": "Zoom detail doesn't exist.",
              "NOT_FOUND": "Zoom detail not found.",
              "GET_DETAILS": "Zoom detail got successfully.",
              "ALREADY_EXIST": "Zoom detail already exists.",
              "CREATED_SUCCESSFULLY": "Zoom detail created successfully.",
              "DELETED_SUCCESSFULLY": "Zoom detail deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Zoom detail updated successfully."
            },
            "ASSET": {
              "GET_SUCCESSFULLY": "Asset get successfully.",
              "WRONG_ASSET_TYPE": "Asset is wrong.",
              "COUNT_SUCCESSFULLY": "Total make get successfully.",
              "DELETE_SUCCESSFULLY": "Asset deleted successfully.",
              "CREATED_SUCCESSFULLY": "Asset created successfully.",
              "UPDATED_SUCCESSFULLY": "Asset updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Asset list get successfully.",
              "ASSET_CODE_ALREDAY_EXIST": "Asset code already exists.",
              "ASSET_COUNT_SUCCESSFULLY": "Total asset type get successfully.",
              "INSOCK_ASSET_COUNT_SUCCESSFULLY":
                  "Total instock asset type get successfully."
            },
            "CLASS": {
              "NOT_FOUND": "Class not found.",
              "NOT_DELETED": "Class not deleted relation exists.",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "ALREADY_EXIST":
                  "Class name is already there please try with another class name",
              "GET_SUCCESSFULLY": "Class get successfully.",
              "CREATED_SUCCESSFULLY": "Class created successfully.",
              "DELETED_SUCCESSFULLY": "Class deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Class updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Class list get successfully."
            },
            "LEAVE": {
              "LEAVE_GET": "Fetch Leave successfully.",
              "LEAVE_DUPLICATE": "Leave Already Exist.",
              "LEAVE_NOT_ADDED": "Leave not add in this day shift.",
              "LEAVE_NOT_FOUND": "Leave not found.",
              "ADD_LEAVE_SUCCESS": "Leave added successfully.",
              "EDIT_LEAVE_SUCCESS": "Leave edited successfully.",
              "LEAVE_CANNOT_DELET": "Now You can not delete Leave.",
              "MAKE_SEPARATE_LEAVE":
                  "Leave not add in this day shift make separate leave.",
              "UPDATE_LEAVE_STATUS": "Leave status updated.",
              "DELETE_LEAVE_SUCCESS": "Leave deleted successfully.",
              "START_GRETERTHEN_END": "Start date is greater then end date.",
              "GET_ALL_LEAVE_SUCCESS": "Fetch all Leaves successfully.",
              "START_END_DATE_IS_HOLIDAY":
                  "Start date or end date is holiday select another date.",
              "LEAVE_DETAILS_NOT_AVAILABLE": "Leave Details not available."
            },
            "ROLES": {"ADDED": "Role added successfully."},
            "ROOMS": {
              "GET_ROOM": "Room details got successfully.",
              "NOT_FOUND": "Room not found",
              "NOT_DELETED": "Room not deleted relation exists.",
              "GET_ALL_ROOM": "Room list get successfully..",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "ALREADY_EXIST":
                  "ROOMS name is already there please try with another ROOMS name",
              "ROOM_NOT_EXIST": "Room doesn't exist.",
              "ROOM_ALREADY_EXIST": "Room already exists.",
              "CREATED_SUCCESSFULLY": "Room created successfully.",
              "DELETED_SUCCESSFULLY": "Room deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Room updated successfully."
            },
            "SHEET": {"FETCH": "excel sheet url fetch succesfully."},
            "USERS": {
              "INVALID_PM": "User is not Project manager.",
              "INVALID_TL": "User is not team leader.",
              "LEAVE_TODAY": "Employees on leave today.",
              "LOGOUT_FAIL": "Error while logging you out.",
              "NOT_ALLOWED": "You do not have permission to access this role.",
              "URL_EXPIRED": "This URL is expired or Invalid.",
              "GET_ALL_USER": "Fetch all users successfully.",
              "INVALID_USER": "You have not permission to Create new User.",
              "USER_CREATED": "User created successfully.",
              "USER_DELETED": "User deleted successfully.",
              "GET_USER_LIST": "User list get successfully.",
              "LOGIN_SUCCESS": "You are successfully logged in.",
              "LOGOUT_SUCCESS": "Logout successfully.",
              "SIGNUP_SUCCESS": "User Created successfully.",
              "USERTYPE_EXIST": "User type already exist.",
              "USER_NOT_FOUND": "User does not exist.",
              "EMAIL_NOT_FOUND": "Email does not exist.",
              "FETCH_USER_LIST": "Fetching of data successfully.",
              "ADDED_BULK_USERS": "Bulk users added successfully.",
              "CREATED_USERTYPE": "User type created successfully.",
              "DEACTIVE_ACCOUNT":
                  "Your account is deactivated, please contact administrator.",
              "GET_USER_PROFILE": "User profile get successfully.",
              "INVALID_PASSWORD": "Invalid email or password.",
              "STATUS_ACTIVATED": "User is activated",
              "USERTYPE_DELETED": "User type deleted successfully.",
              "USERTYPE_UPDATED": "User type updated successfully.",
              "GET_USERTYPE_LIST": "User type list get successfully.",
              "PASSWORDMINLENGTH":
                  "Your password must contain at least 6 characters.",
              "PASSWORD_MISMATCH":
                  "New password and confirm password not matched.",
              "EMAIL_CHANGE_ERROR":
                  "Email not changed, error in sending email. All other details updated successfully.",
              "INVALIDOLDPASSWORD": "Please enter valid current password.",
              "NOT_VERIFY_ACCOUNT": "Please verify your account.",
              "STATUS_DEACTIVATED": "User is deactivated",
              "STATUS_NOT_UPDATED": "unable to change User status",
              "USERTYPE_NOT_FOUND": "User type does not exist.",
              "EMAIL_ALREDAY_EXIST": "This email is already exist in this App.",
              "GET_USER_AUTH_TOKEN": "Get new auth tokens successfully.",
              "ADMIN_PROFILE_UPDATE": "Profile update successfully.",
              "GET_USERTYPE_PROFILE": "User type get successfully.",
              "LOCATION_DEACTIVATED":
                  "Job location deactivated, please contact administrator.",
              "ORGANIZATION_DELETED":
                  "Your organization has been deleted.Please Contact Admin for resolve issue",
              "PROFILE_FETCH_SUCCESS": "Profile fetch successfull.",
              "RESETPASSWORD_SUCCESS":
                  "Your password has been updated successfully.",
              "FORGOTPASSWORD_SUCCESS":
                  "Your password has been updated successfully.",
              "PASSWORDUPDATE_SUCCESS": "Your password changed successfully.",
              "PROFILE_DELETE_SUCCESS": "Profile deleted successfully.",
              "PROFILE_UPDATE_SUCCESS": "Profile updated successfully.",
              "MAX_USERS_LIMIT_REACHED":
                  "Max users limit reached for this plan",
              "USERDETAIL_NOT_AVAILABLE": "User details not found.",
              "CONTRACTOR_STATUS_PENDING":
                  "Your account is pending for verification. Please contact Vendor for help.",
              "CONTRACTOR_STATUS_REJECTED":
                  "Your account is disabled. Please contact Vendor to re-activate your account.",
              "USER_DETAILS_NOT_AVAILABLE": "User details not available.",
              "MOBILE_NUMBER_ALREADY_EXIST":
                  "Mobile number already exists in our system! Please enter a different one.",
              "ORGANIZATION_BRANCH_DELETED":
                  "Your organization Branch has been deleted.Please Contact Admin for resolve issue",
              "FORGOTPASSWORD_EMAIL_SUCCESS":
                  "Email has been sent Please check your inbox and click on the received link to reset your password.",
              "OLDPASSWORD_NEWPASSWORD_SAME":
                  "Current password and new password can not be same.",
              "ORGANIZATION_STATUS_INACTIVE":
                  "Your organization has been InActive due to some reason.Please Contact Admin for resolve issue",
              "PROFILE_UPDATE_WITH_EMAIL_SUCCESS":
                  "Profile updated successfully. Please verify your new email.",
              "ORGANIZATION_BRANCH_STATUS_INACTIVE":
                  "Your organization  Branch has been InActive due to some reason.Please Contact Admin for resolve issue"
            },
            "AUTHOR": {
              "NOT_FOUND": "Author  not found",
              "ALREADY_EXIST": "Author  already Exists",
              "EXCEL_NOT_FOUND": "Author  Excel not found",
              "GET_SUCCESSFULLY": "Author  get successfully.",
              "NAME_ALREADY_EXIST":
                  "Author  name is already there please try with another Author  name",
              "CREATED_SUCCESSFULLY": "Author created successfully.",
              "DELETED_SUCCESSFULLY": "Author  deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Author  updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Author  list get successfully.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "Author  excel's json file created successfully"
            },
            "CLIENT": {
              "CREATED": "Client Created.",
              "NOT_FOUND": "Client does not exist.",
              "GET_CLIENT_LIST": "Client list get successfully.",
              "GET_CLIENT_PROFILE": "Client profile get successfully.",
              "EMAIL_ALREDAY_EXIST": "Client email is already exist.",
              "PROFILE_UPDATE_SUCCESS": "Client Profile updated successfully.",
              "CLIENT_DETAILS_NOT_AVAILABLE": "Client details not found."
            },
            "COURSE": {
              "NOT_FOUND": "Course not found",
              "NOT_DELETED": "Course not deleted relation exists.",
              "RATING_LIST": " Course rating list get successfully.",
              "RATING_ADDED": "Course rating added.",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "ALREADY_EXIST": "Course already Exists",
              "GET_SUCCESSFULLY": "Course get successfully.",
              "NAME_ALREADY_EXIST":
                  "Course name is already there please try with another Course name",
              "CREATED_SUCCESSFULLY": "Course created successfully.",
              "DELETED_SUCCESSFULLY": "Course deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Course updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Course list get successfully."
            },
            "EMAILS": {"EMAIL_SEND_SUCCESS": "Single email send successfully."},
            "LESSON": {
              "NOT_FOUND": "lesson not found",
              "NOT_DELETED": "lesson not deleted relation exists.",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "ALREADY_EXIST":
                  "lesson name is already there please try with another lesson name",
              "GET_SUCCESSFULLY": "lesson get successfully.",
              "CREATED_SUCCESSFULLY": "lesson created successfully.",
              "DELETED_SUCCESSFULLY": "lesson deleted successfully.",
              "UPDATED_SUCCESSFULLY": "lesson updated successfully.",
              "GET_LIST_SUCCESSFULLY": "lesson list get successfully."
            },
            "MODULE": {
              "NOT_FOUND": "Module not found",
              "NOT_DELETED": "Module not deleted relation exists.",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "ALREADY_EXIST":
                  "Module name is already there please try with another module name",
              "GET_SUCCESSFULLY": "Module get successfully.",
              "CREATED_SUCCESSFULLY": "Module created successfully.",
              "DELETED_SUCCESSFULLY": "Module deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Module updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Module list get successfully."
            },
            "NOTICE": {
              "NOT_FOUND": "Notice  not found",
              "NOT_DELETED":
                  "Notice not deleted due to dependency on other modules",
              "NUMBER_SAME":
                  "same number exists please try with another Notice number",
              "SOME_DELETED": "Some Notice deleted",
              "ALREADY_EXIST": "Notice  already Exists",
              "EXCEL_NOT_FOUND": "Notice  Excel not found",
              "GET_SUCCESSFULLY": "Notice  get successfully.",
              "NAME_ALREADY_EXIST":
                  "Notice  name is already there please try with another Notice  name",
              "CREATED_SUCCESSFULLY": "Notice created successfully.",
              "DELETED_SUCCESSFULLY": "Notice  deleted successfully.",
              "SOMETHING_WENT_WRONG":
                  "Notice was not deleted due to some error",
              "UPDATED_SUCCESSFULLY": "Notice  updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Notice  list get successfully.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "Notice  excel's json file created successfully"
            },
            "PARENT": {
              "NOT_FOUND": "Parent not found",
              "NOT_CREATED": "Parent not Created.There Was Some issues",
              "EXCEL_NOT_FOUND": "Parent Excel not found",
              "GET_SUCCESSFULLY": "Parent get successfully.",
              "IMPORT_SUCESSFULLY": "Parent imported succesfully.",
              "CREATED_SUCCESSFULLY": "Parent created successfully.",
              "DELETED_SUCCESSFULLY": "Parent deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Parent updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Parent list get successfully.",
              "EXCEL_PARENT_ALREADY_EXIST":
                  "Parent in excel sheet already exist"
            },
            "STRIPE": {
              "NOT_FOUND": "stripe key not found",
              "ALREADY_EXIST": "stripe key already there please update it",
              "GET_SUCCESSFULLY": "stripe key get successfully.",
              "CREATED_SUCCESSFULLY": "S3 key created successfully.",
              "DELETED_SUCCESSFULLY": "strpe key deleted successfully.",
              "UPDATED_SUCCESSFULLY": "S3 details update successfully.",
              "GET_LIST_SUCCESSFULLY": "stripe key list get successfully."
            },
            "TICKET": {
              "CREATED": "Ticket created successfully.",
              "FETCHED": "Ticket fetched successfully.",
              "NOT_FOUND": "Ticket not assigned to you.",
              "COMMENT_ADDED": "Comment added successfully.",
              "STATUS_UPDATE": "Ticket status updated sucesfully.",
              "COMMENT_FETCHED": "Comment fetched successfully."
            },
            "VENDOR": {
              "NAME_EXIST": "Name of the Vendor already exists.",
              "VENDOR_NOT_EXIST": "Vendor is not exist.",
              "GET_VENDOR_LISTING": "Get vendor details successfully.",
              "EDIT_VENDOR_SUCCESSFULLY": "Edit vendor successfully.",
              "VENDOR_CREATED_SUCCESSFULLY": "Vendor created successfully."
            },
            "COMPANY": {
              "NAME_EXIST": "Name of the company already exists.",
              "COMPANY_ADDED": "Company added Successfully",
              "COMPANY_NOT_ADDED": "Couldn't add company",
              "COMPANY_NOT_EXIST": "Company is not exist.",
              "GET_COMPANY_LISTING": "Get company details successfully.",
              "EDIT_COMPANY_SUCCESSFULLY": "Edit company successfully.",
              "COMPANY_CREATED_SUCCESSFULLY": "Company created successfully."
            },
            "FE_USER": {
              "PARENTS": "Parents",
              "STUDENT": "Student",
              "TEACHER": "Teacher",
              "BIO_DATA": "Bio Data",
              "LIBRARIAN": "Librarian",
              "STUDENT_ID": "Student Id",
              "ADD_STUDENT": "Add Student",
              "ADD_TEACHER": "Add Teacher",
              "BLOOD_GROUP": "Blood Group",
              "NATIONALITY": "Nationality",
              "SELECT_DATE": "Select Date",
              "UPLOAD_LOGO": "Upload Profile Picture",
              "EDIT_PARENTS": "Edit Parents",
              "EDIT_STUDENT": "Edit Student",
              "EDIT_TEACHER": "Edit Teacher",
              "SELECT_CLASS": "Select Class",
              "VIEW_PARENTS": "View Parents",
              "VIEW_STUDENT": "View Student",
              "VIEW_TEACHER": "View Teacher",
              "DATE_OF_BIRTH": "Date Of Birth",
              "PROFILE_IMAGE": "Profile Image",
              "DELETE_PARENTS": "Delete Parents",
              "DELETE_STUDENT": "Delete Student",
              "DELETE_TEACHER": "Delete Teacher",
              "SELECT_SECTION": "Select Section",
              "DATE_OF_JOINING": "Date Of Joining",
              "STREET_ADDRESS_LINE_1": "Street address line 1",
              "STREET_ADDRESS_LINE_2": "Street address line 2",
              "ARE_YOU_DELETE_PARENTS":
                  "Are you sure you want to delete this Parents?.",
              "ARE_YOU_DELETE_STUDENT":
                  "Are you sure you want to delete this Student?.",
              "ARE_YOU_DELETE_TEACHER":
                  "Are you sure you want to delete this Teacher?."
            },
            "GENERAL": {
              "GET_LIST": "Get list successfully.",
              "NOT_FOUND": "API not found.",
              "NOT_TOKEN": "Token not found.",
              "INVALID_ID": "Please enter valid id.",
              "INVALID_DOC": "Please upload document.",
              "JWT_EXPIRED": "JWT is expired, Please login again.",
              "INVALID_IMAGE": "Please upload valid image.",
              "INVALID_LOGIN": "You are not authorized.",
              "BLACKLIST_MAIL":
                  "Please enter a valid email, we don't allow dummy emails.",
              "RESTRICTED_USER": "You are not authorized to do this operation.",
              "UNAUTHORIZED_USER": "Unauthorized, please login.",
              "INVALID_SECRET_KEY": "Invalid secret key.",
              "PASSWORD_NOT_ALLOW": "Password can not be edit by user.",
              "EMAIL_ALREADY_EXIST":
                  "Email is already registered, please use different mail.",
              "GENERAL_ERROR_CONTENT":
                  "Something went wrong. Please try again later."
            },
            "HOLIDAY": {
              "FETCHED": "Holidays Get successfully.",
              "NOT_FOUND": "Holiday not found.",
              "NOT_DELETED": "Holiday not deleted successfully.",
              "WEEKEND_DAY": "Can't create a holidays on weekend.",
              "SOME_DELETED": "Sone Holidays are deleted and some not.",
              "ALREADY_EXIST": "Holidays name already exist",
              "GET_SUCCESSFULLY": "Holidays list get successfully.",
              "DELETED_SUCCESSFULLY": "Holiday delete successfully.",
              "UPDATED_SUCCESSFULLY": "Holiday update successfully."
            },
            "PROJECT": {
              "PROJECT_GET": "Fetch Project successfully.",
              "FILE_REQUIRED": "Not getting any files.",
              "FILE_NOT_FOUND": "Files not founds.",
              "PROJECT_DUPLICATE": "Project Already Exist.",
              "PROJECT_NOT_FOUND": "Project not found.",
              "ADD_PROJECT_SUCCESS": "Project added successfully.",
              "FILE_UPLOAD_SUCCESS": "Files uploaded successfully.",
              "EDIT_PROJECT_SUCCESS": "Project edited successfully.",
              "FILE_GET_SUCCESSFULLY": "Project Document get successfully.",
              "DELETE_PROJECT_SUCCESS": "Project deleted successfully.",
              "GET_ALL_PROJECT_SUCCESS": "Fetch all Projects successfully.",
              "PROJECT_DETAILS_NOT_AVAILABLE": "Project Details not available."
            },
            "REQUEST": {
              "FAIL": "Action not find.",
              "ADDED": "Leave type added successfully.",
              "FETCH": "Data fetched Successfully",
              "EDITED": "Data edited successfully.",
              "DELETED": "Data deleted successfully."
            },
            "SECTION": {
              "NOT_FOUND": "Section not found",
              "NOT_DELETED": "Section not deleted relation exists.",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "ALREADY_EXIST": "Section already Exists",
              "GET_SUCCESSFULLY": "Section get successfully.",
              "NAME_ALREADY_EXIST":
                  "Section name is already there please try with another Section name",
              "CREATED_SUCCESSFULLY": "Section created successfully.",
              "DELETED_SUCCESSFULLY": "Section deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Section updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Section list get successfully.",
              "SUBJECT_ASSIGN_SUCCESS": "Subject Assign successfully",
              "TEACHER_ASSIGN_SUCCESS": "Teacher Assign successfully"
            },
            "STUDENT": {
              "NOT_FOUND": "Student not found",
              "EXCEL_NOT_FOUND": "Student Excel not found",
              "GET_SUCCESSFULLY": "Student get successfully.",
              "EXCEL_CLASS_ISSUE": "Provided class is not exist",
              "IMPORT_SUCESSFULLY": "Student imported succesfully.",
              "EXCEL_SECTION_ISSUE": "Provided section is not exist",
              "CREATED_SUCCESSFULLY": "Student created successfully.",
              "DELETED_SUCCESSFULLY": "Student deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Student updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Student list get successfully.",
              "EXCEL_STUDENT_ALREADY_EXIST":
                  "Student in excel sheet already exist"
            },
            "TEACHER": {
              "NOT_FOUND": "Teacher not found",
              "NOT_DELETED": "Teacher not deleted relation exists.",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "EXCEL_NOT_FOUND": "Teacher Excel not found",
              "GET_SUCCESSFULLY": "Teacher get successfully.",
              "IMPORT_SUCESSFULLY": "Teacher imported succesfully.",
              "CREATED_SUCCESSFULLY": "Teacher created successfully.",
              "DELETED_SUCCESSFULLY": "Teacher deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Teacher updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Teacher list get successfully.",
              "EXCEL_DEPARTMENT_ISSUE": "Provided Department is not exist",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "Teacher in excel sheet already exist"
            },
            "FEEDBACK": {
              "GET": "Ticket get successfully.",
              "DATA": "Dashboard data get successfully",
              "GET_SINGLE": "Ticket get successfully.",
              "INVALID_ID": "Please enter valid id.",
              "CAN_NOT_EDIT": "You can not edit this field.",
              "FEEDBACK_CHAT": "Ticket message send successfully.",
              "FEEDBACK_CHAT_GET": "Chat get successfully.",
              "GET_FEEDBACK_LIST": "Ticket list get successfully.",
              "FEEDBACK_NOT_FOUND": "Ticket not found.",
              "GET_REMARK_SUCCESS": "Ticket remarks got successfully.",
              "EDITED_SUCCESSFULLY": "Ticket updated successfully.",
              "CREATED_SUCCESSFULLY": "Ticket generated.",
              "FEEDBACK_TYPE_CREATED": "Ticket type created.",
              "FEEDBACK_IS_NOT_CLOSED": "Ticket is not closed yet.",
              "FORBIDDEN_REASSIGNMENT": "You are not authorized to Re-Assign. ",
              "ASSIGNEE_ALREADY_EXISTS": "Assignee already exists.",
              "FEEDBACK_CAN_NOT_DELETE": "You can not delete this ticket.",
              "REASSIGNED_SUCCESSFULLY":
                  "New assignee has been assigned successfully.",
              "REMARK_ADDED_SUCCESSFULLY": "Ticket remark added successfully.",
              "USER_VALIDATION_SUCCESSFUL": "Ticket updated successfully.",
              "FEEDBACK_DELETED_SUCCESSFULLY": "Ticket deleted successfully.",
              "FEEDBACK_DETAILS_NOT_AVAILABLE": "Ticket is not available."
            },
            "LANGUAGE": {
              "NOT_FOUND": "language not found.",
              "ALREADY_EXIST": "language already Exists.",
              "GET_SUCCESSFULLY": "language  get successfully.",
              "DELETE_SUCCESSFULLY": "language deleted successfully.",
              "CREATED_SUCCESSFULLY": "language created successfully.",
              "UPDATED_SUCCESSFULLY": "language updated successfully."
            },
            "REGIONAL": {
              "CITIES_FETCH": "Cities fetched successfully",
              "STATES_FETCH": "States fetched successfully",
              "TIMEZONE_FETCH": "Time-Zone fetched successfully",
              "COUNTRIES_FETCH": "Countries fetched successfully",
              "CITIES_NOT_FOUND": "Cities not found",
              "STATES_NOT_FOUND": "States not found",
              "TIMEZONE_NOT_FOUND": "Time-Zone not found",
              "COUNTRIES_NOT_FOUND": "Countries not found"
            },
            "SYLLABUS": {
              "DELETE": "Syllabus delete successfully.",
              "UPDATE": "Syllabus update successfully.",
              "GET_ALL": "Syllabus list get successfully.",
              "GET_LIST": "Syllabus listing get successfully.",
              "NOT_EXIST": "Syllabus doesn't exist.",
              "NOT_FOUND": "Syllabus not found.",
              "ADD_SUCCESS": "Syllabus add successfully.",
              "GET_DETAILS": "Syllabus details got successfully.",
              "ALREADY_EXIST": "Syllabus already exists.",
              "ROOM_NOT_AVAILABLE": "Room is not available.",
              "CREATED_SUCCESSFULLY": "Syllabus created successfully.",
              "DELETED_SUCCESSFULLY": "Syllabus deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Syllabus updated successfully.",
              "SECTION_ALREADY_OCCUPIED": "Section is already assigned class.",
              "TEACHER_ALREADY_OCCUPIED": "Teacher is already assigned class."
            },
            "DASHBOARD": {
              "SUPER_ADMIN": "super-admin dashboard fetched succesfully."
            },
            "FE_BRANCH": {
              "BRANCH": "Branch",
              "ADD_BRANCH": "Add Branch",
              "BRANCH_NAME": "Branch Name",
              "EDIT_BRANCH": "Edit Branch",
              "LIST_BRANCH": "List Branch",
              "VIEW_BRANCH": "View Branch",
              "BRANCH_EMAIL": "Branch Email",
              "DELETE_BRANCH": "Delete Branch",
              "UPDATE_BRANCH": "Update Branch",
              "BRANCH_ADDRESS": "Branch Address",
              "ADD_BRANCH_ADMIN": "Add Branch Admin",
              "EDIT_BRANCH_ADMIN": "Edit Branch Admin",
              "BRANCH_INFORMATION": "Branch Information",
              "UPLOAD_BRANCH_LOGO": "Upload Branch Logo",
              "ARE_YOU_SURE_WANT_TO_DELETE":
                  "Are you sure you want to delete this branch?"
            },
            "FE_COMMON": {
              "NO": "#",
              "ADD": "Add",
              "NOO": "No",
              "YES": "Yes",
              "ZIP": "Zip Code",
              "ltr": "ltr",
              "rtl": "rtl",
              "CITY": "City",
              "DATE": "Date",
              "EDIT": "Edit",
              "MODE": "Mode",
              "NAME": "Name",
              "NEXT": "Next",
              "SAVE": "Save",
              "SEND": "Send",
              "USER": "User",
              "VIEW": "View",
              "CLASS": "Class",
              "CLEAR": "Clear",
              "EMAIL": "Email",
              "STATE": "State",
              "TOTAL": "Total",
              "UP_TO": "Up To",
              "USERS": "Users",
              "ACTION": "Action",
              "CANCEL": "Cancel",
              "CREATE": "Create",
              "EXPORT": "Export",
              "FILTER": "Filter",
              "FRIDAY": "Friday",
              "GENDER": "Gender",
              "IMPORT": "Import",
              "MONDAY": "Monday",
              "SEARCH": "Search",
              "SELECT": "Select",
              "STEP_1": "STEP 1",
              "STEP_2": "STEP 2",
              "STEP_3": "STEP 3",
              "SUBMIT": "Submit",
              "SUNDAY": "Sunday",
              "ADDRESS": "Address",
              "CHECKED": "Checked",
              "COUNTRY": "Country",
              "NO_DATA": "No Data",
              "PAY_NOW": "Pay Now",
              "PREVIEW": "Preview",
              "SECTION": "Section",
              "TUESDAY": "Tuesday",
              "ADD_MORE": "Add More",
              "DOWNLOAD": "Download",
              "END_TIME": "End Time",
              "OPTIONAL": "Optional",
              "PASSOWRD": "Password",
              "PREVIOUS": "Previous",
              "SATURDAY": "Saturday",
              "THURSDAY": "Thursday",
              "TIMEZONE": "Timezone",
              "ADMIN_DOB": "Admin Date Of Birth",
              "DIRECTION": "Direction",
              "LAST_NAME": "Last Name",
              "LOAD_LESS": "Load Less",
              "LOAD_MORE": "Load More",
              "SHOW_LESS": "Show Less",
              "SHOW_MORE": "Show More",
              "WEDNESDAY": "Wednesday",
              "CREATED_AT": "Created At",
              "CREATED_BY": "Created By",
              "FIRST_NAME": "First Name",
              "SELECT_ALL": "Select All",
              "START_DATE": "Start date",
              "START_TIME": "Start Time",
              "ADD_SECTION": "Add Section",
              "ATTACHEMENT": "Attachment",
              "DESCRIPTION": "Description",
              "DROP_SELECT": "Drop or select file",
              "MIDDLE_NAME": "Middle Name",
              "SEARCH_HERE": "Search here",
              "SELECT_CITY": "Select city",
              "SELECT_DATE": "Select Date",
              "UPLOAD_FILE": "Upload File",
              "CREATED_DATE": "Create Date",
              "EDIT_SECTION": "Edit Section",
              "PHONE_NUMBER": "Phone Number",
              "SECTION_NAME": "Section Name",
              "SELECT_STATE": "Select state",
              "VIEW_SECTION": "view Section",
              "MOBILE_NUMBER": "Mobile Number",
              "ROWS_PER_PAGE": "Rows per page",
              "DELETE_SECTION": "Delete Section",
              "SELECT_COUNTRY": "Select country",
              "SELECT_SUBJECT": "Select Subject",
              "TOGGLE_COLUMNS": "Toggle Columns",
              "BILLING_ADDRESS": "Billing Address",
              "MULTIPLE_SELECT": "Multiple Select",
              "SELECT_TIMEZONE": "Select timezone",
              "UNLIMITED_USERS": "Unlimited Users",
              "LABEL_START_DATE": "Start date",
              "QUICK_PAGE_LINKS": "Quick Page Links",
              "SEARCH_YOUR_PAGE": "Search your page",
              "LABEL_DESCRIPTION": "Description",
              "PERMENENT_ADDRESS": "Permanent Address",
              "UNLIMITED_BRANCHES": "Unlimited Branches",
              "NO_TICKETS_AVAILABLE": "No Tickets Available.!!",
              "SAMPLE_FILE_DOWNLOAD": "Sample File Download",
              "EMERGENCY_PHONE_NUMBER": "Emergency Phone Number",
              "WHITE_SPACE_NOT_INCLUDE": "Whitespace should not be included.",
              "NO_CONVERSATIONS_SELECTED": "No Conversations Selected.",
              "ARE_YOU_SURE_WANT_DELETE_SECTION":
                  "Are you sure you want to delete this Section?"
            },
            "FE_COURSE": {
              "LEVEL": "Level",
              "COURSE": "Course",
              "RATING": "rating",
              "REVIEW": "Review",
              "LESSONS": "Lessons",
              "ADD_USER": "Add user",
              "CATEGORY": "Category",
              "END_DATE": "End Date",
              "MY_COURSE": "My Courses",
              "NO_LESSON": "No Lesson are available",
              "RATE_THIS": "Rate this",
              "RATE_VIEW": "View Ratings",
              "ADD_COURSE": "Add Course",
              "BASIC_INFO": "Basic Information",
              "CREATED_AT": "Created At",
              "NO_SECTION": "No Sections are available",
              "VISIBILITY": "visibility",
              "COURSE_INFO": "Course Information",
              "COURSE_NAME": "Course name",
              "EDIT_COURSE": "Edit Course",
              "ENROLLEMENT": "Enrollment",
              "LABEL_LEVEL": "Level",
              "VIEW_COURSE": "view Course",
              "ADD_CATEGORY": "Create Category",
              "ADD_MULTIPLE": "Add multiple",
              "COURSE_IMAGE": "Course Image",
              "START_LESSON": "Start Lesson",
              "CATEGORY_NAME": "Category Name",
              "DELETE_COURSE": "Delete Course",
              "EDIT_CATEGORY": "Edit Category",
              "MANAGE_COURSE": "Manage Course",
              "TOTAL_LESSONS": "Total Lessons",
              "VIEW_CATEGORY": "view Category",
              "LABEL_CATEGORY": "Category",
              "LABEL_END_DATE": "End Date",
              "COURSE_OVERVIEW": "Course overview",
              "DELETE_CATEGORY": "Delete Category",
              "PARENT_CATEGORY": "Parent Category",
              "COURSE_FULL_NAME": "Course Full Name",
              "FE_COURSE_LESSON": {
                "SECTION": "Section",
                "SUMMARY": "Summary",
                "EDIT_LESSON": "Edit Lesson",
                "LESSON_NAME": "Lesson Name",
                "LESSON_TYPE": "Lesson Type",
                "VIEW_LESSON": "view Lesson",
                "LESSON_IMAGE": "Lesson Image",
                "DELETE_LESSON": "Delete Lesson",
                "LESSON_DURATION": "Lesson Duration"
              },
              "COURSE_VISIBILITY": "Course Visibility",
              "FE_COURSE_SECTION": {
                "ADD_SECTION": "Add_section",
                "EDIT_SECTION": "Edit Section",
                "VIEW_SECTION": "view Section",
                "DELETE_SECTION": "Delete Section",
                "SECTION_NUMBER": "Section Number",
                "SECTION_DETAILS": "Section Details"
              },
              "SHORT_DESCRIPTION": "Short Description",
              "DETAIL_DESCRIPTION": "Detail Description",
              "COURSE_OVERVIEW_URL": "Course overview URL",
              "MINIMUM_REQUIREMENT": "Minimum Requirement",
              "COURSE_OVERVIEW_LIST": "Course Overview",
              "PARENT_CATEGORY_NAME": "Parent Category Name",
              "DELETE_COURSE_WARNING":
                  "Are you sure you want to delete this Course?",
              "UPLOAD_CATEGORY_IMAGE": "Upload Category Image",
              "NO_COURSES_ARE_AVAILABLE": "No courses are available.",
              "LABEL_MINIMUM_REQUIREMENT": "Minimum Requirement",
              "ARE_YOU_SURE_DELETE_CATEGORY":
                  "Are you sure you want to delete this category?"
            },
            "FE_STATUS": {
              "OPEN": "Open",
              "ACTIVE": "Active",
              "CLOSED": "Closed",
              "FINISH": "Finish",
              "NEWEST": "Newest",
              "OLDEST": "Oldest",
              "STATUS": "Status",
              "PENDING": "Pending",
              "RESOLVED": "Resolved",
              "COMPLETED": "Completed",
              "IN_ACTIVE": "InActive",
              "IN_PROGRESS": "In Progress",
              "LABEL_STATUS": "Status",
              "IN_ACTIVE_SMALL": "Inactive"
            },
            "FE_TICKET": {
              "INBOX": "Inbox",
              "TICKET": "Ticket",
              "CREATED": "Created",
              "REGARDS": "Regards",
              "ALL_TICKET": "All Ticket",
              "ISSUE_TYPE": "Issue Type",
              "CREATE_TICKE": "Create Ticket",
              "CREATE_TICKET": "Create Ticket"
            },
            "LIBRARIAN": {
              "NOT_FOUND": "Librarian not found",
              "EXCEL_NOT_FOUND": "Librarian Excel not found",
              "GET_SUCCESSFULLY": "Librarian get successfully.",
              "IMPORT_SUCESSFULLY": "Librarian imported succesfully.",
              "CREATED_SUCCESSFULLY": "Librarian created successfully.",
              "DELETED_SUCCESSFULLY": "Librarian deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Librarian updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Librarian list get successfully.",
              "EXCEL_DEPARTMENT_ISSUE": "Provided Department is not exist",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "Librarian in excel sheet already exist"
            },
            "TIMESHEET": {
              "TIMESHEET_NOT_FOUND": "Timesheet not found.",
              "CREATED_SUCCESSFULLY": "Timesheet created successfully.",
              "GET_TIMESHHET_SUCCESS": "Timesheet list get successfully.",
              "EDIT_TIMESHEET_SUCCESS": "Edit timesheet successfully.",
              "DELETE_TIMESHEET_SUCCESS": "Delete timesheet successfully."
            },
            "ASSET_TYPE": {
              "NOT_EXIST": "Asset type is not exist.",
              "NAME_EXIST": "Name of the asset type already exists.",
              "GET_LISTING": "Get asset type details successfully.",
              "EDIT_SUCCESSFULLY": "Edit asset type successfully.",
              "CREATED_SUCCESSFULLY": "Asset type created successfully."
            },
            "ATTACHMENT": {"IMAGE_UPLOAD_ERROR": "upload image error."},
            "ATTENDANCE": {
              "GET_ALL": "Attendance list get successfully..",
              "NOT_EXIST": "Attendance doesn't exist.",
              "NOT_FOUND": "Attendance not found.",
              "GET_DETAILS": "Attendance details got successfully.",
              "ALREADY_EXIST": "Attendance already exists.",
              "CREATED_SUCCESSFULLY": "Attendance created successfully.",
              "DELETED_SUCCESSFULLY": "Attendance deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Attendance updated successfully."
            },
            "BOOK_ISSUE": {
              "LOST": "Book has been marked as lost.",
              "DAMAGED": "Returned book has been reported as damaged.",
              "REJECTED": "Requested book has been rejected.",
              "NOT_FOUND": "Book issue  not found",
              "NOT_DELETED":
                  "Book issue not deleted due to dependency on other modules",
              "SOME_DELETED": "Some book deleted",
              "ALREADY_EXIST": "Book issue  already Exists",
              "INACTIVE_USER": "Inactive user cannot request book",
              "EXCEL_NOT_FOUND": "Book issue  Excel not found",
              "PENDING_CREATED": "Book Issue Pending request created.",
              "GET_SUCCESSFULLY": "Book issue  get successfully.",
              "AlREADY_REQUESTED": "Book has been already been issued",
              "QUANTITY_FINISHED":
                  "Not enough book copies remaining in stock to issue book.",
              "NAME_ALREADY_EXIST":
                  "Book issue  name is already there please try with another Book issue  name",
              "CREATED_SUCCESSFULLY": "Book issue created successfully.",
              "DELETED_SUCCESSFULLY": "Book issue  deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Book issue  updated successfully.",
              "APPROVED_SUCCESSFULLY": "Book successfully approved.",
              "GET_LIST_SUCCESSFULLY": "Book issue  list get successfully.",
              "LIBRARY_CARD_REQUIRED": "Library card required to issue book.",
              "RETURNED_SUCCESSFULLY": "Book successfully returned.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "Book issue  excel's json file created successfully"
            },
            "CATEGORIES": {
              "NOT_FOUND": "Categories not found",
              "NOT_DELETED": "Categories not deleted relation exists.",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "ALREADY_EXIST": "Category already Exists",
              "EXCEL_NOT_FOUND": "Categories Excel not found",
              "GET_SUCCESSFULLY": "Categories get successfully.",
              "NAME_ALREADY_EXIST":
                  "Categories name is already there please try with another Categories name",
              "CREATED_SUCCESSFULLY": "Categories created successfully.",
              "DELETED_SUCCESSFULLY": "Categories deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Categories updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Categories list get successfully.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "Categories excel's json file created successfully"
            },
            "DEPARTMENT": {
              "NOT_FOUND": "Department not found",
              "ALREADY_EXIST":
                  "Department name is already there please try with another Department name",
              "GET_DEPARTMENT": "Department details got successfully.",
              "GET_ALL_DEPARTMENT": "Department list get successfully..",
              "CREATED_SUCCESSFULLY": "Department created successfully.",
              "DELETED_SUCCESSFULLY": "Department deleted successfully.",
              "DEPARTMENT_NOT_EXIST": "Department doesn't exist.",
              "UPDATED_SUCCESSFULLY": "Department updated successfully.",
              "ALREADY_EXIST_WITH_CODE":
                  "Department code is already there please try with another Department code",
              "DEPARTMENT_ALREADY_EXIST": "Department already exists."
            },
            "EXAM_GRADE": {
              "NOT_FOUND": "Exam grade not found",
              "NOT_DELETED":
                  "Exam grade not deleted due to dependency on other modules",
              "SOME_DELETED": "Some Exam grade deleted",
              "ALREADY_EXIST": "Exam grade already Exists",
              "GET_SUCCESSFULLY": "Exam grade get successfully.",
              "CREATED_SUCCESSFULLY": "Exam grade created successfully.",
              "DELETED_SUCCESSFULLY": "Exam grade deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Exam grade updated successfully.",
              "BETWEEN_ALREADY_EXIST":
                  "Exam grade for percentage is already there.",
              "GET_LIST_SUCCESSFULLY": "Exam grade list get successfully."
            },
            "ISSUE_TYPE": {
              "CREATED": "Issue type created successfully.",
              "FETCHED": "Issue types fetched successfully.",
              "NOT_FOUND": "Issue types not found.",
              "NOT_DELETED": "Issue type not deleted relation exists.",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "ALREADY_EXIST": "Issue type already exist.",
              "DELETED_SUCCESSFULLY": "Issue type deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Issue type update successfully."
            },
            "LEAVE_TYPE": {
              "FETCHED": "Leave Types get successfully.",
              "NOT_FOUND": "Leave type not found.",
              "NOT_DELETED": "Leave type not deleted.",
              "SOME_DELETED": "Some leave type deleted.",
              "ALREADY_EXIST": "This leave type Already exist.",
              "GET_SUCCESSFULLY": "Leave Types details get successfully.",
              "DELETED_SUCCESSFULLY": "Leave type delete successfully.",
              "UPDATED_SUCCESSFULLY": "Leave type update successfully."
            },
            "LIVE_CLASS": {
              "GET_ALL": "Live class list get successfully..",
              "NOT_EXIST": "Live class doesn't exist.",
              "NOT_FOUND": "Live class not found.",
              "GET_DETAILS": "Live class details got successfully.",
              "ALREADY_EXIST": "Live class already exists.",
              "ALREADY_EXIST_TIME": "Live class already exist for the time.",
              "TOPIC_ALREADY_EXIST":
                  "Live topic is already there please try with another Live topic",
              "CREATED_SUCCESSFULLY": "Live class created successfully.",
              "DELETED_SUCCESSFULLY": "Live class deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Live class updated successfully.",
              "ZOOM_CREDENTIALS_NOT_ADDED":
                  "Zoom credentials not added, Please add first."
            },
            "PERMISSION": {
              "ADDED": "Permission added successfully.",
              "FETCH": "Permission fetched Successfully",
              "EDITED": "Permission edited successfully.",
              "DELETED": "Permission deleted successfully.",
              "UPDATED": "Permission updated successfully.",
              "NOT_FOUND": "Permission Not Found",
              "ALREADY_EXIST": "Permission already exist."
            },
            "USER_LEAVE": {
              "FETCHED": "Users leave list get successfully.",
              "ALREADY_USED_LEAVE":
                  "Users have used leave type request so it's not updated.",
              "UPDATED_SUCCESSFULLY": "User leave details update successfully.",
              "GET_HISTORY_SUCCESSFULLY":
                  "User leave history get successfully.",
              "SOME_USER_ROLE_USED_LEAVE":
                  "Users have used some leave type request so it's not updated.",
              "DETAILS_FETCHED_SUCCESSFULLY":
                  "User leave details get successfully."
            },
            "APPLY_LEAVE": {
              "ADD": "Leave applyed successfully.",
              "NOT_FOUND": "Apply leave not found.",
              "GET_SUCCESSFULLY": "Apply lave details get successfully.",
              "HOLIDAY_ON_THIS_DAY": "Can't apply leave on weekend.",
              "DELETED_SUCCESSFULLY": "Apply leave delete successfully.",
              "UPDATED_SUCCESSFULLY": "Apply leave update successfully.",
              "GET_LIST_SUCCESSFULLY": "Apply leave get successfully.",
              "ALREADY_APPLY_THIS_DAY": "Already applyed leave on this day.",
              "DO_NOT_HAVE_ENOUGH_LEAVE":
                  "Don't have enough leave for this leave type."
            },
            "ASSIGNMENTS": {
              "NOT_FOUND": "Assignment  not found",
              "NOT_DELETED":
                  "Assignment not deleted due to dependency on other modules",
              "SOME_DELETED": "Some Assignment deleted",
              "ALREADY_EXIST": "Assignment  already Exists",
              "GET_SUCCESSFULLY": "Assignment  get successfully.",
              "NAME_ALREADY_EXIST":
                  "Assignment  name is already there please try with another Assignment  name",
              "CREATED_SUCCESSFULLY": "Assignment created successfully.",
              "DELETED_SUCCESSFULLY": "Assignment  deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Assignment  updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Assignment  list get successfully."
            },
            "COURSE_USER": {
              "NOT_FOUND": "Course user not found",
              "NOT_DELETED":
                  "Course user not deleted due to dependency on other modules",
              "SOME_DELETED": "Some course user deleted",
              "GET_SUCCESSFULLY": "Course user get successfully",
              "COURSE_USER_ASSIGNED": "user assigned to course successfully",
              "CREATED_SUCCESSFULLY": "Course user created successfully",
              "DELETED_SUCCESSFULLY": "Course user deleted successfully",
              "UPDATED_SUCCESSFULLY": "Course user updated successfully",
              "GET_LIST_SUCCESSFULLY": "Course user  list get successfully",
              "USER_ASSIGNED_ALREADY":
                  "users are already assigned to this course",
              "COURSE_USER_GET_SUCCESSFULLY": "Course user get successfully",
              "UPDATED_COURSE_USER_ASSIGNED": "updated assigned course users"
            },
            "FE_REQUIRED": {
              "DAY": "Day is required*.",
              "MAX": "should not exceed",
              "BODY": "Body is required*.",
              "CITY": "City is required*.",
              "CODE": "Code is required*.",
              "NAME": "Name is required*.",
              "ROOM": "Room is required*.",
              "SLUG": "Slug is required*.",
              "TYPE": "Type is required*.",
              "ZERO": "Input should not be 0. Please enter a non-zero value.",
              "CLASS": "Class is required*.",
              "EMAIL": "SMTP Email is required*.",
              "GRADE": "Grade is required*.",
              "LEVEL": "Level is required*.",
              "PRICE":
                  "Please enter a valid price. It should be a number (e.g., 10 or 10.99)",
              "STATE": "State is required*.",
              "TITLE": "Title is required*.",
              "VALID": "Enter a valid",
              "GENDER": "Gender is required*.",
              "RATING": "Rating is required*.",
              "STATUS": "Status is required*.",
              "COUNTRY": "Country is required*.",
              "LETTERS":
                  "should contain only letters. Numbers and special characters are not allowed.",
              "SECTION": "Please select section*.",
              "SUBJECT": "Please select subject*.",
              "TEACHER": "Teacher is required*.",
              "BIO_DATA": "Bio data is required*.",
              "CAPACITY": "Capacity is required*.",
              "CATEGORY": "Category name is required*.",
              "END_DATE": "Please select a end date*.",
              "FACILITY": "Facility is required*.",
              "LOCATION": "Location is required*.",
              "MINI_REQ": "Minimum Requirement is required*.",
              "NEGATIVE":
                  "should not be a negative number. Please enter a valid string without negative values.",
              "PASSWORD": "SMTP Password is required*.",
              "ROOM_MAX":
                  "Room number must be a positive numerical value less than 5 digits",
              "SEMESTER": "Semester is required*.",
              "TIMEZONE": "Timezone is required*.",
              "TYPE_MAX": "Type should not exceed 25 characters.",
              "USERNAME": "SMTP Username is required*.",
              "ZIP_CODE": "Zip code is required*.",
              "LAST_NAME": "Lastname is required*.",
              "NO_NUMBER": "cannot contain numbers*.",
              "SMTP_HOST": "SMTP Host is required*.",
              "SMTP_PORT": "SMTP Port is required*.",
              "BOOK_TITLE": "Book Title is required*.",
              "CLASS_NAME": "Class name is required*.",
              "DEPARTMENT": "Department is required*.",
              "DETAIL_REQ": "Detail description is required*.",
              "FIRST_NAME": "Firstname is required*.",
              "INPUT_ZERO":
                  "Input should not be 0. Please enter a non-zero value.",
              "MORE_SPECE":
                  "No more than one space is allowed between characters.",
              "RATING_MAX": "Review should not exceed 450 characters.",
              "START_DATE": "Please select a start date*.",
              "BLOOD_GROUP": "Blood Group is required*.",
              "BOOK_NUMBER": "Book number is required*.",
              "DESCRIPTION": "Description is required*.",
              "IS_Required": "is required*.",
              "MIDDLE_NAME": "Middlename is required*.",
              "NATIONALITY": "Nationality is required*.",
              "ROOM_NUMBER": "Room Number is required*.",
              "SELECT_DATE": "Please select a date*.",
              "SELECT_EXAM": "Please select exam*.",
              "TOTAL_MARKS": "Total mark is required*.",
              "FACILITY_MAX": "Facility should not exceed 100 characters.",
              "INPUT_COMMON":
                  "Input should not be a negative number. Please enter a valid string without negative values.",
              "LENGTH_FIFTY": "should not exceed 50 characters",
              "LOCATION_MAX": "Location should not exceed 25 characters.",
              "PASSWORD_ACC": "Password must be 8 or more characters long",
              "PASSWORD_MAX":
                  "Password must be a maximum of 32 characters long",
              "PHONE_NUMBER": "Phone number is required*.",
              "ROOM_NUMERIC": "Room Number should only contain numeric values.",
              "SECTION_NAME": "Section name is required*.",
              "SELECT_CLASS": "Please select class*.",
              "SEMESTER_VAL": "Semester should not exceed 12 characters.",
              "SUBJECT_CODE": "Subject code is required*.",
              "SUBJECT_NAME": "Subject Name is required*.",
              "BOOK_CATEGORY": "Book Category is required*.",
              "INVALID_EMAIL": "Invalid email.",
              "PASSING_MARKS": "Passing mark is required*.",
              "BOOK_TITLE_MAX":
                  "Book Title should not be more than 25 characters.*",
              "DEPARTMENT_MAX":
                  "Department name should not exceed 25 characters.",
              "MAX_PERCENTAGE": "Max. percentage is required*.",
              "MIN_PERCENTAGE": "Min. percentage is required*.",
              "SELECT_TEACHER": "Please select teacher*.",
              "TOTAL_QUANTITY": "Total quantity is required*.",
              "ZIP_VALIDATION": "Zip code must be a digit number",
              "BOOK_NUMBER_VAL": "Book number must be a non-negative number*.",
              "DEPARTMENT_NAME": "Department name is required*.",
              "IMPORT_VALIDATE":
                  "Only XLSX files are allowed. Please upload valid files.",
              "UPLOAD_SYLLABUS": "Please upload syllabus*.",
              "BOOK_COMBINATION":
                  "Book number must contain only alphabets and numbers.",
              "BOOK_QUANTIY_VAL": "Total quantity must be an integer.",
              "EMAIL_VALIDATION": "Email is required*.",
              "SUBJECT_CODE_VAL":
                  "Subject code should not exceed 10 characters.",
              "SUBJECT_NAME_MAX":
                  "Subject name should not exceed 50 characters.",
              "BOOK_CATEGORY_MAX":
                  "Book Category should not be more than 255 characters.*",
              "CAPACITY_NEGATIVE": "Capacity must be a positive number.",
              "HYPHEN_UNDERSCORE":
                  "should not end with a single hyphen or underscore.",
              "SELECT_ISSUE_DATE": "Select issue date*.",
              "SPECIAL_CHARACTER":
                  "should not contain and start or end with a special character and should not be a negative and decimal number.",
              "MATCH_NEW_PASSWORD":
                  "Passwords don't match. Please ensure the passwords match exactly.",
              "SECTION_VALIDATION": "Section is required*.",
              "SELECT_RETURN_DATE": "Select return date*.",
              "SUBJECT_VALIDATION": "Subject is required*.",
              "VALIDATION_MESSAGE":
                  "must contain only letters, numbers, underscore (_) and hyphen (-).",
              "ZIP_MAX_VALIDATION":
                  "Zip code must be maximum of 10 digits long.",
              "ZIP_MIN_VALIDATION": "Zip code must be at least 6 digits long.*",
              "CATEGORY_VALIDATION": "Category is required.*",
              "DEPARTMENT_NAME_VAL":
                  "Department name must contain only alphabets and numbers",
              "LIBRARY_CARD_NUMBER": "Library card number is required*.",
              "PASSOWRD_LOWER_CASE": "At least one lowercase character",
              "PASSOWRD_ONE_NUMBER": "At least one number",
              "PASSOWRD_UPPER_CASE": "At least one uppercase character",
              "PASSWORD_VALIDATION": "Password is required*.",
              "RELATION_VALIDATION": "Relation is required*.",
              "SELECT_DATE_OF_BIRTH": "Please select a date of birth.",
              "STREET_ADDRESS_LINE_1": "Street addrress line 1 is required*.",
              "STREET_ADDRESS_LINE_2": "Street addrress line 2 is required*.",
              "SUBJECT_NAME_NEGATIVE": "Subject name must not be negative",
              "SUBJECT_NAME_REQUIRED": "Subject is required*.",
              "ZIP_SIX_TEN_VALIDATION":
                  "'Zip code must be a digit and it must have 6-10 characters.",
              "NEW_PASSWORD_VALIDATION":
                  "New password should not be the same as the old password",
              "PASSWORD_MAX_VALIDATION":
                  "Password must be 8-12 characters, contain at least one lowercase letter, one uppercase letter, one number, and one special character (@\$!%*?&)",
              "EMAIL_ADDRESS_VALIDATION": "Email address is required*.",
              "SUBJECT_NAME_COMBINATION":
                  "Subject name must contain only alphabets and numbers.",
              "SUBJEST_SEMESTER_NEGATIVE": "Semester must be a non-negative*.",
              "LAST_NAME_NUMBER_VALIDATION":
                  "Lastname cannot contain numbers*.",
              "START_END_HYPHEN_VALIDATION":
                  "should not start and end with an underscore (_) or hyphen (-).",
              "FIRST_NAME_NUMBER_VALIDATION":
                  "Firstname cannot contain numbers*.",
              "SUBJEST_SEMESTER_COMBINATION":
                  "Semester must contain only alphabets and numbers.",
              "MIDDLE_NAME_NUMBER_VALIDATION":
                  "Middlename cannot contain numbers*."
            },
            "FE_SYLLABUS": {
              "SYLLABUS": "Syllabus",
              "ADD_SYLLABUS": "Add Syllabus",
              "EDIT_SYLLABUS": "Edit Syllabus",
              "SYLLABUS_LIST": "Syllabus List",
              "DELETE_SYLLABUS": "Delete Syllabus",
              "UPLOAD_SYLLABUS": "Upload Syllabus",
              "ARE_YOU_SURE_WANT_TO_DELETE_THIS_SYLLABUS":
                  "Are you sure you want to delete this Syllabus?"
            },
            "TASK_STATUS": {
              "TASK_STATUS_EXISTS": "task already exists.",
              "GET_ALL_TASK_SUCCESS": "Get all tasks successfully.",
              "TASK_STATUS_NOT_FOUND": "Task status not found.",
              "ADD_TASK_STATUS_SUCCESS": "Added task status successfully.",
              "TASK_STATUS_NOT_DELETED": "Task status not/unable to delete.",
              "TASK_STATUS_NOT_UPDATED": "Task status not/unable to updated",
              "FETCH_TASK_STATUS_SUCCESS": "Fetched  task status successfully.",
              "DELETE_TASK_STATUS_SUCCESS": "Deleted task status successfully.",
              "UPDATE_TASK_STATUS_SUCCESS": "Updated task status successfully."
            },
            "ASSIGN_LEAVE": {
              "FETCHED": "Assign leave get successfully.",
              "NOT_FOUND": "Assign leave not found",
              "NOT_ASSIGN": "This type already assign to roles.",
              "ADD_SUCCESS": "Assign leave succesfully.",
              "ALREADY_EXITS": "Assign leave already exist.",
              "GET_SUCCESSFULLY": "assign leave details get successfully.",
              "DELETED_SUCCESSFULLY": "Assign leave delete successfully.",
              "SOME_ASSIGN_SOME_NOT":
                  "This leave type assign in some user roles.",
              "UPDATED_SUCCESSFULLY": "Assign leave update successfully."
            },
            "FE_DASHBOARD": {"DASHBOARD": "Dashboard"},
            "FE_LIBRARIAN": {
              "LIBRARIAN": "Librarian",
              "ADD_LIBRARIAN": "Add Librarian",
              "EDIT_LIBRARIAN": "Edit Librarian",
              "VIEW_LIBRARIAN": "View Librarian",
              "DELETE_LIBRARIAN": "Delete Librarian",
              "ARE_YOU_DELETE_LIBRARIAN":
                  "Are you sure you want to delete this Librarian ?."
            },
            "LIBRARY_CARD": {
              "NOT_FOUND": "Library Card  not found",
              "ALREADY_EXIST": "Library Card  already Exists",
              "CREATED_SUCCESSFULLY": "Library Card created successfully.",
              "UPDATED_SUCCESSFULLY": "Library Card  updated successfully.",
              "CARD_NUMBER_ALREADY_EXIST":
                  "Library Card number already exists or User has already Library Card "
            },
            "OFFLINE_EXAM": {
              "NOT_FOUND": "Exam  not found",
              "NOT_DELETED":
                  "Exam not deleted due to dependency on other modules",
              "SOME_DELETED": "Some Exam deleted",
              "ALREADY_EXIST": "Exam  already Exists",
              "EXAM_ASSIGNED": "Exam is Assigned.",
              "GET_SUCCESSFULLY": "Exam  get successfully.",
              "RESULT_NOT_FOUND": "Exam result not found.",
              "EXAM_ASSIGN_UPDATE": "Exam section updated.",
              "NAME_ALREADY_EXIST":
                  "Exam  name is already there please try with another Exam  name",
              "EXAM_ASSIGN_ALREADY": "Exam assigned already to the section.",
              "CREATED_SUCCESSFULLY": "Exam created successfully.",
              "DELETED_SUCCESSFULLY": "Exam  deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Exam  updated successfully.",
              "EXAM_ASSIGN_NOT_FOUND": "Exam section assignment not updated.",
              "GET_LIST_SUCCESSFULLY": "Exam  list get successfully.",
              "RESULT_GET_SUCCESSFULLY": "Exam result get successfully.",
              "EXAM_ASSIGN_GET_SUCCESSFULLY": "Exam section get successfully.",
              "RESULT_LIST_GET_SUCCESSFULLY": "Exam result get successfully.",
              "EXAM_ASSIGN_DELETE_SUCCESSFULLY":
                  "Exam section deleted successfully."
            },
            "ORGANIZATION": {
              "NOT_FOUND": "Organization not found",
              "NOT_DELETED": "Organization not deleted relation exists.",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "ALREADY_EXIST":
                  "Organization name is already there please try with another Organization name",
              "GET_SUCCESSFULLY": "Organization get successfully.",
              "CREATED_SUCCESSFULLY": "Organization created successfully.",
              "DELETED_SUCCESSFULLY": "Organization deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Organization updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Organization list get successfully.",
              "SUBSCRIPTION_DELETE_SUCCESSFULLY":
                  "Your current plan deleted successfully.",
              "YOUR_CURRENT_PLAN_CURRENCY_NOT_MATCH":
                  "Your current plan currency is diffrent."
            },
            "SESSION_YEAR": {
              "NOT_FOUND": "Assignment  not found",
              "NOT_DELETED":
                  "Assignment not deleted due to dependency on other modules",
              "SOME_DELETED": "Some Assignment deleted",
              "ALREADY_EXIST": "Assignment  already Exists",
              "GET_SUCCESSFULLY": "Assignment  get successfully.",
              "NAME_ALREADY_EXIST":
                  "Assignment  name is already there please try with another Assignment  name",
              "CREATED_SUCCESSFULLY": "Assignment created successfully.",
              "DELETED_SUCCESSFULLY": "Assignment  deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Assignment  updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Assignment  list get successfully."
            },
            "SUBSCRIPTION": {
              "SUBSCRIPTION_SUCCESSFULLY":
                  "Subscription details get successfully."
            },
            "BOOK_CATEGORY": {
              "NOT_DELETED": "Book Category not deleted relation exists.",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "ALREADY_EXIST": "Book Category  already Exists",
              "EXCEL_NOT_FOUND": "Book Category  Excel not found",
              "GET_SUCCESSFULLY": "Book Category  get successfully.",
              "NAME_ALREADY_EXIST":
                  "Book Category  name is already there please try with another Book Category  name",
              "CREATED_SUCCESSFULLY": "Book Category created successfully.",
              "DELETED_SUCCESSFULLY": "Book Category  deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Book Category  updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Book Category  list get successfully.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "Book Category  excel's json file created successfully"
            },
            "CR_VALIDATION": {
              "VALID_STATUS": "Please Enter valid status",
              "INVALID_CR_ID": "Please Enter valid CR ID",
              "CR_DESC_REQUIRED": "Change Request Description is required",
              "CR_NAME_REQUIRED": "Change Request Name is required.",
              "CR_HOURS_REQUIRED": "Change Request Hours is required",
              "CR_STATUS_REQUIRED": "Plese Enter Change request status",
              "INVALID_PROJECT_ID": "Please Enter valid Project ID",
              "PROJECT_ID_REQUIRED": "Project id is required."
            },
            "EXAM_SCHEDULE": {
              "AVAILABLE": "Available",
              "NOT_FOUND": "Exam Schedule not found",
              "NOT_DELETED":
                  "Exam Schedule not deleted due to dependency on other modules",
              "RESULT_EXIST": "Schedule result Exist, Not deleted.",
              "SOME_DELETED": "Some Exam Schedule deleted",
              "ALREADY_EXIST": "Exam Schedule already Exists",
              "GET_SUCCESSFULLY": "Exam Schedule get successfully.",
              "CREATED_SUCCESSFULLY": "Exam Schedule created successfully.",
              "DELETED_SUCCESSFULLY": "Exam Schedule deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Exam Schedule updated successfully.",
              "BETWEEN_ALREADY_EXIST":
                  "Exam Schedule for percentage is already there.",
              "GET_LIST_SUCCESSFULLY": "Exam Schedule list get successfully."
            },
            "FE_ASSIGNMENT": {
              "MARKS": "Marks",
              "MEDIA": "Media",
              "CHOOSE": "Choose",
              "REPORT": "Report",
              "DETAILS": "Details",
              "SUMMARY": "Summary",
              "EVALUATE": "Evaluate",
              "ASSESMENT": "Assesment Report",
              "ASSIGNMENT": "Assignment",
              "MIN_POINTS": "Minimum Marks",
              "REMARK_MAX": "Remark should not exceed 100 characters.",
              "SUBMISSION": "Submission",
              "TOTAL_FILE": "Total file size",
              "MY_UPLOADED": "My uploaded assesment",
              "ONLY_NUMBER": "Only numbers are allowed.",
              "VIEW_REPORT": "View Report",
              "ASS_SUB_FORM": " Assignment Submission Form",
              "ATTACH_FILES": "Attach assignment files",
              "FILE_SUPPORT": "File Support",
              "SCHEDULED_AT": "Scheduled at",
              "TOTAL_POINTS": "Total Marks",
              "ADD_ASSESMENT": "Add Assignment",
              "MY-ASSIGNMENT": "My Assignment",
              "SUMMARY_LIMIT": "Summary should not exceed 250 characters.",
              "ADD_ASSIGNMENT": "Add Assignment",
              "EDIT_ASSESMENT": "Edit Assignment",
              "MARKS_REQUIRED": "Marks required*",
              "MINI_MARKS_MAX": "Minimum marks should not exceed 5 digit.",
              "OBTAINED_MARKS": "Obtained marks",
              "SUBMITTED_DATE": "Submitted Date",
              "VIEW_ASSESMENT": "View Assignment",
              "ASSIGNMENT_DATE": "Assignment Date",
              "ASSIGNMENT_LIST": "Assignment List",
              "ASSIGNMENT_TIME": "Assignment Time",
              "DESCRIPTION_MAX":
                  "Description should not exceed 150 characters.",
              "EDIT_ASSIGNMENT": "Edit Assignment",
              "STUDENT_DETAILS": "Student Details",
              "SUBMISSION_DATE": "Submission Date",
              "TOTAL_MARKS_MAX": "Total marks should not exceed 5 digit.",
              "VIEW_ASSIGNMENT": "View Assignment",
              "ALLOWED_DOCUMENT":
                  "Any standard Image,Document,Sheet,PDF or Text file is allowed",
              "ASSESMENT_REPORT": "Assesment Report",
              "ASSIGNMENT_TITLE": "Assignment Title",
              "DELETE_ASSESMENT": "Delete Assignment",
              "ADD_SUMMARY_MEDIA": "Add Summary Media",
              "DATE_OF_SUBMITTED": "Date of Submitted",
              "DELETE_ASSIGNMENT": "Delete Assignment",
              "EVALUATION_RESULT": "Evaluation Result",
              "SELECT_ASSIGNMENT": "Select Assignment",
              "SUBMIT_ASSIGNMENT": "Submit Assignment",
              "UPLOAD_ASSIGNMENT": "Upload Assesment",
              "ALLOW_UPLOAD_FILES": "Allow to upload files",
              "ASSIGNMENT_SUMMARY": "Assignment summary is required*.",
              "ATTACHMENT_MIN_ONE":
                  "Please upload at least one file. It is mandatory to include at least one attachment",
              "DATE_OF_SUBMISSION": "Date of submission",
              "MAXIMUM_ATTACHMENT": "Maximum attachments required*.",
              "MINI_MARKS_MAX_VAL":
                  "Minimum points cannot be greater than total points.",
              "MINI_MARKS_NUMERIC":
                  "Minimum marks should only contain numeric values.",
              "ADD_ASSIGNMENT_LIST": "Add Assignment List",
              "EVALUATE_SUBMISSION": "Evaluate Submission",
              "INVALID_NAME_FORMAT":
                  "Assignment title must contain alphanumeric characters and may include dots, hyphens, underscores, or single spaces. It cannot start or end with a dot, hyphen, underscore, or space .",
              "MINI_MARKS_REQUIRED": "Minimum marks required*.",
              "SUBMISSION_DATE_MSG": "Submission date for the assignment",
              "TOTAL_MARKS_NUMERIC":
                  "Total marks should only contain numeric values.",
              "ADD_ASSIGNMENT_TITLE": "Add assignment title",
              "ASSIGNMENT_TITLE_VAL":
                  "Name must contain alphanumeric characters and may include dots, hyphens, underscores, or single spaces. It cannot start or end with a dot, hyphen, underscore, or space .",
              "EDIT_ASSIGNMENT_LIST": "Edit Assignment List",
              "TOTAL_MARKS_REQUIRED": "Total marks required*.",
              "PLACEHOLDER_MIN_MARKS": "Enter minimum marks",
              "ASSIGNMENT_DESCRIPTION": "Assignment Description",
              "ASSIGNMENT_TITLE_LIMIT":
                  "Assignment name should not exceed 30 characters.",
              "DELETE_ASSIGNMENT_LIST": "Delete Assignment List",
              "MAXIMUM_ATTACHMENT_MAX":
                  "Maximum attachments size should not exceed 5 digit.",
              "MININUM_POINT_REQUIRED": "Minimum points are required*.",
              "PLACEHOLDER_TOTAL_MARK": "Enter total marks",
              "SELECT_DATE_SUBMISSION": "select submission date",
              "MAXIMUM_ATTACHMENT_SIZE": "Maximum attachments size required*.",
              "MAXIMUM_FILE_SIZE_LIMIT": "Maximum file size limit",
              "ARE_YOU_DELETE_ASSESMENT":
                  "Are you sure you want to delete this Assignment?",
              "ARE_YOU_DELETE_ASSIGNMENT":
                  "Are you sure you want to delete this Assignment?",
              "ASSIGNMENT_TITLE_REQUIRED": "Assignment title is required*.",
              "PLACEHOLDER_MAX_FILE_SIZE": "Enter maximum file size",
              "SELECT_DATE_PUBLISH_LATER": "select schedule date",
              "MAXIMUM_ATTACHMENT_NUMERIC":
                  "Maximum attachments should only contain numeric values.",
              "MAXIMUM_ATTACHMENT_SIZE_MB":
                  "Maximum file size of attachment in MB",
              "PLACEHOLDER_MAX_ATTACHMENT":
                  "Enter maximum number of attachments",
              "MAXIMUM_MARKS_STUDENT_SCORE":
                  " Maximum marks a student can score",
              "MINIMUM_MARKS_STUDENT_SCORE":
                  "Minimum marks required for the student to pass this assignment",
              "MAXIMUM_FILES_STUDENT_UPLOAD":
                  "Maximum no of files student can upload",
              "ARE_YOU_DELETE_ASSIGNMENT_LIST":
                  "Are you sure you want to delete this Assignment List?",
              "ASSIGNMENT_DESCRIPTION_REQUIRED":
                  "Assignment description is required*.",
              "MAXIMUM_ATTACHMENT_NUMERIC_SIZE":
                  "Maximum attachments size should only contain numeric values.",
              "MINIMUM_POINTS_LESS_THAN_POINTS":
                  "Minimum marks should be less than total marks"
            },
            "FE_ATTENDANCE": {
              "A": "A",
              "L": "L",
              "P": "P",
              "HL": "HL",
              "OF": "of",
              "ON": "on",
              "WK": "WK",
              "LATE": "Late",
              "ROLL": "Roll",
              "LEAVE": "Leave",
              "ABSENT": "Absent",
              "REG_NO": "Register No",
              "PRESENT": "Present",
              "REMARKS": "Remarks",
              "WEEKEND": "Weekend",
              "EMPLOYEE": "Employee",
              "STAFF_ID": "Staff Id",
              "STUDENTS": "Students",
              "EMPLOYEES": "Employees",
              "HALFLEAVE": "Half-Leave",
              "ATTENDANCE": "Attendance",
              "YOUR_CHILD": "your child",
              "SELECT_ROLE": "Select Role",
              "LAST_UPDATED": "Last Updated",
              "SELECT_CLASS": "Select Class",
              "SELECT_MONTH": "Select Month",
              "STUDENT_LIST": "Student List",
              "EMPLOYEE_LIST": "Employee List",
              "MY_ATTENDANCE": "My Attendance",
              "YOUR_CHILDREN": "your childrens",
              "SELECT_STUDENT": "Select Student",
              "SELECT_EMPLOYEE": "Select Employee",
              "SELECT_SECTIONS": "Select Sections",
              "TAKE_ATTENDANCE": "Take Attendance",
              "ATTENDANCE_REPORT": "Attendance Report",
              "CHILDREN_ATTENDANCE": "Children's Attendance"
            },
            "FE_PLACHOLDER": {
              "ZIP": "Enter zip code",
              "NAME": "Enter name",
              "TYPE": "Enter type",
              "EMAIL": "Enter email",
              "LEVEL": "Select level",
              "TITLE": "Enter title",
              "COURSE": "Select course from list",
              "GENDER": "Select gender",
              "GREADE": "Enter grade",
              "STATUS": "Select status",
              "ADDRESS": "Enter address",
              "CAPCITY": "Enter capacity",
              "MINUTES": "Minutes",
              "SECTION": "Select section",
              "SUBJECT": "Enter subject",
              "CATEGORY": "Select category",
              "END_DATE": "Select end date",
              "FACILITY": "Enter facility",
              "LANGUAGE": "Select language",
              "LOCATION": "Enter location",
              "PASSWORD": "Enter password",
              "SEMESTER": "Enter semester",
              "DEPARMENT": "Select department",
              "LAST_NAME": "Enter last name",
              "SMTP_HOST": "Enter SMTP host",
              "SMTP_PORT": "Enter SMTP port",
              "CLASS_NAME": "Enter class name",
              "FIRST_NAME": "Enter first name",
              "SMTP_EMAIL": "Enter SMTP email",
              "START_DATE": "Select start date",
              "TITLE_TEXT": "Enter title text",
              "BLOOD_GROUP": "Select blood group",
              "BRANCH_NAME": "Enter branch name",
              "FOOTER_TEXT": "Enter footer text",
              "LESSON_NAME": "Enter your lesson name",
              "LESSON_TYPE": "Select lesson type",
              "MIDDLE_NAME": "Enter middle name",
              "NATIONALITY": "Enter nationality",
              "RETURN_FINE": "Enter Fine here ",
              "ROOM_NUMBER": "Enter room number",
              "SELECT_DATE": "Select date",
              "SELECT_EXAM": "Select exam",
              "SELECT_ROLE": "Select role",
              "SELECT_ROOM": "Select room",
              "SELECT_USER": "Select user here",
              "TOTAL_MARKS": "Enter total marks",
              "BRANCH_EMAIL": "Enter branch email",
              "ENTER_REMARK": "Enter remark here",
              "SECTION_NAME": "Enter section name",
              "SELECT_CLASS": "Select class",
              "SELECT_USERS": "Select users ",
              "SUBJECT_CODE": "Enter subject code",
              "SUBJECT_NAME": "Enter subject name",
              "BOOK_CATEGORY": "Enter book category name",
              "CATEGORY_NAME": "Enter category name",
              "PASSING_MARKS": "Enter passing marks",
              "SMTP_HOSTNAME": "Enter SMTP Hostname",
              "SMTP_PASSWORD": "Enter SMTP password",
              "SMTP_USERNAME": "Enter SMTP username",
              "BRANCH_ADDRESS": "Enter branch address",
              "MAX_PERCENTAGE": "Enter max. percentage",
              "MIN_PERCENTAGE": "Enter min. percentage",
              "SECTION_NUMBER": "Enter your section number",
              "SELECT_SECTION": "Select section",
              "SELECT_SUBJECT": "Select subject",
              "SELECT_TEACHER": "Select teacher",
              "ZOOM_CLIENT_ID": "Enter zoom client id",
              "DEPARTMENT_NAME": "Enter department name",
              "LESSON_DURATION": "Enter duration",
              "SECTION_DETAILS": "Enter section details",
              "SELECT_END_TIME": "Select end time",
              "SMTP_FROM_EMAIL": "Enter From Email",
              "ZOOM_ACCOUNT_ID": "Enter zoom account id",
              "COURSE_FULL_NAME": "Enter course name",
              "DEPARTMNENT_CODE": "Enter department code",
              "EXAM_DESCRIPTION": "Enter exam description",
              "SELECT_ROLE_HERE": "Select role here",
              "CLASS_DESCRIPTION": "Enter class dscription",
              "SELECT_ISSUE_DATE": "Select issue date",
              "SELECT_START_TIME": "Select start time",
              "SELECT_RETURN_DATE": "Select return date",
              "ZOOM_CLIENT_SECRET": "Enter zoom client secret",
              "LIBRARY_CARD_NUMBER": "Enter library card number",
              "SECTION_DESCRIPTION": "Enter section description",
              "SELECT_CLASS_METHOD": "Select class method",
              "SELECT_FOR_EVERYONE": "Select for everyone",
              "SUBJECT_DESCRIPTION": "Enter subject description",
              "CATEGORY_DESCRIPTION": "Enter category description",
              "PARENT_CATEGORY_NAME": "Enter parent category name",
              "SELECT_BOOK_CATEGORY": "Select book category",
              "DEPARTMENT_DESCRIPTION": "Enter department description"
            },
            "LEAVE_REQUEST": {
              "NOT_FOUND": "Leave request not found.",
              "SOME_DELETED": "Some Leave request delete successfully.",
              "ALREADY_EXIST": "Leave request already exist.",
              "GET_SUCCESSFULLY": "Laeve request details get successfully.",
              "DELETED_SUCCESSFULLY": "Leave request delete successfully.",
              "UPDATED_SUCCESSFULLY": "Leave requst update successfully.",
              "GET_LIST_SUCCESSFULLY": "Leave request list get successfully."
            },
            "CPU_VALIDATION": {
              "VALID_STATUS": "Please enter valid status.",
              "NAME_REQUIRED": "Cpu is required.",
              "STATUS_REQUIRED": "Status of cpu is required."
            },
            "EMAIL_TEMPLATE": {
              "EDITED": "Email template edited successfully.",
              "CREATED": "Email template added successfully.",
              "DELETED": "Email template deleted successfully.",
              "DETAILS": "Email template fetched successfully.",
              "NOT_EXISTS": "Email template not found.",
              "TITLE_EXISTS": "This email template title already exists.",
              "ALL_EMAIL_TEMPLATE": "Get all email template successfully."
            },
            "PLAN_VALIDATOR": {
              "MODULES": "Modules id's required",
              "PLAN_TYPE": "Plan type  is required",
              "PLAN_TENURE": "Plan tenure required",
              "NAME_REQUIRED": "Plan name is required",
              "PRICE_REQUIRED": "Plan Price is required.",
              "CURRENCY_REQUIRED": "Plan currency is required"
            },
            "PUBLIC_HOLIDAY": {
              "LEAVE_GET": "Fetch Public holiday successfully.",
              "LEAVE_NOT_FOUND": "Public holiday not found.",
              "ADD_LEAVE_SUCCESS": "Public holiday added successfully.",
              "EDIT_LEAVE_SUCCESS": "Public holiday edited successfully.",
              "DELETE_LEAVE_SUCCESS": "Public holiday deleted successfully.",
              "GET_ALL_LEAVE_SUCCESS": "Fetch all Public holiday successfully."
            },
            "RAM_VALIDATION": {
              "VALID_STATUS": "Please enter valid status.",
              "NAME_REQUIRED": "Ram is required.",
              "STATUS_REQUIRED": "Status of ram is required."
            },
            "ZOOM_VALIDATOR": {
              "ZOOM_CLIENT_ID": "zoom client id name is required",
              "ZOOM_ACCOUNT_ID": "Zoom accoutn id is required",
              "ZOOM_CLIENT_SECRET": "Zoom client secret is required"
            },
            "ACKNOWLEDGEMENT": {
              "NOT_FOUND": "Acknowledgement not found",
              "ALREADY_EXIST": "Acknowledgement already Exists",
              "EXCEL_NOT_FOUND": "Acknowledgement Excel not found",
              "GET_SUCCESSFULLY": "Acknowledgement get successfully.",
              "NAME_ALREADY_EXIST":
                  "Acknowledgement name is already there please try with another Acknowledgement name",
              "CREATED_SUCCESSFULLY": "Acknowledgement created successfully.",
              "DELETED_SUCCESSFULLY": "Acknowledgement deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Acknowledgement updated successfully.",
              "GET_LIST_SUCCESSFULLY": "Acknowledgement list get successfully.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "Acknowledgement excel's json file created successfully"
            },
            "BOOK_VALIDATION": {
              "TITLE_REQUIRED": "book title is required",
              "PRICE_NUMERIC_ONLY": "book price should number only",
              "TOTAL_QUANTITY_REQUIRED": "book quantity required"
            },
            "CLASS_VALIDATOR": {
              "CLASS_NAME": "class name is required.",
              "DESCRIPTION": "class description is required."
            },
            "EMPLOYEE_STATUS": {
              "GET_DEPARTMENT": "Employee status details got successfully.",
              "GET_ALL_DEPARTMENT": "All employee status got successfully.",
              "CREATED_SUCCESSFULLY": "Employee status created successfully.",
              "DELETED_SUCCESSFULLY": "Employee status deleted successfully.",
              "DEPARTMENT_NOT_EXIST": "Employee status doesn't exist.",
              "UPDATED_SUCCESSFULLY": "Employee status updated successfully.",
              "EMPLOYEE_STATUS_ALREADY_EXIST": "Employee status already exists."
            },
            "FE_LIVE_CLASSES": {
              "LIVE_CLASSES": "Live Classes",
              "LIVE_CLASS_LIST": "Live Class List"
            },
            "FE_NOTICE_BOARD": {
              "NOTICES": "Notices",
              "ASSIGN_TO": "Assign To",
              "MY_NOTICE": "View Notice",
              "TITLE_VAL":
                  "Title must contain alphanumeric characters and may include dots, hyphens, underscores, or single spaces. It cannot start or end with a dot, hyphen, underscore, or space .",
              "TABLE_VIEW": "Switch to Calendar View",
              "EDIT_NOTICE": "Edit Notice",
              "LIST_NOTICE": "Notices List",
              "NOTICE_FILE": "Notice File",
              "VIEW_NOTICE": "View Notice",
              "NOTICE_BOARD": "Notice Board",
              "CALENDAR_VIEW": "Switch to Table View",
              "CREATE_NOTICE": "Create Notice",
              "DELETE_NOTICE": "Delete Notice",
              "DESCRIPTION_MAX":
                  "Description should not exceed 300 characters.",
              "CLASS_SECTION_REQ": "Class and Section is required*.",
              "NOTICE_TITLE_LIMIT": "Notice should not exceed 30 characters*.",
              "UPLOAD_NOTICE_FILE": "Notice file is required*.",
              "SELECT_CLASS_SECTION": "Select Class-Section",
              "ARE_YOU_DELETE_NOTICE":
                  "Are you sure you want to delete this Notice?."
            },
            "FE_OFFLINE_EXAM": {
              "EXAM": "Exam",
              "GRADE": "Grade",
              "RESULT": "Result",
              "EDIT_EXAM": "Edit Exam",
              "EXAM_NAME": "Exam Name",
              "VIEW_EXAM": "View Exam",
              "CREATE_EXAM": "Create Exam",
              "DELETE_EXAM": "Delete Exam",
              "EXAM_RESULT": "Exam Result",
              "MANAGE_EXAM": "Manage Exam",
              "TOTAL_MARKS": "Total Marks",
              "EXAM_DETAILS": "Exam Details",
              "OFFLINE_EXAM": "Examination",
              "EXAM_SCHEDULE": "Exam Schedule",
              "PASSING_MARKS": "Passing Marks",
              "MAX_PERCENTAGE": "Max. Percentage",
              "MIN_PERCENTAGE": "Min. Percentage",
              "OBTAINED_MARKS": "Obtained marks",
              "PUBLISH_RESULT": "Publish Result",
              "DELETE_SCHEDULE": "Delete exam schedule",
              "EDIT_MANAGE_EXAM": "Edit Manage Exam",
              "MANAGE_EXAM_LIST": "Manage Exam List",
              "MANAGE_EXAM_GRADE": "Manage Exam Grade",
              "UPLOAD_EXAM_MARKS": "Upload Exam Marks",
              "DELETE_MANAGE_EXAM": "Delete Manage Exam",
              "RESULT_NOT_PUBLISHED": "Result not published yet.",
              "EXAM_SCHEDULE_CREATED": "Exam Schedule Created",
              "EXAM_SCHEDULE_DETAILS": "Exam Schedule Details",
              "ARE_YOU_SURE_WANT_TO_DELETE":
                  "Are you sure you want to delete this exam schedule?",
              "ARE_YOU_SURE_WANT_TO_THIS_EXAM":
                  "Are you sure you want to delete this exam?",
              "ARE_YOU_SURE_WANT_TO_DELETE_GRADE":
                  "Are you sure want to delete this grade?",
              "ARE_YOU_SURE_WANTS_TO_PUBLISH_RESULT":
                  "Are you sure want to publish result?.",
              "ARE_YOU_SURE_WANT_DELETE_MANAGE_EXAM":
                  "Are you sure you want to delete this manage exam?."
            },
            "FE_SESSION_YEAR": {
              "SESSION_YEAR": "Session Year",
              "EDIT_SESSION_YEAR": "Edit Session Year",
              "VIEW_SESSION_YEAR": "View Session Year",
              "CREATE_SESSION_YEAR": "Create Session Year",
              "DELETE_SESSION_YEAR": "Delete Session Year",
              "SESSION_YEAR_DETAILS": "Session Year Details",
              "ARE_YOU_SURE_WANT_TO_DELETE_SESSION":
                  "Are you sure you want to delete this session year?"
            },
            "FE_SMTP_SETTING": {
              "SMTP_AUTH": "SMTP Auth",
              "SMTP_PORT": "SMTP Port",
              "FROM_EMAIL": "From Email",
              "SMTP_SECURE": "SMTP Secure",
              "SMTP_HOSTNANE": "SMTP Hostname",
              "SMTP_PASSWORD": "SMTP Password",
              "SMTP_USERNAME": "SMTP Username"
            },
            "FE_SUBSCRIPTION": {
              "PAID": "Paid",
              "PLAN": "Plan",
              "SR_NO": "SR No",
              "AMOUNT": "Amount",
              "BILLED": "Billed",
              "METHOD": "Method",
              "STATUS": "Status",
              "YEARLY": "Yearly",
              "INVOICE": "Invoice",
              "MONTHLY": "Monthly",
              "PACKAGE": "Package",
              "UPGRADE": "Upgrade",
              "QUARTELY": "Quarterly",
              "SUBSCRIBE": "Subscribe",
              "START_DATE": "Start Date",
              "DESCRIPTION": "Description",
              "EXPIRY_DATE": "Expiry Date",
              "MODULE_NAME": "Module Name",
              "CURRENT_PLAN": "Current Plan",
              "LAST_UPGRADE": "Last Upgrade",
              "PACKAGE_NAME": "Package Name",
              "PLAN_UPGRADE": "Plan Upgrade",
              "SUBSCRIPTION": "Subscription",
              "ORDER_SUMMARY": "Order Summary",
              "PLAN_PURCHASE": "Plan Purchase",
              "PURCHASE_DATE": "Purchase Date",
              "BILLING_PERIOD": "Billing Period",
              "PAYMENT_METHOD": "Payment Method",
              "PAYMENT_DETAILS": "Payment details",
              "PAYMENT_HISTORY": "Payment History",
              "CURRENT_PLAN_LIST": "Current Plan List",
              "SUBSCRIPTION_LIST": "Subscription List",
              "MODULE_PERMISSIONS": "Module Permissions",
              "YOY_ILL_BE_CHARGED": "You'll be charged",
              "CURRENT_PLAN_DETAILS": "Current Plan Details",
              "PLAN_INTERVAL_PERIOD": "Plan Interval Period",
              "SUBSCRIPTION_DETAILS": "Subscription Details",
              "CHOOSE_PAYMENT_METHOD": "Choose Payment Method",
              "NO_PLANS_ARE_AVAILABLE": "No plans are available.",
              "UNTIL_YOU_CANCEL_THE_SUBSCRIPTION":
                  "until you cancel the subscription.",
              "PAYMENT_SUCCESSFULL_SUBSCRIPTION_ACTIVE":
                  "Payment Successful! Subscription active."
            },
            "MAKE_VALIDATION": {
              "VALID_STATUS": "Please enter valid status.",
              "NAME_REQUIRED": "Make name is required.",
              "STATUS_REQUIRED": "Status of make name is required."
            },
            "ROLE_PERMISSION": {
              "ADDED": "Role permission added successfully.",
              "FETCH": "Role permission fetched Successfully",
              "EDITED": "Role permission edited successfully.",
              "DELETED": "Role permission deleted successfully.",
              "UPDATED": "Role permission updated successfully.",
              "NOT_FOUND": "Role permission Not Found",
              "ALREADY_EXIST": "Role permission already exist."
            },
            "ROOMS_VALIDATOR": {
              "Type_REQUIRED": "Room type is required.",
              "CAPACITY_REQUIRED": "Room capacity is required.",
              "FACILITY_REQUIRED": "Room facility is required.",
              "LOCATION_REQUIRED": "Room location is required.",
              "ROOM_NUMBER_REQUIRED": "Room number is required."
            },
            "TASK_VALIDATION": {
              "INVALID_CR_ID": "Please Enter valid CR ID.",
              "INVALID_PM_ID": "Please Enter valid PM ID.",
              "INVALID_PROJECT_ID": "Please Enter valid Project ID.",
              "TASK_DESC_REQUIRED": "Task Description is required.",
              "TASK_NAME_REQUIRED": "Task Name is required.",
              "TASK_TYPE_REQUIRED": "Task Type is required.",
              "INVALID_TASK_STATUS": "Please Enter valid task status ID.",
              "PROJECT_ID_REQUIRED": "Project id is required.",
              "TASK_HOURS_REQUIRED": "Task Hours is required.",
              "TASK_STATUS_REQUIRED": "Task Status is required.",
              "TASK_ENDDATE_REQUIRED": "Task End Date is required.",
              "TASK_STARTDATE_REQUIRED": "Task Start Date is required.",
              "TASK_ASSIGNED_USER_REQUIRED": "Task assigned users are required."
            },
            "USER_VALIDATION": {
              "VALID_ID": "Please enter valid Id.",
              "EMAIL_VALID": "Please enter valid email",
              "ID_REQUIRED": "Id is required.",
              "VALID_EMAIL": "Please enter valid email.",
              "VALID_STATUS": "Please enter valid status.",
              "ZIP_REQUIRED": "Zip code is required*.",
              "CITY_REQUIRED": "City is required",
              "PASSWORD_SIZE": "Password must have atleast 6 letters.",
              "EMAIL_REQUIRED": "Email is required.",
              "STATE_REQUIRED": "State is required",
              "LAST_NAME_VALID": "Please enter valid last name.",
              "STATUS_REQUIRED": "Status is required.",
              "VALID_USER_TYPE": "Please enter valid user type.",
              "gender_REQUIRED": "gender is required",
              "ADDRESS_REQUIRED": "Address is required.",
              "COUNTRY_REQUIRED": "Country is required",
              "FIRST_NAME_VALID": "Please enter valid first name",
              "VALID_DEPARTMENT": "Please enter valid Department.",
              "LASTNAME_REQUIRED": "Last name is required.",
              "NEW_PASSWORD_SIZE": "New Password must have atleast 6 letters.",
              "OLD_PASSWORD_SIZE": "Old Password must have atleast 6 letters.",
              "PASSWORD_REQUIRED": "Password is required.",
              "USERTYPE_REQUIRED": "Please Enter valid User_type.",
              "VALID_PLATFORM_OS":
                  "Platform OS must be 1 for android, 2 for ios.",
              "FIRSTNAME_REQUIRED": "First name is required.",
              "LAST_NAME_REQUIRED": "Last name is required.",
              "USER_TYPE_REQUIRED": "User Type is required.",
              "CONTACT_NUMBER_SIZE": "Contact Number must have 10 letters.",
              "DEPARTMENT_REQUIRED": "Department is Required.",
              "FIRST_NAME_REQUIRED": "First name is required.",
              "PASSWORD_VALIDATION":
                  "Password should be combination of one uppercase, one lower case, one special character, one digit and minimum 6.",
              "CONTACT_NUMBER_VALID": "Please enter valid Contact number.",
              "VALID_EMPOYEE_STATUS": "Please enter valid employee status.",
              "CONFIRM_PASSWORD_SIZE":
                  "Confirm Password must have atleast 6 letters.",
              "NEW_PASSWORD_REQUIRED": "New Password is required.",
              "OLD_PASSWORD_REQUIRED": "Old Password is required.",
              "USERTYPE_NAME_REQUIRED": "Please enter user type name.",
              "VALID_REPORTING_PERSON": "Please enter valid reporting person.",
              "REFRESH_TOKENS_REQUIRED": "Refresh token is required.",
              "EMPLOYEE_STATUS_REQUIRED": "Employee Status is required.",
              "CONFIRM_PASSWORD_REQUIRED": "Confirm Password is required.",
              "REPORTING_PERSON_REQUIRED": "Reporting person is Required."
            },
            "WEBSITE_SETTING": {
              "NOT_FOUND": "Website Setting not found.",
              "GET_SUCCESSFULLY": "Website Setting get successfully.",
              "CREATED_SUCCESSFULLY": "Website Setting created successfully.",
              "UPDATED_SUCCESSFULLY": "Website Setting updated successfully."
            },
            "ASSET_VALIDATION": {
              "CPU_REQUIRED": "Cpu is required.",
              "RAM_REQUIRED": "Ram is required.",
              "DATE_REQUIRED": "Date is required.",
              "VALID_ASSETTYPE": "Please enter valid asset type.",
              "INVALID_MAKE_NAME": "Please enter a valid make id.",
              "INVALID_USER_NAME": "Please enter a valid user id.",
              "INVALID_ASSET_NAME": "Please enter a valid asset id.",
              "MAKE_NAME_REQUIRED": "Make name is required.",
              "USER_NAME_REQUIRED": "Username is required.",
              "ASSET_CODE_REQUIRED": "Asset code is required.",
              "ASSET_TYPE_REQUIRED": "Asset type is required.",
              "INVALID_VENDOR_NAME": "Please enter a valid vendor id.",
              "INVOICE_NO_REQUIRED": "Invoice number is required.",
              "MAC_ADRESS_REQUIRED": "Mac address is required.",
              "MODEL_NAME_REQUIRED": "Model name is required.",
              "VENDOR_NAME_REQUIRED": " Vendor name is required.",
              "COMPANY_NAME_REQUIRED": "Company name is required."
            },
            "CLASS_TIME_TABLE": {
              "GET_ALL": "Class Time Table list get successfully.",
              "NOT_EXIST": "Class Time Table doesn't exist.",
              "NOT_FOUND": "Class Time Table not found.",
              "GET_DETAILS": "Class Time Table details got successfully.",
              "ALREADY_EXIST": "Class Time Table already exists.",
              "ROOM_NOT_AVAILABLE": "Room is not available.",
              "CREATED_SUCCESSFULLY": "Class Time Table created successfully.",
              "DELETED_SUCCESSFULLY": "Class Time Table deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Class Time Table updated successfully.",
              "SECTION_ALREADY_OCCUPIED": "Section is already assigned class.",
              "TEACHER_ALREADY_OCCUPIED": "Teacher is already assigned class."
            },
            "COURSE_VALIDATOR": {
              "VISIBILITY": "Course visibility is required",
              "NAME_REQUIRED": "COURSE name is required",
              "STATUS_REQUIRED": "COURSE status is required",
              "COURSE_IMAGE_REQUIRED": "Course image is required"
            },
            "FE_CLASS_ROUTINE": {
              "CLASS_ROUTINE": "Class Routine",
              "MY_CLASS_ROUTINE": "My Class Routine",
              "ADD_CLASS_ROUTINE": "Add Class Routine",
              "CLASS_ROUTIN_LIST": "Class Routine List",
              "END_TIME_REQUIRED": "End Time Required*.",
              "CLASS_ROUTINE_LIST": "Class Routine List",
              "EDIT_CLASS_ROUTINE": "Edit Class Routine",
              "SELECT_DAY_OF_WEEK": "Select Day of Week",
              "START_TIME_REQUIRED": "Start Time Required*.",
              "DELETE_CLASS_ROUTINE": "Delete Class Routine",
              "SELECT_PLAC_DAY_OF_WEEK": "Select day of week",
              "NO_CLASS_ROUTINE_AVAILABLE": "No Class Routine Available !!!",
              "ARE_YOU_SURE_WANT_TO_DELETE_THIS_CLASSROUTINE":
                  "Are you sure you want to delete this Class Routine?"
            },
            "LEAVE_ISSUE_TYPE": {
              "CREATED": "Leave issue type created successfully.",
              "FETCHED": "Leave issue types fetched successfully.",
              "NOT_FOUND": "Leave issue types not found.",
              "NOT_DELETED": "Leave issue type not deleted relation exists.",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "ALREADY_EXIST": "Leave issue type already exist.",
              "DELETED_SUCCESSFULLY": "Leave issue type deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Leave issue type update successfully."
            },
            "LEAVE_VALIDATION": {
              "DATE_SIZE": "Enter 13 digit date string.",
              "REASON_SIZE": "Leave reason is minimum 6 charcter long",
              "REASON_REQUIRED": "Leave reason is required.",
              "STATUS_REQUIRED": "Leave status is required.",
              "END_DATE_REQUIRED": "End date is required.",
              "INVALID_DAY_SHIFT": "Plese enter valid day shift.",
              "DAY_SHIFT_REQUIRED": "Day shift is required.",
              "START_DATE_REQUIRED": "Start date is required.",
              "INVALID_LEAVE_STATUS": "Invalid leave status."
            },
            "STRIPE_VALIDATOR": {
              "PUBLIC_KEY_REQUIRED": "public key name is required",
              "SECRET_KEY_REQUIRED": "secret key name is required",
              "PUBLIC_LIVE_KEY_REQUIRED": "public live key name is required",
              "SECRET_LIVE_KEY_REQUIRED": "secret live key name is required"
            },
            "CLIENT_VALIDATION": {
              "NUMBER_SIZE": "Contact Number Must Have 10 Degits",
              "VALID_EMAIL": "Please enter valid email.",
              "PASSWORD_SIZE": "Password must have atleast 6 letters.",
              "EMAIL_REQUIRED": "Email is required.",
              "NUMBER_REQUIRED": "Contact Number is required.",
              "COUNTRY_REQUIRED": "Country Name is required.",
              "PASSWORD_REQUIRED": "Password is required.",
              "PASSWORD_VALIDATION":
                  "Password should be combination of one uppercase, one lower case, one special character, one digit and minimum 6.",
              "COMMUNICATION_TOOLS_REQUIRED":
                  "At least One Communication tool Name & Id required."
            },
            "FE_EMAIL_TEMPLATE": {
              "BODY": "Body",
              "DYAMIC_VALUES": "Dynamic Values",
              "EMAIL_TEMPLATE": "Email Template"
            },
            "PERMISSION_ENTITY": {
              "ADDED": "Permission entity added successfully.",
              "FETCH": "Permission entity fetched Successfully",
              "EDITED": "Permission entity edited successfully.",
              "DELETED": "Permission entity deleted successfully.",
              "UPDATED": "Permission entity updated successfully.",
              "NOT_FOUND": "Permission entity Not Found",
              "ALREADY_EXIST": "Permission entity already exist."
            },
            "SUPER_ADMIN_STAFF": {
              "NOT_FOUND": "Super Admin Staff not found",
              "EXCEL_NOT_FOUND": "Super Admin Staff Excel not found",
              "GET_SUCCESSFULLY": "Super Admin Staff get successfully.",
              "IMPORT_SUCESSFULLY": "Super Admin Staff imported succesfully.",
              "CREATED_SUCCESSFULLY": "Super Admin Staff created successfully.",
              "DELETED_SUCCESSFULLY": "Super Admin Staff deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Super Admin Staff updated successfully.",
              "GET_LIST_SUCCESSFULLY":
                  "Super Admin Staff list get successfully.",
              "EXCEL_DEPARTMENT_ISSUE": "Provided Department is not exist",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "Super Admin Staff in excel sheet already exist"
            },
            "TICKET_VALIDATION": {
              "STATUS_REQUIRED": "Ticket Status is required",
              "DESRIPTION_REQUIRED": "Ticket description is required.",
              "ISSUE_TYPE_REQUIRED": "Issue type is required."
            },
            "VENDOR_VALIDATION": {
              "VALID_STATUS": "Please enter valid status.",
              "NAME_REQUIRED": "Make vendor is required.",
              "STATUS_REQUIRED": "Status of vendor name is required."
            },
            "COMMENT_VALIDATION": {
              "Ticket_ID_REQUIRED": "Ticket description is required."
            },
            "COMPANY_VALIDATION": {
              "VALID_STATUS": "Please enter valid status.",
              "NAME_REQUIRED": "Company name is required.",
              "STATUS_REQUIRED": "Status of company is required."
            },
            "FE_SYSTEM_SETTINGS": {
              "SR_NO": "SR NO",
              "TITLE": "Title",
              "TOPIC": "Topic",
              "SETTINGS": "Settings",
              "SMTP_HOST": "HOST*",
              "SMTP_PORT": "PORT*",
              "HOST_VIDEO":
                  "Host video (Start video when participants join meeting).",
              "MEETING_ID": "Meeting Id",
              "SMTP_EMAIL": "EMAIL*",
              "JOIN_METTING": "Join meeting before host start the meeting.",
              "LIVE_CLASSES": "Live Classes",
              "SMTP_SETTING": "SMTP Setting",
              "ZOOM_SETTING": "Zoom Setting",
              "SMTP_PASSWORD": "PASSWORD*",
              "SMTP_USERNAME": "USERNAME*",
              "ADD_LIVE_CLASS": "Add Live Class",
              "ZOOM_CLIENT_ID": "Zoom Client Id",
              "LIVE_CLASS_LIST": "Live Class List",
              "SYSTEM_SETTINGS": "System Settings",
              "ZOOM_ACCOUNT_ID": "Zoom Account Id",
              "MUTE_PARTICIPATS": "Mute participants upon entry.",
              "ZOOM_ADD_OWN_API": "Zoom Add Own API",
              "EDIT_LIVE_CLASSES": "Edit Live Class",
              "LIVE_CLASS_METHOD": "Live Class Method",
              "PARTICIPATE_VIDEO":
                  "Participants video (Start video when participants join meeting).",
              "LIVE_CLASS_SETTING": "Live Class Setting",
              "ZOOM_CLIENT_SECRET": "Zoom Client Secret",
              "DELETE_LIVE_CLASSES": "Delete Live Class",
              "ARE_YOU_SURE_DELETE_CLASS":
                  "Are you sure you want to delete this live class?."
            },
            "PROJECT_VALIDATION": {
              "FILE_REQUIRED": "Project documents required.",
              "INVALID_TL_ID": "Please enter valid team leader id.",
              "PM_ID_REQUIRED": "Project Manager id required.",
              "TL_ID_REQUIRED": "Team leader id required.",
              "INVALID_CLIENT_ID": "Please enter valid client id.",
              "CLIENT_ID_REQUIRED": "Client id required.",
              "PROJECT_NAME_VALID": "Please enter valid project name.",
              "PROJECT_NAME_REQUIRED": "Project Name is required.",
              "PROJECT_TYPE_REQUIRED": "Project Type is required.",
              "PROJECT_HOURS_REQUIRED": "Project Hours is required.",
              "PROJECT_DESCRIPTION_VALID":
                  "Please enter valid project description.",
              "PROJECT_DESCRIPTION_REQUIRED": "Project Description is required."
            },
            "STUDENT_EXAM_GRADE": {
              "AVAILABLE": "Available",
              "NOT_FOUND": "Exam Schedule not found",
              "NOT_DELETED":
                  "Exam Schedule not deleted due to dependency on other modules",
              "SOME_DELETED": "Some Exam Schedule deleted",
              "ALREADY_EXIST": "Exam Schedule already Exists",
              "GET_SUCCESSFULLY": "Exam Schedule get successfully.",
              "CREATED_SUCCESSFULLY": "Exam Schedule created successfully.",
              "DELETED_SUCCESSFULLY": "Exam Schedule deleted successfully.",
              "UPDATED_SUCCESSFULLY": "Exam Schedule updated successfully.",
              "BETWEEN_ALREADY_EXIST":
                  "Exam Schedule for percentage is already there.",
              "GET_LIST_SUCCESSFULLY": "Exam Schedule list get successfully."
            },
            "FEEDBACK_VALIDATION": {
              "STATUS_INVALID": "Please enter a valid status.",
              "TITLE_REQUIRED": "Ticket title is required.",
              "DESCRIPTION_REQUIRED": "Ticket Description is required.",
              "INVALID_FEEDBACK_TYPE": "Please enter a valid type.",
              "FEEDBACK_TYPE_REQUIRED": "Ticket type is required."
            },
            "FE_ACCOUNT_SETTINGS": {
              "EMAIL": "Email",
              "PROFILE": "Personal Info",
              "PASSWORD": "Password",
              "MY_PROFILE": "My Profile",
              "YOUR_PHOTO": "Your Photo",
              "NEW_PASSWORD": "New Password",
              "SAVE_PROFILE": "Save Profile",
              "UPDATE_PASSWORD": "Update Password",
              "ACCOUNT_SETTINGS": "Account Settings",
              "CONFIRM_PASSWORD": "Confirm New Password",
              "CURRENT_PASSWORD": "Current Password",
              "PHOTO_DESCRIPTION": "This will be displayed on your profile."
            },
            "FE_LEAVE_MANAGEMENT": {
              "DAYS": "Days",
              "ROLE": "Role",
              "USER": "Users",
              "EMAIL": "Email",
              "LEAVE": "Leave",
              "RESET": "Reset",
              "REASON": "Reason",
              "USERID": "UserId",
              "COMMENTS": "Comments",
              "DOCUMENT": "Document",
              "END_DATE": "End Date",
              "APPLICANT": "Applicant",
              "REVIEW_BY": "Reviewed By",
              "APPLY_DATE": "Apply Date",
              "ATTACHMENT": "Attachment",
              "DATE_RANGE": "Select Date in a Range",
              "ENTER_DAYS": "Enter Days",
              "LEAVE_TYPE": "Leave Type",
              "REASON_REQ": "Reason is required*.",
              "START_DATE": "Start Date",
              "USER_LEAVE": "User Leaves",
              "APPLY_LEAVE": "Apply Leave",
              "DATE_OF_END": "Date of end",
              "ASSIGN_LEAVE": "Assign Leave",
              "END_DATE_REQ": "Please select end date.",
              "ENTER_REASON": "Enter reason",
              "LEAVES_TAKEN": "Leaves Taken",
              "SELECT_USERS": "Select User",
              "TOTAL_LEAVES": "Total Leaves",
              "APPROVE_LEAVE": "Approve",
              "DATE_OF_START": "Date of start",
              "DAYS_REQURIED": "Days is required*.",
              "LEAVE_REQUEST": "Leave Request",
              "USER_STAFF_ID": "Student_id/Staff_id",
              "APPROVED_LEAVE": "Approved Leaves",
              "NUMBER_OF_DAYS": "Number Of Days",
              "REJECTED_LEAVE": "Rejected Leaves",
              "START_DATE_REQ": "Please select start date.",
              "EDIT_LEAVE_TYPE": "Edit Leave Type",
              "REQUESTED_LEAVE": "Requested Leaves",
              "VIEW_LEAVE_TYPE": "View Leave Type",
              "EDIT_APPLY_LEAVE": "Edit Applied Leave",
              "EDIT_USER_LEAVES": "Edit User Leaves",
              "ENTER_LEAVE_TYPE": "Enter Leave Type",
              "LEAVES_REMAINING": "Leaves Remaining",
              "LEAVE_MANAGEMENT": "Leave Management",
              "NUMBER_OF_LEAVES": "Number of Leaves",
              "VIEW_APPLY_LEAVE": "View Applied Leave",
              "VIEW_USER_LEAVES": "View User Leaves",
              "ALL_LEAVE_REQUEST": "All Leave Requests",
              "CREATE_LEAVE_TYPE": "Create Leave Type",
              "DELETE_LEAVE_TYPE": "Delete Leave Type",
              "EDIT_ASSIGN_LEAVE": "Edit Assign Leave ",
              "LEAVE_TYPE_SELECT": "Select leave type",
              "MAX_DAYS_REQUIRED": "Days must be less than or equal to 100*.",
              "USER_TYPE_MESSAGE": "User is required*.",
              "VIEW_ASSIGN_LEAVE": "View Assign Type",
              "DELETE_APPLY_LEAVE": "Delete Applied Leave",
              "LEAVE_ROLE_MESSAGE": "Role is required*.",
              "LEAVE_TYPE_DETAILS": "Leave Type Details",
              "LEAVE_TYPE_MESSAGE": "Leave type is required*.",
              "NO_NEGATIVE_VALUES": "No negative value allowed",
              "APPLY_LEAVE_DETAILS": "Applied Leave Details",
              "DELETE_ASSIGN_LEAVE": "Delete Assign Leave",
              "ASSIGN_LEAVE_DETAILS": "Assign Leave Details",
              "DELETE_LEAVE_REQUEST": "Delete Leave request",
              "APPROVE_REJECT_LEAVES": "Approve/Reject Leaves",
              "DAYS_REQURIED_INTEGER": "Days must be a non-zero integer*.",
              "LEAVE_TYPE_MAX_MESSAGE":
                  "Leave type should not exceed 25 characters.",
              "NUMBER_OF_ASSIGN_LEAVE": "Number of Assign Leaves",
              "ARE_YOU_SURE_WANT_DELETE_LEAVE_TYPE":
                  "Are you sure you want to delete leave type?",
              "ARE_YOU_SURE_WANT_DELETE_APPLY_LEAVE":
                  "Are you sure you want to delete Applied leave?",
              "ARE_YOU_SURE_WANT_DELETE_ASSIGN_LEAVE":
                  "Are you sure you want to delete Assign leave?",
              "ARE_YOU_SURE_WANT_DELETE_LEAVE_REQUEST":
                  "Are you sure you want to delete leave request?"
            },
            "FE_WEBSITE_SETTINGS": {
              "FAVICON": "Favicon",
              "DARK_LOGO": "Dark Logo",
              "ENABLE_RTL": "Enable RTL",
              "LIGHT_LOGO": "Light Logo",
              "TITLE_TEXT": "Title Text",
              "DARK_LAYOUT": "Dark Layout",
              "FOOTER_TEXT": "Footer Text",
              "LAYOUT_SETTONGS": "Layout Settings",
              "CHOOSE_FILE_HERE": "Choose File Here",
              "DEFAULT_LANGUAGE": "Default Language",
              "WEBSITE_SETTINGS": "Website Settings"
            },
            "ORGANIZATION_BRANCH": {
              "GET_ALL": "Organization branch list get successfully..",
              "NOT_EXIST": "Organization branch  doesn't exist.",
              "NOT_FOUND": "Organization branch not found.",
              "GET_DETAILS": "Organization branch details got successfully.",
              "ALREADY_EXIST": "Organization branch already exists.",
              "NAME_ALREADY_EXIST":
                  "Organization Branch name is already there please try with another Organization Branch  name",
              "CREATED_SUCCESSFULLY":
                  "Organization branch created successfully.",
              "DELETED_SUCCESSFULLY":
                  "Organization branch deleted successfully.",
              "UPDATED_SUCCESSFULLY":
                  "Organization branch updated successfully.",
              "ORG_EMAIL_ALREADY_EXIST":
                  "Organization email already exist,please use different email",
              "MAX_BRANCH_LIMIT_REACHED":
                  "Max Branch Limit Reached for this plan"
            },
            "S3_BUCKET_VALIDATOR": {
              "ACCESS_KEY_REQUIRED": "Access key is required.",
              "SECRET_KEY_REQUIRED": "Secret key is required.",
              "BUCKET_NAME_REQUIRED": "Bucket name is required.",
              "REGION_NAME_REQUIRED": "region name is required."
            },
            "CATEGORIES_VALIDATOR": {
              "NAME_REQUIRED": "Categories name is required",
              "STATUS_REQUIRED": "Categories status is required",
              "CATEGORIES_IMAGE": "Categories image is required"
            },
            "DEPARTMENT_VALIDATOR": {
              "HOD_REQUIRED": "head of department is required.",
              "NAME_REQUIRED": "Name is required.",
              "COURSE_REQUIRED": "Course is required.",
              "STATUS_REQUIRED": "Status is required.",
              "DESCRIPTION_REQUIRED": "Description is required."
            },
            "ORGANIZATION_SECTION": {
              "GET_ALL": "Organization section list get successfully..",
              "NOT_EXIST": "Organization section doesn't exist.",
              "NOT_FOUND": "Organization section not found.",
              "GET_DETAILS": "Organization section details got successfully.",
              "NOT_DELETED":
                  "Organization section not deleted relation exists.",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "ALREADY_EXIST": "Organization section already exists.",
              "CLASS_ID_REQUIRED": "Class id required for assigning teacher",
              "GET_SECTION_CLASS": "class's section get successfully",
              "NAME_ALREADY_EXIST":
                  "Organization Section name is already there please try with another Organization Section  name",
              "GET_SECTION_SUBJECT": "Subject section wise get successfully.",
              "GET_SECTION_TEACHER": "Teacher section wise get successfully.",
              "CREATED_SUCCESSFULLY":
                  "Organization section created successfully.",
              "DELETED_SUCCESSFULLY":
                  "Organization section deleted successfully.",
              "UPDATED_SUCCESSFULLY":
                  "Organization section updated successfully.",
              "GET_SECTION_BY_TEACHER": "Section List get successfully.",
              "SUBJECT_ASSIGN_SUCCESS": "Subject assigned successfully.",
              "TEACHER_ASSIGN_SUCCESS": "Teacher assigned successfully.",
              "GET_ALL_SECTION_SUBJECT":
                  "Subject list section wise get successfully.",
              "GET_ALL_SECTION_TEACHER":
                  "Teacher list section wise get successfully.",
              "STUDENT_GET_SUCCESSFULLY":
                  "Student section wise get successfully",
              "UPDATE_SUBJECT_ASSIGN_SUCCESS":
                  "Section subject updated successfully.",
              "UPDATE_TEACHER_ASSIGN_SUCCESS":
                  "Section teacher updated successfully.",
              "SECTION_SUBJECT_ALREADY_ASSIGN":
                  "This section have already assigned Subject.",
              "SECTION_TEACHER_ALREADY_ASSIGN":
                  "This section have already assigned Teacher.",
              "SECTION_SUBJECT_DELETED_SUCCESSFULLY":
                  "Section's subject deleted successfully.",
              "SECTION_TEACHER_DELETED_SUCCESSFULLY":
                  "Section's teacher deleted successfully."
            },
            "ORGANIZATION_SUBJECT": {
              "GET_ALL": "Organization subject list get successfully..",
              "NOT_EXIST": "Organization subject doesn't exist.",
              "NOT_FOUND": "Organization subject not found.",
              "GET_DETAILS": "Organization subject details got successfully.",
              "NOT_DELETED":
                  "Organization subject not deleted relation exists.",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "ALREADY_EXIST": "Organization subject already exists.",
              "CODE_ALREADY_EXIST": "Organization subject code already exists.",
              "CREATED_SUCCESSFULLY":
                  "Organization subject created successfully.",
              "DELETED_SUCCESSFULLY":
                  "Organization subject deleted successfully.",
              "UPDATED_SUCCESSFULLY":
                  "Organization subject updated successfully."
            },
            "TIMESHEET_VALIDATION": {
              "DATE_REQUIRED": "Timesheet date is required.",
              "INVALID_TASK_ID": "Invalid task id.",
              "TASK_ID_REQUIRED": "Task id is required.",
              "INVALID_PROJECT_ID": "Invalid project id.",
              "PROJECT_ID_REQUIRED": "Project id is required.",
              "TIMESHEET_HOURS_REQUIRED": "Timesheet hours is required."
            },
            "ASSET_TYPE_VALIDATION": {
              "VALID_STATUS": "Please enter valid status.",
              "NAME_REQUIRED": "Asset type name is required.",
              "STATUS_REQUIRED": "Status of asset type is required."
            },
            "ASSIGNMENT_SUBMISSION": {
              "NOT_FOUND": "Assignment submission  not found",
              "NOT_DELETED":
                  "Assignment submission not deleted due to dependency on other modules",
              "SOME_DELETED": "Some Assignment submission deleted",
              "ALREADY_EXIST": "Assignment submission  already Exists",
              "GET_SUCCESSFULLY": "Assignment submission  get successfully.",
              "NAME_ALREADY_EXIST":
                  "Assignment submission  name is already there please try with another Assignment submission  name",
              "CREATED_SUCCESSFULLY":
                  "Assignment submission added successfully.",
              "DELETED_SUCCESSFULLY":
                  "Assignment submission  deleted successfully.",
              "UPDATED_SUCCESSFULLY":
                  "Assignment submission  updated successfully.",
              "GET_LIST_SUCCESSFULLY":
                  "Assignment submission  list get successfully.",
              "ASSIGNMENT_SUBMISSION_ASSESMENTED":
                  "Assignment submission assesmented/"
            },
            "FE_LIBRARY_MANAGEMENT": {
              "DOB": "DOB",
              "BOOK": "Book",
              "FINE": "Fine",
              "NAME": "Name",
              "ROLE": "Role",
              "PRICE": "Price",
              "SR_NO": "Sr no",
              "AUTHOR": "Author",
              "REMARK": "Remark",
              "APPROVE": "Approve",
              "EDITION": "Edition",
              "ADD_BOOK": "Add Book",
              "CATEGORY": "Category",
              "RETURNED": "Returned",
              "EDIT_BOOK": "Edit Book",
              "POST_DATE": "Post Date",
              "PUBLISHER": "Publisher",
              "USER_NAME": "User Name",
              "VIEW_BOOK": "View Book",
              "BOOK_ISSUE": "Book Issue",
              "BOOK_TITLE": "Book Title",
              "CREATED_AT": "Created At",
              "ISSUE_BOOK": "Issue Book",
              "ISSUE_DATE": "Issue Date",
              "STAFF_LIST": "Staff list",
              "ADD_STUDENT": "Add Student",
              "BOOK_NUMBER": "Book Number",
              "COVER_IMAGE": "Cover Image",
              "DELETE_BOOK": "Delete Book",
              "DESCRIPTION": "Description",
              "RETURN_DATE": "Return Date",
              "SELECT_BOOK": "Select Book",
              "BOOK_DETAILS": "Book Details",
              "BOOK_ISBN_NO": "Book ISBN No",
              "BOOK_REQUEST": "Book Request",
              "ISSUED_BOOKS": "Issued Books",
              "REQUEST_BOOK": "Request Book",
              "RETURNE_BOOK": "Return Book",
              "STUDENT_NAME": "Student name",
              "USER_DETAILS": "User Details",
              "BOOK_CATEGORY": "Book Category",
              "CATEGORY_NAME": "Category Name",
              "ISSUED_COPIES": "Issued Copies",
              "PURCHASE_DATE": "Purchase Date",
              "STAFF_MEMBERS": "Staff Members",
              "LIBRARY_STATUS": "Library-status",
              "TOTAL_QUANTITY": "Total Quantity",
              "ADD_STAFF_MEMBER": "Add Staff Member",
              "ISSUED_BOOK_LIST": "Issued Book",
              "ADD_BOOK_CATEGORY": "Add Book Category",
              "ADD_LIBRAY_NUMBER": "Add Library number",
              "BOOK_CATEGORY_NAME": "Book Category Name",
              "EDIT_BOOK_CATEGORY": "Edit Book Category",
              "EDIT_LIBRAY_NUMBER": "Edit Library number",
              "LIBRARY_MANAGEMENT": "Library Management",
              "VIEW_BOOK_CATEGORY": "view Book Category",
              "LIBRARY_CARD_NUMBER": "Library card number",
              "DELETE_BOOK_CATEGORY": "Delete Book Category",
              "SELECT_BOOK_CATEGORY": "Select Book Category",
              "ARE_YOU_SURE_WANT_TO_DELETE_THIS_BOOK":
                  "Are you sure you want to delete this book?",
              "ARE_YOU_SURE_WANT_TO_DELETE_THIS_CATEGORY":
                  "Are you sure you want to delete this Category?"
            },
            "ISSUE_TYPE_VALIDATION": {
              "NAME_REQUIRED": "Issue type title is required."
            },
            "FE_EMAIL_NOTIFICATIONS": {
              "MESSAGE": "Message",
              "TEMPLATE": "Template",
              "TEMPLATES": "Templates",
              "SELECT_TYPE": "Select type",
              "CAMPAIGN_NAME": "Campaign Name",
              "EDIT_TEMPLATE": "Edit Template",
              "EMAIL_SUBJECT": "Email Subject",
              "MESSAGE_LIMIT": "Message must not exceed 500 characters*.",
              "SELECT_BRANCH": "Select branch",
              "SUBJECT_LIMIT": "Subject must not exceed 150 characters*.",
              "TEMPLATE_NAME": "Template Name",
              "VIEW_TEMPLATE": "View Template",
              "TYPE_TO_SEARCH": "Type to search...",
              "CREATE_TEMPLATE": "Create Template",
              "DELETE_TEMPLATE": "Delete Template",
              "DELETE_TEPPLATE":
                  "Are you sure you want to delete this template?",
              "SELECT_TEMPLATE": "Select template",
              "MESSAGE_REQUIRED": "Message is required*.",
              "SUBJECT_VALIDATION":
                  "Subject must contain alphanumeric characters and may include dots, hyphens, underscores. special characters are not allowed.",
              "CAMPAIGN_NAME_LIMIT":
                  "Campaign name should not exceed 30 characters*.",
              "SUBJECT_PLACEHOLDER": "Enter email subject",
              "CAMPAIGN_NAME_REQUIRED": "Campaign Name Required",
              "CAMPAIGN_NAME_VALIDATION":
                  "Campaign name must contain alphanumeric characters and may include dots, hyphens, underscores. special characters are not allowed.",
              "SEND_EMAIL_NOTIFICATIONS": "Send Email Notifications",
              "CAMPAIGN_NAME_PLACEHOLDER": "Enter campaign name",
              "EMAIL_NOTIFICATION_TEMPLATE": "Email Notification Template",
              "ARE_YOU_SURE_WANT_TO_DELETE_TEMPLATE":
                  "Are you sure you want to delete this template?"
            },
            "FE_ROLE_AND_PERMISSION": {
              "READ": "Read",
              "TOTAL": "Total",
              "USERS": "users",
              "WRITE": "Write",
              "CENCEL": "Cancel",
              "DELETE": "Delete",
              "UPDATE": "Update",
              "EDIT_ROLE": "Edit Role",
              "EDIT_USER": "Edit User Permission",
              "ROLE_ACCESS": "Role Access",
              "USER_ACCESS": "User Access",
              "NO_ROLE_PERMISSION":
                  "This role currently has no assigned modules or permissions.",
              "ROLE_AND_PERMISSION": "Roles-Permissions",
              "UPDATE_ROLE_PERMISSION": "Update Role Permission",
              "UPDATE_USER_PERMISSION": "Update User Permission"
            },
            "ORGANIZATION_VALIDATION": {
              "VALID_EMAIL": "Please enter valid email",
              "NAME_REQUIRED": "Organization name is required",
              "EMAIL_REQUIRED": "Email is required.",
              "VALID_PHONE_NO": "Please enter valid phone no"
            },
            "ORGANIZATION_ADMIN_STAFF": {
              "NOT_FOUND": "Organization Admin Staff not found",
              "EXCEL_NOT_FOUND": "Organization Admin Staff Excel not found",
              "GET_SUCCESSFULLY": "Organization Admin Staff get successfully.",
              "IMPORT_SUCESSFULLY":
                  "Organization Admin Staff imported succesfully.",
              "CREATED_SUCCESSFULLY":
                  "Organization Admin Staff created successfully.",
              "DELETED_SUCCESSFULLY":
                  "Organization Admin Staff deleted successfully.",
              "UPDATED_SUCCESSFULLY":
                  "Organization Admin Staff updated successfully.",
              "GET_LIST_SUCCESSFULLY":
                  "Organization Admin Staff list get successfully.",
              "EXCEL_DEPARTMENT_ISSUE": "Provided Department is not exist",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "Organization Admin Staff in excel sheet already exist"
            },
            "ASSIGN_TICKET_TYPE_PERSON": {
              "GET": "Ticket type allocated person get successfully.",
              "ADDED": "Person allocated to ticket type successfully.",
              "UPDATE": "Allocated ticket type updated successfully."
            },
            "EMAIL_TEMPLATE_VALIDATION": {
              "EMAIL_BODY": "Body is required.",
              "EMAIL_KEYS": "Keys are required.",
              "EMAIL_TITLE": "Title is required.",
              "EMAIL_STATUS": "Status is required.",
              "EMAIL_SUBJECT": "Subject is required.",
              "EMAIL_BODY_VALUE": "Body must have html value.",
              "EMAIL_TITLE_LENGTH": "Title must have atleast 3 letters.",
              "EMAIL_STATUS_NUMERIC": "Please enter valid Status.",
              "EMAIL_SUBJECT_LENGTH":
                  "Subject must have atleast 2 and maximum 50 letters."
            },
            "FE_ORGANIZATION_STRUCTURE": {
              "CODE": "Code",
              "ROOM": "Room",
              "TYPE": "Type",
              "CLASS": "Class",
              "SUBJECT": "Subject",
              "ADD_ROOM": "Add Room",
              "CAPACITY": "Capacity",
              "FACILITY": "Facility",
              "LOCATION": "Location",
              "SEMESTER": "Semester",
              "ADD_CLASS": "Add Class",
              "EDIT_ROOM": "Edit Room",
              "VIEW_ROOM": "View Room",
              "CLASS_NAME": "Class Name",
              "DEPARTMENT": "Department",
              "EDIT_CLASS": "Edit Class",
              "VIEW_CLASS": "view Class",
              "ADD_SUBJECT": "Add Subject",
              "DELETE_ROOM": "Delete Room",
              "DESCRIPTION": "Description",
              "ROOM_NUMBER": "Room Number",
              "SELECT_ROOM": "Select Room",
              "CREATED DATE": "Description",
              "CREATED_DATE": "Department Date",
              "DELETE_CLASS": "Delete Class",
              "EDIT_SUBJECT": "Edit Subject",
              "SUBJECT_CODE": "Subject Code",
              "SUBJECT_NAME": "Subject Name",
              "TEACHER_NAME": "Teacher Name",
              "VIEW_SUBJECT": "View Subject",
              "ADD_DEPARTMENT": "Add Department",
              "ASSIGN_SUBJECT": "Assign Subject",
              "DELETE_SUBJECT": "Delete Subject",
              "SELECT_TEACHER": "Select Teacher",
              "DEPARTMENT_CODE": "Department Code",
              "DEPARTMENT_NAME": "Department Name",
              "EDIT_DEPARTMENT": "Edit Department",
              "VIEW_DEPARTMENT": "view Department",
              "DELETE_DEPARTMENT": "Delete Department",
              "ASSIGN_SUBJECT_LIST": "Assign Subject List",
              "EDIT_ASSIGN_SUBJECT": "Edit Assign Subject",
              "ASSIGN_CLASS_TEACHER": "Assign Class Teacher",
              "DELETE_ASSIGN_SUBJECT": "Delete Assign Subject",
              "LABEL_DEPARTMENT_CODE": "Department Code",
              "LABEL_DEPARTMENT_NAME": "Department Name",
              "UPDATE_ASSIGN_SUBJECT": "Update Assign Subject",
              "ORGANIZATION_STRUCTURE": "Organization Structure",
              "ASSIGN_CLASS_TEACHER_LIST": "Assign Class Teacher List",
              "EDIT_ASSIGN_CLASS_TEACHER": "Edit Assign Class Teacher",
              "DELETE_ASSIGN_CLASS_TEACHER": "Delete Assign Class Teacher",
              "UPDATE_ASSIGN_CLASS_TEACHER": "Update Assign Class Teacher",
              "ARE_YOU_SURE_WANT_DELETE_ROOM":
                  "Are you sure you want to delete this Room?",
              "ARE_YOU_SURE_WANT_DELETE_CLASS":
                  "Are you sure you want to delete this Class?",
              "ARE_YOU_SURE_WANT_DELETE_SUBJECT":
                  "Are you sure you want to delete?",
              "ARE_YOU_SURE_WANT_DELETE_DEPARTMENT":
                  "Are you sure you want to delete this Department?",
              "ARE_YOU_SURE_WANT_DELETE_ASSIGN_SUBJECT":
                  "Are you sure want to delete this assign subject?",
              "ARE_YOU_SURE_WANT_DELETE_ASSIGN_CLASS_TEACHER":
                  "Are you sure want to delete this assign class teacher?"
            },
            "PUBLIC_HOLIDAY_VALIDATION": {
              "DATE_SIZE": "Enter 13 digit date string.",
              "YEAR_SIZE": "Year size is minimum 4 digt.",
              "DAY_REQUIRED": "Day name is required.",
              "DATE_REQUIRED": "Date is required.",
              "YEAR_REQUIRED": "Year is required.",
              "HOLIDAY_REQUIRED": "Holiday name is required."
            },
            "ACKNOWLEDGEMENT_CATEGORIES": {
              "NOT_FOUND": "Acknowledgement Categories not found",
              "NOT_DELETED": "Acknowledgement not deleted relation exists.",
              "SOME_DELETED":
                  "Some records were deleted successfully, others were not deleted.",
              "ALREADY_EXIST": "Category already Exists",
              "EXCEL_NOT_FOUND": "Acknowledgement Categories Excel not found",
              "GET_SUCCESSFULLY":
                  "Acknowledgement Categories get successfully.",
              "NAME_ALREADY_EXIST":
                  "Acknowledgement Categories name is already there please try with another Acknowledgement Categories name",
              "CREATED_SUCCESSFULLY":
                  "Acknowledgement Categories created successfully.",
              "DELETED_SUCCESSFULLY":
                  "Acknowledgement Categories deleted successfully.",
              "UPDATED_SUCCESSFULLY":
                  "Acknowledgement Categories updated successfully.",
              "GET_LIST_SUCCESSFULLY":
                  "Acknowledgement Categories list get successfully.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "Acknowledgement Categories excel's json file created successfully"
            },
            "FE_ORGANIZATION_ADMIN_STAFF": {
              "ORG": "Organization Staff",
              "ADD_ORG": "Add Organization Staff",
              "ADD_ORG_STAFF": " Add Organization Staff",
              "EDIT_ORG_STAFF": "Edit Organization Staff",
              "VIEW_ORG_STAFF": "View Organization Staff",
              "USER_PERMISSION": "User Permission",
              "DELETE_ORG_STAFF": "Delete Organization Staff",
              "UPDATE_ORG_STAFF": "Update Organization Staff",
              "ARE_YOU_ORG_STAFF":
                  "Are you sure you want to delete this Organization Staff?.",
              "ADD_ORG_PERMISSION": "Add Organization Permission",
              "EDIT_USER_PERMISSION": "Edit User Permission",
              "ADD_ORGANIZATION_STAFF": "Add Organization Staff",
              "ORGANIZATION_ADMIN_STAFF": "Organization Admin Staff",
              "ORGANIZATION_ADMIN_STAFF_LIST": "Organization Admin Staff List"
            },
            "ORGANIZATION_BRANCH_VALIDATION": {
              "VALID_EMAIL": "Branch email is not valid.",
              "ZIP_REQUIRED": "Branch zip is required",
              "CITY_REQUIRED": "Branch city is required",
              "NAME_REQUIRED": "Branch name is required.",
              "EMAIL_REQUIRED": "Branch email is required.",
              "STATE_REQUIRED": "Branch state is required",
              "ADDRESS_REQUIRED": "Branch address is required.",
              "COUNTRY_REQUIRED": "Branch country is required",
              "TIMEZONE_REQUIRED": "Branch timezone is required.",
              "DESCRIPTION_REQUIRED": "Branch info is required."
            },
            "ORGANIZATION_BRANCH_ADMIN_STAFF": {
              "NOT_FOUND": "Organization Branch Admin Staff not found",
              "EXCEL_NOT_FOUND":
                  "Organization Branch Admin Staff Excel not found",
              "GET_SUCCESSFULLY":
                  "Organization Branch Admin Staff get successfully.",
              "IMPORT_SUCESSFULLY":
                  "Organization Branch Admin Staff imported succesfully.",
              "CREATED_SUCCESSFULLY":
                  "Organization Branch Admin Staff created successfully.",
              "DELETED_SUCCESSFULLY":
                  "Organization Branch Admin Staff deleted successfully.",
              "UPDATED_SUCCESSFULLY":
                  "Organization Branch Admin Staff updated successfully.",
              "GET_LIST_SUCCESSFULLY":
                  "Organization Branch Admin Staff list get successfully.",
              "EXCEL_DEPARTMENT_ISSUE": "Provided Department is not exist",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "Organization Branch Admin Staff in excel sheet already exist"
            },
            "ORGANIZATION_SECTION_VALIDATION": {
              "ROOM_NUMBER": "Room number is required.",
              "NAME_REQUIRED": "Organization section name is required.",
              "DESCRIPTION_REQUIRED": "Description is required."
            },
            "ORGANIZATION_SUBJECT_VALIDATION": {
              "NAME_REQUIRED": "Organization subject name is required.",
              "CLASS_REQUIRED": "class is required",
              "CREATED_BY_REQUIRED":
                  "Organization Subject created by is required"
            },
            "FE_ORGANIZATION_BRANCH_ADMIN_STAFF": {
              "ORG_BRANCH_STAFF": "Organization Branch Staff",
              "ADD_ORG_PERMISSION": "Add Organization Permission",
              "ADD_ORG_BRANCH_STAFF": "Add Organization Branch Staff",
              "EDIT_ORG_BRANCH_STAFF": "Edit Organization Branch Staff",
              "VIEW_ORG_BRANCH_STAFF": "View Organization Branch Staff",
              "DELETE_ORG_BRANCH_STAFF": "Delete Organization Branch Staff",
              "UPDATE_ORG_BRANCH_STAFF": "Update Organization Branch Staff",
              "ARE_YOU_ORG_BRANCH_STAFF":
                  "Are you sure you want to delete this Organization Branch Staff?.",
              "ORGANIZATION_BRANCH_ADMIN_STAFF": "Branch Admin Staff",
              "ORGANIZATION_BRANCH_ADMIN_STAFF_LIST": "Branch Admin Staff List"
            },
            "ACKNOWLEDGEMENTCATEGORIES_VALIDATOR": {
              "NAME_REQUIRED": "acknowledgement categories name is required",
              "DESCRIPTION_REQUIRED":
                  "acknowledgement categories Description is required."
            },
            "ACKNOWLEDGEMENT_CATEGORIES_VALIDATOR": {
              "NOT_FOUND": "Acknowledgement Categories not found",
              "ALREADY_EXIST": "Category already Exists",
              "EXCEL_NOT_FOUND": "Acknowledgement Categories Excel not found",
              "GET_SUCCESSFULLY":
                  "Acknowledgement Categories get successfully.",
              "NAME_ALREADY_EXIST":
                  "Acknowledgement Categories name is already there please try with another Acknowledgement Categories name",
              "CREATED_SUCCESSFULLY":
                  "Acknowledgement Categories created successfully.",
              "DELETED_SUCCESSFULLY":
                  "Acknowledgement Categories deleted successfully.",
              "UPDATED_SUCCESSFULLY":
                  "Acknowledgement Categories updated successfully.",
              "GET_LIST_SUCCESSFULLY":
                  "Acknowledgement Categories list get successfully.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "Acknowledgement Categories excel's json file created successfully"
            },
            "ORGANIZATION_BRANCH_ADMIN_VALIDATION": {
              "VALID_EMAIL": "Branch admin email is not valid.",
              "ZIP_REQUIRED": "Branch admin zip is required",
              "CITY_REQUIRED": "Branch admin city is required",
              "PASSWORD_SIZE": "Password must have atleast 6 letters.",
              "EMAIL_REQUIRED": "Branch admin email is required.",
              "STATE_REQUIRED": "Branch admin state is required",
              "ADDRESS_REQUIRED": "Branch address is required.",
              "COUNTRY_REQUIRED": "Branch admin country is required",
              "LAST_NAME_REQUIRED": "Branch admin last name is required.",
              "FIRST_NAME_REQUIRED": "Branch admin first name is required.",
              "PASSWORD_VALIDATION":
                  "Password should be combination of one uppercase, one lower case, one special character, one digit and minimum 6."
            }
          },
          "createdAt": "2024-03-21T05:06:37.569Z",
          "updatedAt": "2024-05-15T06:31:08.628Z",
          "created_by": "Anantha Super Admin",
          "updated_by": "Anantha Super Admin",
          "created_at_timezone": "2024-03-21T10:36:37.569Z"
        },
        {
          "id": "5563551d-86fb-4562-b063-5d7bdcbfb1ec",
          "language": "Arabic",
          "code": "ar",
          "status": "2",
          "messages": {
            "CR": {
              "GET_CR": "\tتم الحصول على طلب التغيير بنجاح.",
              "CREATED": "\tتم إنشاء طلب التغيير",
              "NOT_FOUND": "\tطلب التغيير غير موجود.",
              "GET_CR_LIST": "تم تغيير قائمة الطلبات بنجاح.",
              "GET_PROJECT_WO_CR":
                  "احصل على المشروع الذي لديه الآن طلب التغيير",
              "DELETED_SUCCESSFULLY": "تم حذف طلب التغيير بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم حذف طلب التغيير بنجاح.",
              "CR_DETAILS_NOT_AVAILABLE":
                  "لم يتم العثور على تفاصيل طلب التغيير.\t",
              "PROJECT_CR_NOT_AVAILABLE": "هذا المشروع ليس لديه طلب تغيير"
            },
            "BOOK": {
              "NOT_FOUND": "لم يتم العثور على الكتاب",
              "NOT_DELETED": "لم يتم حذف الكتاب بسبب اعتماده على وحدات أخرى\t",
              "NUMBER_SAME": "نفس الرقم موجود يرجى المحاولة برقم كتاب آخر",
              "SOME_DELETED": "\tتم حذف بعض الكتب",
              "ALREADY_EXIST": "\tالكتاب موجود بالفعل",
              "EXCEL_NOT_FOUND": "\tلم يتم العثور على كتاب Excel",
              "GET_SUCCESSFULLY": "\tتم الحصول على الكتاب بنجاح.",
              "NAME_ALREADY_EXIST":
                  "اسم الكتاب موجود بالفعل، يرجى تجربة اسم كتاب آخر",
              "CREATED_SUCCESSFULLY": "تم إنشاء الكتاب بنجاح.",
              "DELETED_SUCCESSFULLY": "تم حذف الكتاب بنجاح.\t",
              "UPDATED_SUCCESSFULLY": "\tتم تحديث الكتاب بنجاح.",
              "GET_LIST_SUCCESSFULLY": "تم الحصول على قائمة الكتب بنجاح.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "\tتم إنشاء ملف json الخاص بكتاب Excel بنجاح"
            },
            "FILE": {"GIF_NOT_FOUND": "ملف GIF غير مسموح به."},
            "MAKE": {
              "NAME_EXIST": "\tاسم الماركة موجود بالفعل.",
              "MAKE_NOT_EXIST": "\tالصنع غير موجود.",
              "GET_MAKE_LISTING": "احصل على التفاصيل بنجاح.",
              "EDIT_MAKE_SUCCESSFULLY": "تحرير جعل بنجاح.",
              "MAKE_CREATED_SUCCESSFULLY": "تم الإنشاء بنجاح."
            },
            "PLAN": {
              "NOT_FOUND": "\tلم يتم العثور على الخطة",
              "NOT_DELETED": "\tالعلاقة غير المحذوفة موجودة.",
              "SOME_DELETED":
                  "تم حذف بعض السجلات بنجاح، ولم يتم حذف البعض الآخر.",
              "ALREADY_EXIST":
                  "اسم الخطة موجود بالفعل، يرجى المحاولة باستخدام اسم خطة آخر\t",
              "GET_SUCCESSFULLY": "الخطة تحصل بنجاح.\t",
              "CREATED_SUCCESSFULLY": "تم إنشاء الخطة بنجاح.\t",
              "DELETED_SUCCESSFULLY": "تم حذف الخطة بنجاح.\t",
              "UPDATED_SUCCESSFULLY": "تم حذف الخطة بنجاح.\t",
              "GET_LIST_SUCCESSFULLY": "الحصول على قائمة الخطة بنجاح.\t"
            },
            "ROLE": {
              "ADDED": "تمت إضافة الدور بنجاح.\t",
              "FETCH": "تم جلب الدور بنجاح\t",
              "EDITED": "تم تعديل الدور بنجاح.\t",
              "DELETED": "\tتم حذف الدور بنجاح.",
              "ALREADY_EXIST": "الدور موجود بالفعل."
            },
            "SMTP": {
              "NOT_FOUND": "\tلم يتم العثور على SMTP",
              "ALREADY_EXIST": "\tSMTP موجود بالفعل",
              "EXCEL_NOT_FOUND": "\tلم يتم العثور على SMTP Excel",
              "GET_SUCCESSFULLY": "\tتم الحصول على SMTP بنجاح.",
              "NAME_ALREADY_EXIST":
                  "\tاسم SMTP موجود بالفعل، يرجى المحاولة باستخدام اسم SMTP آخر",
              "CREATED_SUCCESSFULLY": "\tتم إنشاء SMTP بنجاح.",
              "DELETED_SUCCESSFULLY": "تم حذف SMTP بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث SMTP بنجاح.",
              "GET_LIST_SUCCESSFULLY": "تم الحصول على قائمة SMTP بنجاح.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "تم إنشاء ملف json الخاص بـ SMTP excel بنجاح"
            },
            "TASK": {
              "TASK_GET": "\tجلب المهمة بنجاح.",
              "DUPLICATE_TASK": "\tالمهمة موجودة بالفعل.",
              "TASK_NOT_FOUND": "\tلم يتم العثور على المهمة.",
              "ADD_TASK_SUCCESS": "\tتمت إضافة المهمة بنجاح.",
              "EDIT_TASK_SUCCESS": "\tتم تحرير المهمة بنجاح.",
              "DELETE_TASK_SUCCESS": "\tتم حذف المهمة بنجاح.",
              "GET_ALL_TASK_SUCCESS": "\tجلب كافة المهام بنجاح.",
              "EDIT_TASK_SUCCESS_STATUS": "\tتم تغيير حالة المهمة بنجاح.",
              "TASK_DETAILS_NOT_AVAILABLE": "\tتفاصيل المهمة غير متوفرة."
            },
            "ZOOM": {
              "GET_ALL": "\tتم الحصول على قائمة تفاصيل التكبير بنجاح..",
              "NOT_EXIST": "تفاصيل التكبير/التصغير غير موجودة.",
              "NOT_FOUND": "لم يتم العثور على تفاصيل التكبير/التصغير.",
              "GET_DETAILS": "تم الحصول على تفاصيل التكبير بنجاح.\t",
              "ALREADY_EXIST": "تفاصيل التكبير/التصغير موجودة بالفعل.\t",
              "CREATED_SUCCESSFULLY":
                  "تم إنشاء تفاصيل التكبير/التصغير بنجاح.\t",
              "DELETED_SUCCESSFULLY": "تم حذف تفاصيل التكبير/التصغير بنجاح.\t",
              "UPDATED_SUCCESSFULLY": "تم تحديث تفاصيل التكبير/التصغير بنجاح.\t"
            },
            "ASSET": {
              "GET_SUCCESSFULLY": "تم الحصول على الأصول بنجاح.\t",
              "WRONG_ASSET_TYPE": "\tالأصول خاطئة.",
              "COUNT_SUCCESSFULLY": "تم الحصول على إجمالي النجاح.",
              "DELETE_SUCCESSFULLY": "تم حذف الأصل بنجاح.\t",
              "CREATED_SUCCESSFULLY": "تم إنشاء الأصل بنجاح.\t",
              "UPDATED_SUCCESSFULLY": "تم تحديث الأصل بنجاح.\t",
              "GET_LIST_SUCCESSFULLY": "\tالحصول على قائمة الأصول بنجاح.",
              "ASSET_CODE_ALREDAY_EXIST": "\tرمز الأصل موجود بالفعل.",
              "ASSET_COUNT_SUCCESSFULLY":
                  "\tتم الحصول على إجمالي نوع الأصول بنجاح.",
              "INSOCK_ASSET_COUNT_SUCCESSFULLY":
                  "تم الحصول على إجمالي نوع الأصول المتوفرة بنجاح."
            },
            "CLASS": {
              "NOT_FOUND": "لم يتم العثور على الفئة.",
              "NOT_DELETED": "العلاقة غير المحذوفة موجودة.\t",
              "SOME_DELETED":
                  "تم حذف بعض السجلات بنجاح، ولم يتم حذف البعض الآخر.\t",
              "ALREADY_EXIST":
                  "اسم الفصل موجود بالفعل، يرجى المحاولة باستخدام اسم فصل آخر",
              "GET_SUCCESSFULLY": "الحصول على الطبقة بنجاح.",
              "CREATED_SUCCESSFULLY": "الفئة تم إنشاؤها بنجاح.",
              "DELETED_SUCCESSFULLY": "\tتم حذف الفصل بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث الفصل بنجاح.",
              "GET_LIST_SUCCESSFULLY": "\tالحصول على قائمة الفصل بنجاح."
            },
            "LEAVE": {
              "LEAVE_GET": "\tتم جلب الإجازة بنجاح.",
              "LEAVE_DUPLICATE": "\tترك موجود بالفعل.",
              "LEAVE_NOT_ADDED": "\tلا تترك إضافة في هذا اليوم التحول.",
              "LEAVE_NOT_FOUND": "\tلم يتم العثور على ترك.",
              "ADD_LEAVE_SUCCESS": "\tتمت إضافة الإجازة بنجاح.",
              "EDIT_LEAVE_SUCCESS": "\tاترك التعديل بنجاح.",
              "LEAVE_CANNOT_DELET": "الآن لا يمكنك حذف الإجازة.\t",
              "MAKE_SEPARATE_LEAVE":
                  "لا تترك إضافة في هذا اليوم المناوب، قم بعمل إجازة منفصلة.\t",
              "UPDATE_LEAVE_STATUS": "تم تحديث حالة الإجازة.\t",
              "DELETE_LEAVE_SUCCESS": "تم ترك الحذف بنجاح.",
              "START_GRETERTHEN_END": "\tتاريخ البدء أكبر من تاريخ الانتهاء.",
              "GET_ALL_LEAVE_SUCCESS": "\tجلب كافة الأوراق بنجاح.",
              "START_END_DATE_IS_HOLIDAY":
                  "تاريخ البدء أو تاريخ الانتهاء هو يوم عطلة، حدد تاريخًا آخر.\t",
              "LEAVE_DETAILS_NOT_AVAILABLE": "\tاترك التفاصيل غير متاحة."
            },
            "ROLES": {"ADDED": "تمت إضافة الدور بنجاح.\t"},
            "ROOMS": {
              "GET_ROOM": "تم الحصول على تفاصيل الغرفة بنجاح.\t",
              "NOT_FOUND": "لم يتم العثور على الغرفة\t",
              "NOT_DELETED": "الغرفة غير محذوفة العلاقة موجودة.\t",
              "GET_ALL_ROOM": "تم الحصول على قائمة الغرف بنجاح..\t",
              "SOME_DELETED":
                  "تم حذف بعض السجلات بنجاح، ولم يتم حذف البعض الآخر.\t",
              "ALREADY_EXIST":
                  "اسم الغرف موجود بالفعل، يرجى المحاولة باستخدام اسم غرف آخر\t",
              "ROOM_NOT_EXIST": "الغرفة غير موجودة.\t",
              "ROOM_ALREADY_EXIST": "الغرفة موجودة بالفعل.\t",
              "CREATED_SUCCESSFULLY": "تم إنشاء الغرفة بنجاح.\t",
              "DELETED_SUCCESSFULLY": "تم حذف الغرفة بنجاح.\t",
              "UPDATED_SUCCESSFULLY": "تم تحديث الغرفة بنجاح.\t"
            },
            "SHEET": {"FETCH": "\tتم جلب عنوان url لورقة Excel بنجاح."},
            "USERS": {
              "INVALID_PM": "المستخدم ليس مدير المشروع.",
              "INVALID_TL": "المستخدم ليس قائد الفريق.",
              "LEAVE_TODAY": "\tالموظفون في إجازة اليوم.",
              "LOGOUT_FAIL": "\tحدث خطأ أثناء تسجيل خروجك.",
              "NOT_ALLOWED": "ليس لديك إذن للوصول إلى هذا الدور.",
              "URL_EXPIRED": "عنوان URL هذا منتهي الصلاحية أو غير صالح.",
              "GET_ALL_USER": "جلب كافة المستخدمين بنجاح.\t",
              "INVALID_USER": "ليس لديك إذن لإنشاء مستخدم جديد.\t",
              "USER_CREATED": "\tتم إنشاء المستخدم بنجاح.",
              "USER_DELETED": "تم حذف المستخدم بنجاح.",
              "GET_USER_LIST": "تم الحصول على قائمة المستخدمين بنجاح.\t",
              "LOGIN_SUCCESS": "لقد تم تسجيل دخولك بنجاح.",
              "LOGOUT_SUCCESS": "تسجيل الخروج بنجاح.\t",
              "SIGNUP_SUCCESS": "تم إنشاء المستخدم بنجاح.\t",
              "USERTYPE_EXIST": "نوع المستخدم موجود بالفعل.\t",
              "USER_NOT_FOUND": "المستخدم غير موجود.",
              "EMAIL_NOT_FOUND": "البريد الإلكتروني غير موجود.\t",
              "FETCH_USER_LIST": "جلب البيانات بنجاح.\t",
              "ADDED_BULK_USERS": "تمت إضافة المستخدمين المجمعين بنجاح.\t",
              "CREATED_USERTYPE": "تم إنشاء نوع المستخدم بنجاح.",
              "DEACTIVE_ACCOUNT": "تم تعطيل حسابك، يرجى الاتصال بالمسؤول.\t",
              "GET_USER_PROFILE": "\tتم الحصول على ملف تعريف المستخدم بنجاح.",
              "INVALID_PASSWORD": "\tالبريد الإلكتروني أو كلمة السر خاطئة.",
              "USERTYPE_DELETED": "\tتم حذف نوع المستخدم بنجاح.",
              "USERTYPE_UPDATED": "\tتم تحديث نوع المستخدم بنجاح.",
              "GET_USERTYPE_LIST": "\tتم الحصول على قائمة نوع المستخدم بنجاح.",
              "PASSWORDMINLENGTH":
                  "يجب أن تحتوي كلمة المرور الخاصة بك على 6 أحرف على الأقل.",
              "PASSWORD_MISMATCH":
                  "كلمة المرور الجديدة وتأكيد كلمة المرور غير متطابقين.\t",
              "EMAIL_CHANGE_ERROR":
                  "\tالبريد الإلكتروني لم يتغير، خطأ في إرسال البريد الإلكتروني. تم تحديث كافة التفاصيل الأخرى بنجاح.",
              "INVALIDOLDPASSWORD": "الرجاء إدخال كلمة المرور الحالية الصحيحة.",
              "NOT_VERIFY_ACCOUNT": "\tيرجى التحقق من حسابك.",
              "USERTYPE_NOT_FOUND": "نوع المستخدم غير موجود.",
              "EMAIL_ALREDAY_EXIST":
                  "\tهذا البريد الإلكتروني موجود بالفعل في هذا التطبيق.",
              "GET_USER_AUTH_TOKEN": "احصل على رموز المصادقة الجديدة بنجاح.",
              "ADMIN_PROFILE_UPDATE": "\tتم تحديث الملف الشخصي بنجاح.",
              "GET_USERTYPE_PROFILE": "تم الحصول على نوع المستخدم بنجاح.\t",
              "LOCATION_DEACTIVATED":
                  "تم إلغاء تنشيط موقع الوظيفة، يرجى الاتصال بالمسؤول.",
              "ORGANIZATION_DELETED":
                  "تم حذف مؤسستك. يرجى الاتصال بالمسؤول لحل المشكلة",
              "PROFILE_FETCH_SUCCESS": "تم جلب الملف الشخصي بنجاح.",
              "RESETPASSWORD_SUCCESS":
                  "لقد تم تحديث كلمة السر الخاصة بك بنجاح.",
              "FORGOTPASSWORD_SUCCESS":
                  "لقد تم تحديث كلمة السر الخاصة بك بنجاح.",
              "PASSWORDUPDATE_SUCCESS":
                  "تم تغيير كلمة المرور الخاصة بك بنجاح.\t",
              "PROFILE_DELETE_SUCCESS": "تم حذف الملف الشخصي بنجاح.\t",
              "PROFILE_UPDATE_SUCCESS": "تم تحديث الملف الشخصي بنجاح.\t",
              "MAX_USERS_LIMIT_REACHED":
                  "تم الوصول إلى الحد الأقصى لعدد المستخدمين لهذه الخطة",
              "USERDETAIL_NOT_AVAILABLE":
                  "لم يتم العثور على تفاصيل المستخدم.\t",
              "CONTRACTOR_STATUS_PENDING":
                  "حسابك في انتظار التحقق. يرجى الاتصال بالبائع للحصول على المساعدة.\t",
              "CONTRACTOR_STATUS_REJECTED":
                  "حسابك مغلق. يرجى الاتصال بالمورد لإعادة تنشيط حسابك.",
              "USER_DETAILS_NOT_AVAILABLE": "تفاصيل المستخدم غير متوفرة.\t",
              "MOBILE_NUMBER_ALREADY_EXIST":
                  "رقم الهاتف المحمول موجود بالفعل في نظامنا! الرجاء إدخال واحدة مختلفة.\t",
              "ORGANIZATION_BRANCH_DELETED":
                  "تم حذف فرع مؤسستك. يرجى الاتصال بالمسؤول لحل المشكلة",
              "FORGOTPASSWORD_EMAIL_SUCCESS":
                  "تم حذف فرع مؤسستك. يرجى الاتصال بالمسؤول لحل المشكلة",
              "OLDPASSWORD_NEWPASSWORD_SAME":
                  "لا يمكن أن تكون كلمة المرور الحالية وكلمة المرور الجديدة متماثلتين.",
              "ORGANIZATION_STATUS_INACTIVE":
                  "\tلقد أصبحت مؤسستك غير نشطة لسبب ما. يرجى الاتصال بالمسؤول لحل المشكلة",
              "PROFILE_UPDATE_WITH_EMAIL_SUCCESS":
                  "تم تحديث الملف الشخصي بنجاح. يرجى التحقق من بريدك الإلكتروني الجديد.",
              "ORGANIZATION_BRANCH_STATUS_INACTIVE":
                  "\tلقد كان فرع مؤسستك غير نشط لسبب ما. يرجى الاتصال بالمسؤول لحل المشكلة"
            },
            "AUTHOR": {
              "NOT_FOUND": "\tلم يتم العثور على المؤلف",
              "ALREADY_EXIST": "المؤلف موجود بالفعل",
              "EXCEL_NOT_FOUND": "\tلم يتم العثور على المؤلف Excel",
              "GET_SUCCESSFULLY": "المؤلف الحصول على النجاح.",
              "NAME_ALREADY_EXIST":
                  "اسم المؤلف موجود بالفعل، يرجى المحاولة باستخدام اسم مؤلف آخر",
              "CREATED_SUCCESSFULLY": "\tتم إنشاء المؤلف بنجاح.",
              "DELETED_SUCCESSFULLY": "تم حذف المؤلف بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث المؤلف بنجاح.",
              "GET_LIST_SUCCESSFULLY": "\tتم الحصول على قائمة المؤلفين بنجاح.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "\tتم إنشاء ملف json الخاص بالمؤلف بنجاح"
            },
            "CLIENT": {
              "CREATED": "\tتم إنشاء العميل.",
              "NOT_FOUND": "\tالعميل غير موجود.",
              "GET_CLIENT_LIST": "الحصول على قائمة العملاء بنجاح.\t",
              "GET_CLIENT_PROFILE": "تم الحصول على ملف تعريف العميل بنجاح.",
              "EMAIL_ALREDAY_EXIST": "البريد الإلكتروني للعميل موجود بالفعل.",
              "PROFILE_UPDATE_SUCCESS": "تم تحديث ملف تعريف العميل بنجاح.",
              "CLIENT_DETAILS_NOT_AVAILABLE": "لم يتم العثور على تفاصيل العميل."
            },
            "COURSE": {
              "NOT_FOUND": "\tلم يتم العثور على الدورة",
              "NOT_DELETED": "لم يتم حذف الدورة بسبب الاعتماد على وحدات أخرى",
              "RATING_LIST": "الحصول على تقييم الدورة بنجاح",
              "RATING_ADDED": "\tتمت إضافة تقييم الدورة.",
              "SOME_DELETED": "تم حذف بعض الكتب",
              "ALREADY_EXIST": "\tالدورة موجودة بالفعل",
              "GET_SUCCESSFULLY": "الحصول على الدورة بنجاح.",
              "NAME_ALREADY_EXIST":
                  "اسم الدورة موجود بالفعل، يرجى المحاولة باستخدام اسم دورة آخر\t",
              "CREATED_SUCCESSFULLY": "تم إنشاء الدورة بنجاح.",
              "DELETED_SUCCESSFULLY": "\tتم حذف الدورة بنجاح.",
              "RATING_ALREADY_EXIST": "تقييم الدورة موجود بالفعل",
              "UPDATED_SUCCESSFULLY": "تم تحديث الدورة بنجاح.",
              "GET_LIST_SUCCESSFULLY": "\tالحصول على قائمة الدورة بنجاح.",
              "GET_DETAIL_SUCCESSFULLY": "الحصول على تفاصيل الدورة بنجاح.\t"
            },
            "EMAILS": {
              "EMAIL_SEND_SUCCESS": "تم إرسال بريد إلكتروني واحد بنجاح."
            },
            "LESSON": {
              "NOT_FOUND": "لم يتم العثور على الدرس",
              "NOT_DELETED": "الدرس غير محذوف العلاقة موجودة.",
              "SOME_DELETED":
                  "تم حذف بعض السجلات بنجاح، ولم يتم حذف البعض الآخر.",
              "ALREADY_EXIST": "اسم الدرس موجود بالفعل، يرجى تجربة اسم درس آخر",
              "GET_SUCCESSFULLY": "الحصول على الدرس بنجاح.",
              "CREATED_SUCCESSFULLY": "تم إنشاء الدرس بنجاح.",
              "DELETED_SUCCESSFULLY": "\tتم حذف الدرس بنجاح",
              "UPDATED_SUCCESSFULLY": "تم تحديث الدرس بنجاح",
              "GET_LIST_SUCCESSFULLY": "الحصول على قائمة الدروس بنجاح."
            },
            "MODULE": {
              "NOT_FOUND": "لم يتم العثور على الوحدة النمطية",
              "NOT_DELETED": "العلاقة غير المحذوفة للوحدة موجودة.",
              "SOME_DELETED":
                  "تم حذف بعض السجلات بنجاح، ولم يتم حذف البعض الآخر.\t",
              "ALREADY_EXIST":
                  "اسم الوحدة موجود بالفعل، يرجى المحاولة باسم وحدة أخرى",
              "GET_SUCCESSFULLY": "تم الحصول على الوحدة بنجاح.",
              "CREATED_SUCCESSFULLY": "\tتم إنشاء الوحدة بنجاح.",
              "DELETED_SUCCESSFULLY": "\tتم حذف الوحدة بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث الوحدة بنجاح.\t",
              "GET_LIST_SUCCESSFULLY":
                  "تم الحصول على قائمة الوحدات النمطية بنجاح."
            },
            "PARENT": {
              "NOT_FOUND": "لم يتم العثور على الوالد",
              "NOT_CREATED": "لم يتم إنشاء الوالد. كانت هناك بعض المشكلات",
              "EXCEL_NOT_FOUND": "لم يتم العثور على Excel الأصلي",
              "GET_SUCCESSFULLY": "الحصول على الوالدين بنجاح.",
              "IMPORT_SUCESSFULLY": "\tتم استيراد الأصل بنجاح.",
              "CREATED_SUCCESSFULLY": "تم إنشاء الوالدين بنجاح.",
              "DELETED_SUCCESSFULLY": "تم حذف الوالدين بنجاح.",
              "UPDATED_SUCCESSFULLY": "\tتم تحديث الوالدين بنجاح.",
              "GET_LIST_SUCCESSFULLY": "\tتم الحصول على قائمة الوالدين بنجاح.",
              "EXCEL_PARENT_ALREADY_EXIST": "الأصل في ورقة Excel موجود بالفعل"
            },
            "STRIPE": {
              "NOT_FOUND": "\tلم يتم العثور على مفتاح الشريط",
              "ALREADY_EXIST": "مفتاح الشريط موجود بالفعل، يرجى تحديثه",
              "GET_SUCCESSFULLY": "تم الحصول على مفتاح الشريط بنجاح.\t",
              "CREATED_SUCCESSFULLY": "\tتم إنشاء مفتاح S3 بنجاح.",
              "DELETED_SUCCESSFULLY": "تم حذف مفتاح strpe بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث تفاصيل S3 بنجاح.\t",
              "GET_LIST_SUCCESSFULLY":
                  "تم الحصول على قائمة المفاتيح الشريطية بنجاح."
            },
            "TICKET": {
              "CREATED": "\tتم إنشاء التذكرة بنجاح.",
              "FETCHED": "\tتم جلب التذكرة بنجاح.",
              "NOT_FOUND": "التذكرة غير مخصصة لك.",
              "COMMENT_ADDED": "تمت إضافة التعليق بنجاح.",
              "STATUS_UPDATE": "تم تحديث حالة التذكرة بنجاح.",
              "COMMENT_FETCHED": "\tتم جلب التعليق بنجاح."
            },
            "VENDOR": {
              "NAME_EXIST": "اسم البائع موجود بالفعل.",
              "VENDOR_NOT_EXIST": "البائع غير موجود.",
              "GET_VENDOR_LISTING": "\tاحصل على تفاصيل البائع بنجاح.",
              "EDIT_VENDOR_SUCCESSFULLY": "تم تحرير البائع بنجاح.",
              "VENDOR_CREATED_SUCCESSFULLY": "تم إنشاء البائع بنجاح."
            },
            "COMPANY": {
              "NAME_EXIST": "اسم الشركة موجود بالفعل.",
              "COMPANY_ADDED": "تمت إضافة الشركة بنجاح",
              "COMPANY_NOT_ADDED": "\tلا يمكن إضافة الشركة",
              "COMPANY_NOT_EXIST": "\tالشركة غير موجودة.",
              "GET_COMPANY_LISTING": "الحصول على تفاصيل الشركة بنجاح.\t",
              "EDIT_COMPANY_SUCCESSFULLY": "تحرير الشركة بنجاح.",
              "COMPANY_CREATED_SUCCESSFULLY": "تم إنشاء الشركة بنجاح."
            },
            "FE_USER": {
              "PARENTS": "\t\tآباء",
              "STUDENT": "\tطالب",
              "TEACHER": "مدرس",
              "BIO_DATA": "\tالبيانات الحيوية",
              "LIBRARIAN": "\tأمين المكتبة",
              "STUDENT_ID": "\tهوية الطالب",
              "ADD_STUDENT": "إضافة طالب\t",
              "ADD_TEACHER": "إضافة المعلم",
              "BLOOD_GROUP": "فصيلة الدم",
              "NATIONALITY": "\tجنسية",
              "SELECT_DATE": "حدد تاريخ",
              "UPLOAD_LOGO": "تحميل صورة الملف الشخصي",
              "EDIT_PARENTS": "تحرير الوالدين",
              "EDIT_STUDENT": "\tتحرير الطالب",
              "EDIT_TEACHER": "\tتحرير المعلم",
              "SELECT_CLASS": "\tاختر فئة",
              "VIEW_PARENTS": "عرض الوالدين",
              "VIEW_STUDENT": "\tعرض الطالب",
              "VIEW_TEACHER": "عرض المعلم",
              "DATE_OF_BIRTH": "تاريخ الميلاد",
              "PROFILE_IMAGE": "\tصورة الملف الشخصي",
              "DELETE_PARENTS": "\tحذف الوالدين",
              "DELETE_STUDENT": "\tحذف الطالب",
              "DELETE_TEACHER": "\tحذف المعلم",
              "SELECT_SECTION": "\tحدد القسم",
              "DATE_OF_JOINING": "\tتاريخ الإنضمام",
              "STREET_ADDRESS_LINE_1": "\tالعنوان (الخط 1",
              "STREET_ADDRESS_LINE_2": "\tعنوان الشارع السطر 2",
              "ARE_YOU_DELETE_PARENTS":
                  "هل أنت متأكد أنك تريد حذف هذا الوالدين؟.",
              "ARE_YOU_DELETE_STUDENT":
                  "هل أنت متأكد أنك تريد حذف هذا الطالب؟.\t",
              "ARE_YOU_DELETE_TEACHER": "هل أنت متأكد أنك تريد حذف هذا المعلم؟."
            },
            "GENERAL": {
              "GET_LIST": "الحصول على القائمة بنجاح.",
              "NOT_FOUND": "لم يتم العثور على واجهة برمجة التطبيقات.",
              "NOT_TOKEN": "لم يتم العثور على الرمز المميز.",
              "INVALID_ID": "الرجاء إدخال معرف صالح.",
              "INVALID_DOC": "\tيرجى تحميل الوثيقة.",
              "JWT_EXPIRED": "\tانتهت صلاحية JWT، يرجى تسجيل الدخول مرة أخرى.",
              "INVALID_IMAGE": "\tيرجى تحميل صورة صالحة.",
              "INVALID_LOGIN": "\tأنك غير مخول.",
              "BLACKLIST_MAIL":
                  "الرجاء إدخال بريد إلكتروني صالح، فنحن لا نسمح برسائل البريد الإلكتروني الوهمية.",
              "RESTRICTED_USER": "\tغير مصرح لك بالقيام بهذه العملية.",
              "UNAUTHORIZED_USER": "\tغير مصرح به، يرجى تسجيل الدخول.",
              "INVALID_SECRET_KEY": "المفتاح السري غير صالح.",
              "PASSWORD_NOT_ALLOW":
                  "\tلا يمكن تعديل كلمة المرور من قبل المستخدم.",
              "EMAIL_ALREADY_EXIST":
                  "البريد الإلكتروني مسجل بالفعل، يرجى استخدام بريد مختلف.",
              "GENERAL_ERROR_CONTENT":
                  "هناك خطأ ما. الرجاء معاودة المحاولة في وقت لاحق."
            },
            "PROJECT": {
              "PROJECT_GET": "\tجلب المشروع بنجاح.",
              "FILE_REQUIRED": "\tعدم الحصول على أي ملفات.",
              "FILE_NOT_FOUND": "\tلم يتم العثور على الملفات.",
              "PROJECT_DUPLICATE": "المشروع موجود بالفعل.",
              "PROJECT_NOT_FOUND": "\tلم يتم العثور على المشروع.",
              "ADD_PROJECT_SUCCESS": "\tتمت إضافة المشروع بنجاح.",
              "FILE_UPLOAD_SUCCESS": "تم تحميل الملفات بنجاح.",
              "EDIT_PROJECT_SUCCESS": "تم تحرير المشروع بنجاح.",
              "FILE_GET_SUCCESSFULLY": "تم الحصول على وثيقة المشروع بنجاح.",
              "DELETE_PROJECT_SUCCESS": "\tتم حذف المشروع بنجاح.",
              "GET_ALL_PROJECT_SUCCESS": "جلب كافة المشاريع بنجاح.",
              "PROJECT_DETAILS_NOT_AVAILABLE": "تفاصيل المشروع غير متوفرة."
            },
            "REQUEST": {
              "FAIL": "\tلم يتم العثور على العمل.",
              "ADDED": "\tتمت إضافة البيانات بنجاح.",
              "FETCH": "\tتم جلب البيانات بنجاح",
              "EDITED": "تم تحرير البيانات بنجاح.",
              "DELETED": "\tتم حذف البيانات بنجاح."
            },
            "SECTION": {
              "NOT_FOUND": "\tلم يتم العثور على القسم",
              "NOT_DELETED": "العلاقة غير المحذوفة موجودة.",
              "SOME_DELETED":
                  "تم حذف بعض السجلات بنجاح، ولم يتم حذف البعض الآخر.",
              "ALREADY_EXIST": "القسم موجود بالفعل",
              "GET_SUCCESSFULLY": "تم الحصول على القسم بنجاح.\t",
              "NAME_ALREADY_EXIST":
                  "\tاسم القسم موجود بالفعل، يرجى المحاولة باستخدام اسم قسم آخر",
              "CREATED_SUCCESSFULLY": "\tتم إنشاء القسم بنجاح.",
              "DELETED_SUCCESSFULLY": "\tتم حذف القسم بنجاح.",
              "UPDATED_SUCCESSFULLY": "\tتم تحديث القسم بنجاح.",
              "GET_LIST_SUCCESSFULLY": "\tتم الحصول على قائمة الأقسام بنجاح.",
              "SUBJECT_ASSIGN_SUCCESS": "\tتم تعيين الموضوع بنجاح",
              "TEACHER_ASSIGN_SUCCESS": "\tتم تعيين المعلم بنجاح"
            },
            "STUDENT": {
              "NOT_FOUND": "\tلم يتم العثور على الطالب",
              "EXCEL_NOT_FOUND":
                  "\tلم يتم العثور على برنامج Excel الخاص بالطالب",
              "GET_SUCCESSFULLY": "\tيحصل الطالب على النجاح.",
              "EXCEL_CLASS_ISSUE": "\tالفئة المقدمة غير موجودة",
              "IMPORT_SUCESSFULLY": "\tتم استيراد الطالب بنجاح",
              "EXCEL_SECTION_ISSUE": "\tالقسم المقدم غير موجود",
              "CREATED_SUCCESSFULLY": "تم إنشاء الطالب بنجاح.",
              "DELETED_SUCCESSFULLY": "\tتم حذف الطالب بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث الطالب بنجاح.",
              "GET_LIST_SUCCESSFULLY": "الحصول على قائمة الطلاب بنجاح.",
              "EXCEL_STUDENT_ALREADY_EXIST":
                  "\tالطالب في ورقة Excel موجود بالفعل"
            },
            "TEACHER": {
              "NOT_FOUND": "لم يتم العثور على المعلم",
              "NOT_DELETED": "\tالعلاقة غير المحذوفة للمعلم موجودة.",
              "SOME_DELETED":
                  "تم حذف بعض السجلات بنجاح، ولم يتم حذف البعض الآخر.",
              "EXCEL_NOT_FOUND": "\tلم يتم العثور على Excel المعلم",
              "GET_SUCCESSFULLY": "الحصول على المعلم بنجاح.\t",
              "IMPORT_SUCESSFULLY": "تم استيراد المعلم بنجاح.",
              "CREATED_SUCCESSFULLY": "تم إنشاء المعلم بنجاح.\t",
              "DELETED_SUCCESSFULLY": "\tتم حذف المعلم بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث المعلم بنجاح.\t",
              "GET_LIST_SUCCESSFULLY": "الحصول على قائمة المعلمين بنجاح.\t",
              "EXCEL_DEPARTMENT_ISSUE": "القسم المقدم غير موجود\t",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "المعلم في ورقة Excel موجود بالفعل\t"
            },
            "FEEDBACK": {
              "GET": "تم الحصول على التذكرة بنجاح.\t",
              "DATA": "تم الحصول على بيانات لوحة المعلومات بنجاح",
              "GET_SINGLE": "تم الحصول على التذكرة بنجاح.",
              "INVALID_ID": "الرجاء إدخال معرف صالح.",
              "CAN_NOT_EDIT": "لا يمكنك تعديل هذا الحقل.",
              "FEEDBACK_CHAT": "تم إرسال رسالة التذكرة بنجاح.\t",
              "FEEDBACK_CHAT_GET": "تم إجراء الدردشة بنجاح.",
              "GET_FEEDBACK_LIST": "\tالحصول على قائمة التذاكر بنجاح.",
              "FEEDBACK_NOT_FOUND": "لم يتم العثور على التذكرة.",
              "GET_REMARK_SUCCESS": "تم الحصول على ملاحظات التذكرة بنجاح.",
              "EDITED_SUCCESSFULLY": "تم تحديث التذكرة بنجاح.",
              "CREATED_SUCCESSFULLY": "\tتم إنشاء التذكرة.",
              "FEEDBACK_TYPE_CREATED": "\tتم إنشاء نوع التذكرة.",
              "FEEDBACK_IS_NOT_CLOSED": "التذكرة لم تغلق بعد.",
              "FORBIDDEN_REASSIGNMENT": "غير مصرح لك بإعادة التعيين.",
              "ASSIGNEE_ALREADY_EXISTS": "المُعيَّن موجود بالفعل.",
              "FEEDBACK_CAN_NOT_DELETE": "\tلا يمكنك حذف هذه التذكرة.",
              "REASSIGNED_SUCCESSFULLY": "\tتم تعيين المكلف الجديد بنجاح.",
              "REMARK_ADDED_SUCCESSFULLY": "تمت إضافة ملاحظة التذكرة بنجاح.",
              "USER_VALIDATION_SUCCESSFUL": "\tتم تحديث التذكرة بنجاح.",
              "FEEDBACK_DELETED_SUCCESSFULLY": "تم حذف التذكرة بنجاح.",
              "FEEDBACK_DETAILS_NOT_AVAILABLE": "\tالتذكرة غير متوفرة."
            },
            "LANGUAGE": {
              "NOT_FOUND": "\tلم يتم العثور على اللغة.",
              "ALREADY_EXIST": "اللغة موجودة بالفعل.",
              "GET_SUCCESSFULLY": "الحصول على اللغة بنجاح.",
              "DELETE_SUCCESSFULLY": "\tتم حذف اللغة بنجاح.",
              "CREATED_SUCCESSFULLY": "\tتم إنشاء اللغة بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث اللغة بنجاح."
            },
            "REGIONAL": {
              "CITIES_FETCH": "\tتم جلب المدن بنجاح",
              "STATES_FETCH": "تم جلب الدول بنجاح",
              "TIMEZONE_FETCH": "تم جلب المنطقة الزمنية بنجاح",
              "COUNTRIES_FETCH": "\tتم جلب البلدان بنجاح",
              "CITIES_NOT_FOUND": "\tلم يتم العثور على المدن",
              "STATES_NOT_FOUND": "\tلم يتم العثور على الدول",
              "TIMEZONE_NOT_FOUND": "\tلم يتم العثور على المنطقة الزمنية",
              "COUNTRIES_NOT_FOUND": "\tلم يتم العثور على البلدان"
            },
            "DASHBOARD": {
              "SUPER_ADMIN": "\tتم جلب لوحة تحكم المشرف المتميز بنجاح."
            },
            "FE_BRANCH": {
              "BRANCH": "فرع",
              "ADD_BRANCH": "\tإضافة فرع",
              "BRANCH_NAME": "\tاسم الفرع",
              "EDIT_BRANCH": "\tتحرير فرع",
              "LIST_BRANCH": "\tفرع القائمة",
              "VIEW_BRANCH": "\tعرض الفرع",
              "BRANCH_EMAIL": "\tالبريد الإلكتروني للفرع",
              "DELETE_BRANCH": "\tحذف الفرع",
              "UPDATE_BRANCH": "\tتحديث فرع",
              "BRANCH_ADDRESS": "\tعنوان فرع",
              "ADD_BRANCH_ADMIN": "\tإضافة مدير فرع",
              "EDIT_BRANCH_ADMIN": "\tتحرير مدير الفرع",
              "BRANCH_INFORMATION": "\tمعلومات الفرع",
              "UPLOAD_BRANCH_LOGO": "تحميل شعار الفرع",
              "ARE_YOU_SURE_WANT_TO_DELETE":
                  "هل أنت متأكد أنك تريد حذف هذا الفرع؟"
            },
            "FE_COMMON": {
              "NO": "\t#",
              "ADD": "\tيضيف",
              "NOO": "\tلا",
              "YES": "\tنعم",
              "ZIP": "\tالرمز البريدي",
              "ltr": "\tلتر",
              "rtl": "rtl",
              "CITY": "مدينة",
              "DATE": "\tتاريخ",
              "MODE": "\tوضع",
              "NAME": "\tاسم",
              "NEXT": "\tالتالي",
              "SAVE": "\tيحفظ",
              "SEND": "\tيرسل",
              "USER": "\tمستخدم",
              "CLASS": "\tفصل",
              "CLEAR": "واضح",
              "EMAIL": "\tبريد إلكتروني",
              "STATE": "\tولاية",
              "TOTAL": "\tالمجموع",
              "UP_TO": "\tيصل إلى",
              "USERS": "\tالمستخدمين",
              "ACTION": "\tفعل",
              "CANCEL": "\tيلغي",
              "CREATE": "\tيخلق",
              "EXPORT": "\tيصدّر",
              "FILTER": "منقي",
              "FRIDAY": "\tجمعة",
              "GENDER": "\tجنس",
              "IMPORT": "\tيستورد",
              "MONDAY": "\tالاثنين",
              "SEARCH": "\tيبحث",
              "SELECT": "يختار",
              "STEP_1": "\tالخطوة 1",
              "STEP_2": "\tالخطوة 2",
              "STEP_3": "\tالخطوه 3",
              "SUBMIT": "\tيُقدِّم",
              "SUNDAY": "الأحد",
              "ADDRESS": "\tعنوانعنوان",
              "CHECKED": "\tالتحقق",
              "COUNTRY": "دولة",
              "NO_DATA": "لايوجد بيانات",
              "PAY_NOW": "\tادفع الآن",
              "PREVIEW": "معاينة",
              "SECTION": "\tقسم",
              "TUESDAY": "\tيوم الثلاثاء",
              "DOWNLOAD": "\tتحميل",
              "END_TIME": "\tوقت النهاية",
              "PASSOWRD": "\tكلمة المرور",
              "PREVIOUS": "\tسابق",
              "SATURDAY": "\tالسبت",
              "THURSDAY": "\tيوم الخميس",
              "TIMEZONE": "\tوحدة زمنية",
              "ADMIN_DOB": "\tتاريخ ميلاد المشرف",
              "DIRECTION": "\tاتجاه",
              "LAST_NAME": "\tاسم العائلة",
              "LOAD_LESS": "\tتحميل أقل",
              "LOAD_MORE": "\tتحميل المزيد",
              "SHOW_LESS": "\tعرض أقل",
              "SHOW_MORE": "\tأظهر المزيد",
              "WEDNESDAY": "\tالأربعاء",
              "CREATED_AT": "\tأنشئت في",
              "CREATED_BY": "\tانشأ من قبل",
              "FIRST_NAME": "الاسم الأول",
              "SELECT_ALL": "\tاختر الكل",
              "START_DATE": "\tتاريخ البدء",
              "START_TIME": "\tوقت البدء",
              "ADD_SECTION": "إضافة قسم",
              "ATTACHEMENT": "مرفق",
              "DESCRIPTION": "\tوصف",
              "DROP_SELECT": "\tقم بإسقاط الملف أو تحديده",
              "MIDDLE_NAME": "\tالاسم الأوسط",
              "SEARCH_HERE": "\tابحث هنا",
              "SELECT_CITY": "\tاختر مدينة",
              "SELECT_DATE": "\tحدد تاريخ",
              "UPLOAD_FILE": "\tرفع ملف",
              "CREATED_DATE": "\tتاريخ الإنشاء",
              "EDIT_SECTION": "\tتحرير القسم",
              "PHONE_NUMBER": "رقم التليفون",
              "SECTION_NAME": "\tاسم القسم",
              "SELECT_STATE": "\tاختر ولايه",
              "VIEW_SECTION": "\tعرض القسم",
              "MOBILE_NUMBER": "\tرقم الهاتف المحمول",
              "ROWS_PER_PAGE": "\tصفوف لكل صفحة",
              "DELETE_SECTION": "\tحذف القسم",
              "SELECT_COUNTRY": "\tحدد الدولة",
              "SELECT_SUBJECT": "\t\tحدد الموضوع",
              "TOGGLE_COLUMNS": "تبديل الأعمدة",
              "BILLING_ADDRESS": "\tعنوان وصول الفواتير",
              "MULTIPLE_SELECT": "\tتحديد متعدد",
              "SELECT_TIMEZONE": "اختر المجال الزمني",
              "UNLIMITED_USERS": "\tعدد غير محدود من المستخدمين",
              "LABEL_START_DATE": "\tتاريخ البدء*",
              "QUICK_PAGE_LINKS": "\tروابط الصفحات السريعة",
              "SEARCH_YOUR_PAGE": "ابحث في صفحتك\t",
              "LABEL_DESCRIPTION": "\tوصف*",
              "PERMENENT_ADDRESS": "\tالعنوان الثابت",
              "UNLIMITED_BRANCHES": "\tفروع غير محدودة",
              "NO_TICKETS_AVAILABLE": "\tلا توجد تذاكر متاحة.!!",
              "SAMPLE_FILE_DOWNLOAD": "\tتحميل ملف العينة",
              "EMERGENCY_PHONE_NUMBER": "\tرقم هاتف الطوارئ",
              "WHITE_SPACE_NOT_INCLUDE": "لا ينبغي تضمين المسافة البيضاء.",
              "NO_CONVERSATIONS_SELECTED": "\tلم يتم تحديد أي محادثات.",
              "ARE_YOU_SURE_WANT_DELETE_SECTION":
                  "هل أنت متأكد أنك تريد حذف هذا القسم؟"
            },
            "FE_COURSE": {
              "LEVEL": "\tمستوى\tمستوى",
              "COURSE": "\tدورة",
              "RATING": "\tتقييم",
              "REVIEW": "\tمراجعة",
              "LESSONS": "\tدروس",
              "ADD_USER": "\tإضافة مستخدم",
              "CATEGORY": "\tفئة",
              "END_DATE": "\tتاريخ الانتهاء",
              "NO_LESSON": "لا يوجد درس متاح",
              "RATE_THIS": "\tقيم هذا",
              "ADD_COURSE": "\tإضافة دورة",
              "BASIC_INFO": "\tمعلومات اساسية",
              "CREATED_AT": "\tأنشئت في",
              "NO_SECTION": "لا توجد أقسام متاحة",
              "VISIBILITY": "\tالرؤية",
              "COURSE_INFO": "\tدورة معلومات",
              "COURSE_NAME": "\tاسم الدورة التدريبية*",
              "COURSE_TYPE": "\tدورة كتابية",
              "EDIT_COURSE": "تحرير الدورة",
              "ENROLLEMENT": "\tالتسجيل",
              "LABEL_LEVEL": "مستوى*\t",
              "VIEW_COURSE": "عرض الدورة",
              "ADD_CATEGORY": "إضافة فئة",
              "ADD_MULTIPLE": "إضافة متعددة",
              "COURSE_IMAGE": "\tصورة الدورة",
              "START_LESSON": "\tابدأ الدرس",
              "CATEGORY_NAME": "\tاسم التصنيف*",
              "DELETE_COURSE": "\tحذف الدورة",
              "EDIT_CATEGORY": "\tتحرير الفئة",
              "MANAGE_COURSE": "\tإدارة الدورة",
              "VIEW_CATEGORY": "\tعرض الفئة",
              "LABEL_CATEGORY": "\tفئة*",
              "LABEL_END_DATE": "تاريخ الانتهاء*",
              "COURSE_OVERVIEW": "\tنظرة عامة على الدورة",
              "DELETE_CATEGORY": "حذف الفئة\t",
              "PARENT_CATEGORY": "القسم الرئيسي",
              "COURSE_FULL_NAME": "الاسم الكامل للدورة",
              "COURSE_VISIBILITY": "\tرؤية الدورة",
              "SHORT_DESCRIPTION": "\tوصف قصير",
              "DETAIL_DESCRIPTION": "\tوصف التفاصيل",
              "COURSE_OVERVIEW_URL":
                  "\tعنوان URL للنظرة العامة على الدورة التدريبية",
              "MINIMUM_REQUIREMENT": "\tالحد الأدنى من المتطلبات",
              "COURSE_OVERVIEW_LIST": "نظرة عامة على الدورة\t",
              "PARENT_CATEGORY_NAME": "اسم الفئة الأصل\t",
              "DELETE_COURSE_WARNING":
                  "\tهل أنت متأكد أنك تريد حذف هذه الدورة؟",
              "UPLOAD_CATEGORY_IMAGE": "تحميل صورة الفئة",
              "NO_COURSES_ARE_AVAILABLE": "\tلا توجد دورات متاحة.",
              "LABEL_MINIMUM_REQUIREMENT": "\tالحد الأدنى من المتطلبات",
              "ARE_YOU_SURE_DELETE_CATEGORY":
                  "هل أنت متأكد أنك تريد حذف هذه الفئة؟\t"
            },
            "FE_STATUS": {
              "OPEN": "يفتح",
              "ACTIVE": "\tنشيط",
              "CLOSED": "\tمغلق",
              "FINISH": "\tينهي",
              "NEWEST": "الأحدث",
              "OLDEST": "\tالأقدم",
              "STATUS": "\tحالة",
              "PENDING": "قيد الانتظار",
              "RESOLVED": "تم الحل",
              "COMPLETED": "\tمكتمل",
              "IN_ACTIVE": "\tغير نشط",
              "IN_PROGRESS": "\tفي تَقَدم",
              "LABEL_STATUS": "\tحالة*",
              "IN_ACTIVE_SMALL": "\tغير نشط"
            },
            "FE_TICKET": {
              "INBOX": "صندوق الوارد",
              "TICKET": "\tتذكرة",
              "CREATED": "\tمخلوق",
              "REGARDS": "\tيعتبر",
              "ALL_TICKET": "\tجميع التذاكر",
              "ISSUE_TYPE": "نوع القضية",
              "CREATE_TICKE": "\tإنشاء تذكرة",
              "CREATE_TICKET": "إنشاء تذكرة"
            },
            "LIBRARIAN": {
              "NOT_FOUND": "\tلم يتم العثور على أمين المكتبة",
              "EXCEL_NOT_FOUND": "لم يتم العثور على Excel أمين المكتبة",
              "GET_SUCCESSFULLY": "\tأمين المكتبة الحصول على النجاح.",
              "IMPORT_SUCESSFULLY": "\tتم استيراد المكتبة بنجاح.",
              "CREATED_SUCCESSFULLY": "\tتم إنشاء أمين المكتبة بنجاح.",
              "DELETED_SUCCESSFULLY": "تم حذف أمين المكتبة بنجاح.",
              "UPDATED_SUCCESSFULLY": "\tتم تحديث أمين المكتبة بنجاح.",
              "GET_LIST_SUCCESSFULLY":
                  "تم الحصول على قائمة أمين المكتبة بنجاح.\t",
              "EXCEL_DEPARTMENT_ISSUE": "القسم المقدم غير موجود\t",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "أمين المكتبة في ورقة Excel موجود بالفعل\t"
            },
            "TIMESHEET": {
              "TIMESHEET_NOT_FOUND": "لم يتم العثور على الجدول الزمني.\t",
              "CREATED_SUCCESSFULLY": "تم إنشاء الجدول الزمني بنجاح.\t",
              "GET_TIMESHHET_SUCCESS":
                  "تم الحصول على قائمة الجدول الزمني بنجاح.",
              "EDIT_TIMESHEET_SUCCESS": "\tتحرير الجدول الزمني بنجاح.",
              "DELETE_TIMESHEET_SUCCESS": "تم حذف الجدول الزمني بنجاح.\t"
            },
            "ASSET_TYPE": {
              "NOT_EXIST": "نوع الأصل غير موجود.\t",
              "NAME_EXIST": "اسم نوع الأصل موجود بالفعل.\t",
              "GET_LISTING": "احصل على تفاصيل نوع الأصل بنجاح.\t",
              "EDIT_SUCCESSFULLY": "تم تعديل نوع الأصل بنجاح.\t",
              "CREATED_SUCCESSFULLY": "تم تعديل نوع الأصل بنجاح.\t"
            },
            "ATTACHMENT": {"IMAGE_UPLOAD_ERROR": "خطأ في تحميل الصورة.\t"},
            "ATTENDANCE": {
              "GET_ALL": "تم الحصول على قائمة الحضور بنجاح..\t",
              "NOT_EXIST": "الحضور غير موجود.",
              "NOT_FOUND": "لم يتم العثور على الحضور.\t",
              "GET_DETAILS": "تم الحصول على تفاصيل الحضور بنجاح.\t",
              "ALREADY_EXIST": "الحضور موجود بالفعل.\t",
              "CREATED_SUCCESSFULLY": "تم إنشاء الحضور بنجاح.\t",
              "DELETED_SUCCESSFULLY": "تم حذف الحضور بنجاح.\t",
              "UPDATED_SUCCESSFULLY": "تم تحديث الحضور بنجاح.\t"
            },
            "BOOK_ISSUE": {
              "LOST": "تم وضع علامة على الكتاب كمفقود.\t",
              "DAMAGED": "تم الإبلاغ عن الكتاب المرتجع بأنه تالف.\t",
              "REJECTED": "تم رفض الكتاب المطلوب\t",
              "NOT_FOUND": "لم يتم العثور على إصدار الكتاب\t",
              "NOT_DELETED":
                  "لم يتم حذف مشكلة الكتاب بسبب اعتماده على وحدات أخرى\t",
              "SOME_DELETED": "\tتم حذف بعض الكتب",
              "ALREADY_EXIST": "\tإصدار الكتاب موجود بالفعل",
              "EXCEL_NOT_FOUND": "لم يتم العثور على إصدار الكتاب Excel",
              "PENDING_CREATED": "\tتم إنشاء طلب إصدار الكتاب المعلق.",
              "GET_SUCCESSFULLY": "\tتم إصدار الكتاب بنجاح.",
              "AlREADY_REQUESTED": "\tلقد تم بالفعل إصدار الكتاب",
              "QUANTITY_FINISHED":
                  "\tلا توجد نسخ كافية من الكتب في المخزون لإصدار الكتاب.",
              "NAME_ALREADY_EXIST":
                  "اسم عدد الكتاب موجود بالفعل، يرجى تجربة اسم عدد آخر من الكتاب",
              "CREATED_SUCCESSFULLY": "تم إنشاء إصدار الكتاب بنجاح.\t",
              "DELETED_SUCCESSFULLY": "تم حذف إصدار الكتاب بنجاح.\t",
              "UPDATED_SUCCESSFULLY": "تم تحديث إصدار الكتاب بنجاح.\t",
              "APPROVED_SUCCESSFULLY": "تمت الموافقة على الكتاب بنجاح.\t",
              "GET_LIST_SUCCESSFULLY":
                  "تم الحصول على قائمة إصدارات الكتب بنجاح.\t",
              "LIBRARY_CARD_REQUIRED": "بطاقة المكتبة مطلوبة لإصدار الكتاب.\t",
              "RETURNED_SUCCESSFULLY": "تم إرجاع الكتاب بنجاح.\t",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "تم إنشاء ملف json الخاص بإصدار الكتاب بنجاح\t"
            },
            "CATEGORIES": {
              "NOT_FOUND": "\tلم يتم العثور على الفئات",
              "NOT_DELETED": "الفئات غير المحذوفة العلاقة موجودة.\t",
              "SOME_DELETED":
                  "تم حذف بعض السجلات بنجاح، ولم يتم حذف البعض الآخر.\t",
              "ALREADY_EXIST": "الفئة موجودة بالفعل",
              "EXCEL_NOT_FOUND": "\tالفئات لم يتم العثور على Excel",
              "GET_SUCCESSFULLY": "يتم الحصول على الفئات بنجاح.\t",
              "NAME_ALREADY_EXIST":
                  "اسم الفئات موجود بالفعل، يرجى المحاولة باستخدام اسم فئات آخر\t",
              "CREATED_SUCCESSFULLY": "تم إنشاء الفئات بنجاح.\t",
              "DELETED_SUCCESSFULLY": "تم حذف الفئات بنجاح.\t",
              "UPDATED_SUCCESSFULLY": "\tتم تحديث الفئات بنجاح.",
              "GET_LIST_SUCCESSFULLY": "يتم الحصول على قائمة الفئات بنجاح.\t",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "الفئات تم إنشاء ملف json الخاص بـ excel بنجاح\t"
            },
            "DEPARTMENT": {
              "NOT_FOUND": "\tلم يتم العثور على القسم",
              "ALREADY_EXIST":
                  "اسم القسم موجود بالفعل، يرجى المحاولة باستخدام اسم قسم آخر\t",
              "GET_DEPARTMENT": "تم الحصول على تفاصيل القسم بنجاح.\t",
              "GET_ALL_DEPARTMENT": "تم الحصول على قائمة الأقسام بنجاح..\t",
              "CREATED_SUCCESSFULLY": "تم إنشاء القسم بنجاح.",
              "DELETED_SUCCESSFULLY": "\tتم حذف القسم بنجاح.",
              "DEPARTMENT_NOT_EXIST": "\tالقسم غير موجود.",
              "UPDATED_SUCCESSFULLY": "\tتم تحديث القسم بنجاح.",
              "ALREADY_EXIST_WITH_CODE":
                  "رمز القسم موجود بالفعل، يرجى المحاولة باستخدام رمز قسم آخر",
              "DEPARTMENT_ALREADY_EXIST": "\tالقسم موجود بالفعل."
            },
            "ISSUE_TYPE": {
              "CREATED": "\tتم إنشاء نوع المشكلة بنجاح.",
              "FETCHED": "تم جلب أنواع المشكلات بنجاح.\t",
              "NOT_FOUND": "لم يتم العثور على أنواع المشاكل.\t",
              "NOT_DELETED": "نوع المشكلة غير محذوف العلاقة موجودة.\t",
              "SOME_DELETED":
                  "تم حذف بعض السجلات بنجاح، ولم يتم حذف البعض الآخر.\t",
              "ALREADY_EXIST": "نوع المشكلة موجود بالفعل.",
              "DELETED_SUCCESSFULLY": "تم حذف نوع المشكلة بنجاح.",
              "UPDATED_SUCCESSFULLY": "\tتم تحديث نوع المشكلة بنجاح."
            },
            "LIVE_CLASS": {
              "GET_ALL": "تم الحصول على قائمة الفصول المباشرة بنجاح..\t",
              "NOT_EXIST": "الفصل المباشر غير موجود.\t",
              "NOT_FOUND": "لم يتم العثور على الفصل المباشر.",
              "GET_DETAILS": "تم الحصول على تفاصيل الفصل المباشر بنجاح.",
              "ALREADY_EXIST": "\tالفصل المباشر موجود بالفعل.",
              "ALREADY_EXIST_TIME": "الفصل المباشر موجود بالفعل في ذلك الوقت.",
              "TOPIC_ALREADY_EXIST":
                  "الموضوع المباشر موجود بالفعل، يرجى المحاولة باستخدام موضوع مباشر آخر\t",
              "CREATED_SUCCESSFULLY": "تم إنشاء الفصل المباشر بنجاح.",
              "DELETED_SUCCESSFULLY": "\tتم حذف الفصل المباشر بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث الفصل المباشر بنجاح.",
              "ZOOM_CREDENTIALS_NOT_ADDED":
                  "لم تتم إضافة بيانات اعتماد التكبير/التصغير، يرجى الإضافة أولاً.\t"
            },
            "PERMISSION": {
              "ADDED": "تمت إضافة الإذن بنجاح.",
              "FETCH": "\tتم جلب الإذن بنجاح",
              "EDITED": "\tتم تعديل الإذن بنجاح.",
              "DELETED": "\tتم حذف الإذن بنجاح.",
              "UPDATED": "\tتم تحديث الإذن بنجاح.",
              "NOT_FOUND": "\tلم يتم العثور على إذن",
              "ALREADY_EXIST": "\tإذن موجود بالفعل."
            },
            "COURSE_USER": {
              "NOT_FOUND": "لم يتم العثور على مستخدم الدورة التدريبية",
              "NOT_DELETED":
                  "\tلم يتم حذف مستخدم الدورة التدريبية بسبب اعتماده على وحدات نمطية أخرى",
              "SOME_DELETED": "تم حذف بعض مستخدمي الدورة التدريبية",
              "GET_SUCCESSFULLY": "يحصل مستخدم الدورة بنجاح",
              "COURSE_USER_ASSIGNED":
                  "تم تعيين المستخدم للدورة التدريبية بنجاح\t",
              "CREATED_SUCCESSFULLY": "تم إنشاء الدورة التدريبية بنجاح\t",
              "DELETED_SUCCESSFULLY": "تم حذف مستخدم الدورة التدريبية بنجاح\t",
              "UPDATED_SUCCESSFULLY":
                  "تم تحديث مستخدم الدورة التدريبية بنجاح\t",
              "GET_LIST_SUCCESSFULLY":
                  "تم الحصول على قائمة مستخدمي الدورة التدريبية بنجاح\t",
              "USER_ASSIGNED_ALREADY":
                  "تم تعيين المستخدمين بالفعل لهذه الدورة التدريبية\t",
              "COURSE_USER_GET_SUCCESSFULLY":
                  "تم تعيين المستخدمين بالفعل لهذه الدورة التدريبية\t",
              "UPDATED_COURSE_USER_ASSIGNED": "تحديث مستخدمي الدورة المعينة\t"
            },
            "FE_REQUIRED": {
              "DAY": "اليوم مطلوب*.\t",
              "MAX": "لا ينبغي أن تتجاوز\t",
              "BODY": "الجسم مطلوب*.\t",
              "CITY": "المدينة مطلوبة*.\t",
              "CODE": "الكود مطلوب*.\t",
              "NAME": "مطلوب اسم*.",
              "ROOM": "الغرفة مطلوبة*.\t",
              "SLUG": "سبيكة مطلوبة *.\t",
              "TYPE": "النوع مطلوب*.\t",
              "ZERO": "يجب ألا يكون الإدخال 0. الرجاء إدخال قيمة غير الصفر.\t",
              "CLASS": "الفئة مطلوبة*.\t",
              "EMAIL": "مطلوب البريد الإلكتروني SMTP*.\t",
              "LEVEL": "المستوى مطلوب*.\t",
              "PRICE":
                  "يرجى إدخال سعر مقبول. ينبغي أن يكون رقمًا (على سبيل المثال، 10 أو 10.99)\t",
              "STATE": "الدولة مطلوبة*.\t",
              "TITLE": "العنوان مطلوب*.",
              "VALID": "أدخل الصحيح\t",
              "GENDER": "الجنس مطلوب*.\t",
              "RATING": "التقييم مطلوب*.\t",
              "STATUS": "\tالحالة مطلوبة*.",
              "COUNTRY": "\tالدولة مطلوبة*.",
              "LETTERS":
                  "\tيجب أن تحتوي على الحروف فقط. الأرقام والأحرف الخاصة غير مسموح بها",
              "SECTION":
                  "\tيجب أن تحتوي على الحروف فقط. الأرقام والأحرف الخاصة غير مسموح بها",
              "SUBJECT": "الرجاء تحديد الموضوع*.",
              "TEACHER": "\tمطلوب معلم*.",
              "BIO_DATA": "البيانات الحيوية مطلوبة*.\t",
              "CAPACITY": "القدرة مطلوبة*.",
              "CATEGORY": "اسم الفئة مطلوب*.",
              "END_DATE": "الرجاء تحديد تاريخ الانتهاء*.",
              "FACILITY": "مطلوب مرفق *.",
              "LOCATION": "\tالموقع مطلوب*.",
              "MINI_REQ": "الحد الأدنى من المتطلبات مطلوب*.\t",
              "NEGATIVE":
                  "لا ينبغي أن يكون رقما سلبيا. الرجاء إدخال سلسلة صالحة بدون قيم سالبة.",
              "PASSWORD": "كلمة مرور SMTP مطلوبة*.\t",
              "ROOM_MAX":
                  "يجب أن يكون رقم الغرفة قيمة عددية موجبة أقل من 5 أرقام\t",
              "SEMESTER": "مطلوب فصل دراسي*.\t",
              "TIMEZONE": "المنطقة الزمنية مطلوبة*.\t",
              "TYPE_MAX": "يجب ألا يتجاوز النوع 25 حرفًا.\t",
              "USERNAME": "مطلوب اسم مستخدم SMTP*.\t",
              "LAST_NAME": "إسم العائلة مطلوب*.\t",
              "NO_NUMBER": "لا يمكن أن تحتوي على أرقام.*\t",
              "SMTP_HOST": "مطلوب مضيف SMTP*.\t",
              "SMTP_PORT": "مطلوب منفذ SMTP*.\t",
              "BOOK_TITLE": "عنوان الكتاب مطلوب*.\t",
              "CLASS_NAME": "اسم الفئة مطلوب*.\t",
              "DEPARTMENT": "القسم مطلوب*.\t",
              "DETAIL_REQ": "الوصف التفصيلي مطلوب*.",
              "FIRST_NAME": "\tالإسم الأول مطلوب*.",
              "INPUT_ZERO":
                  "يجب ألا يكون الإدخال 0. الرجاء إدخال قيمة غير الصفر.",
              "MORE_SPECE": "\tلا يسمح بأكثر من مسافة واحدة بين الأحرف.",
              "RATING_MAX": "يجب ألا تتجاوز المراجعة 450 حرفًا.\t",
              "START_DATE": "يجب ألا تتجاوز المراجعة 450 حرفًا.\t",
              "BLOOD_GROUP": "مطلوب فصيلة الدم *.\t",
              "BOOK_NUMBER": "مطلوب رقم الكتاب*.\t",
              "DESCRIPTION": "الوصف مطلوب*.\t",
              "IS_Required": "مطلوب*.",
              "MIDDLE_NAME": "الاسم الأوسط مطلوب*.",
              "NATIONALITY": "الجنسية مطلوبة*.\t",
              "ROOM_NUMBER": "مطلوب رقم الغرفة*.",
              "SELECT_DATE": "الرجاء تحديد التاريخ*.",
              "FACILITY_MAX": "\tيجب ألا يتجاوز المرفق 100 حرف.",
              "INPUT_COMMON":
                  "يجب ألا يكون الإدخال رقمًا سالبًا. الرجاء إدخال سلسلة صالحة بدون قيم سالبة.",
              "LOCATION_MAX": "يجب ألا يتجاوز الموقع 25 حرفًا.",
              "PASSWORD_ACC": "يجب أن تتكون كلمة المرور من 8 أحرف أو أكثر",
              "PASSWORD_MAX": "يجب أن يبلغ طول كلمة المرور 32 حرفًا كحد أقصى",
              "PHONE_NUMBER": "\tرقم الهاتف مطلوب*.",
              "ROOM_NUMERIC": "يجب أن يحتوي رقم الغرفة على قيم رقمية فقط.",
              "SECTION_NAME": "اسم القسم مطلوب*.",
              "SELECT_CLASS": "\tالرجاء تحديد الصف*.",
              "SEMESTER_VAL": "يجب ألا يتجاوز الفصل الدراسي 12 حرفًا.\t",
              "SUBJECT_CODE": "مطلوب رمز الموضوع*.\t",
              "SUBJECT_NAME": "اسم الموضوع مطلوب*.\t",
              "BOOK_CATEGORY": "فئة الكتاب مطلوبة.*\t",
              "INVALID_EMAIL": "بريد إلكتروني خاطئ.\t",
              "BOOK_TITLE_MAX": "\tيجب ألا يزيد عنوان الكتاب عن 25 حرفًا.*",
              "DEPARTMENT_MAX": "يجب ألا يتجاوز اسم القسم 25 حرفًا.",
              "SELECT_TEACHER": "\tالرجاء اختيار المعلم*.",
              "TOTAL_QUANTITY": "\tالرجاء اختيار المعلم*.",
              "ZIP_VALIDATION": "يجب أن يتكون الرمز البريدي من رقم",
              "BOOK_NUMBER_VAL": "يجب أن يكون رقم الكتاب رقمًا غير سالب*.",
              "DEPARTMENT_NAME": "اسم القسم مطلوب*.",
              "IMPORT_VALIDATE":
                  "يُسمح فقط بملفات XLSX. يرجى تحميل الملفات الصالحة.",
              "UPLOAD_SYLLABUS": "يرجى تحميل المنهج*.\t",
              "BOOK_COMBINATION":
                  "يجب أن يحتوي رقم الكتاب على الحروف الهجائية والأرقام فقط.\t",
              "BOOK_QUANTIY_VAL":
                  "يجب أن تكون الكمية الإجمالية عددًا صحيحًا.\t",
              "EMAIL_VALIDATION": "البريد الالكتروني مطلوب*.\t",
              "SUBJECT_CODE_VAL": "يجب ألا يتجاوز رمز الموضوع 5 أحرف.",
              "SUBJECT_NAME_MAX": "يجب ألا يتجاوز اسم الموضوع 25 حرفًا.",
              "BOOK_CATEGORY_MAX": "يجب ألا تزيد فئة الكتاب عن 255 حرفًا.*\t",
              "CAPACITY_NEGATIVE": "يجب أن تكون السعة رقمًا موجبًا.\t",
              "HYPHEN_UNDERSCORE":
                  "يجب ألا ينتهي بواصلة أو شرطة سفلية واحدة.\t",
              "SELECT_ISSUE_DATE": "\tاختر تاريخ الإصدار*.",
              "SPECIAL_CHARACTER":
                  "يجب ألا يحتوي على حرف خاص ويبدأ أو ينتهي بحرف خاص، ويجب ألا يكون رقمًا سالبًا وعشريًا.",
              "MATCH_NEW_PASSWORD":
                  "كلمات المرور غير متطابقة. يرجى التأكد من تطابق كلمات المرور تمامًا.\t",
              "SECTION_VALIDATION": "\tالقسم مطلوب*.",
              "SELECT_RETURN_DATE": "حدد تاريخ العودة*.\t",
              "SUBJECT_VALIDATION": "الموضوع مطلوب*.\t",
              "ZIP_MAX_VALIDATION":
                  "يجب أن يتكون الرمز البريدي من 10 أرقام كحد أقصى.",
              "ZIP_MIN_VALIDATION":
                  "\tيجب أن يتكون الرمز البريدي من 6 أرقام على الأقل.*",
              "CATEGORY_VALIDATION": "\tاختيار القسم مطلوب.*",
              "DEPARTMENT_NAME_VAL":
                  "يجب أن يحتوي اسم القسم على الحروف الهجائية والأرقام فقط",
              "LIBRARY_CARD_NUMBER": "\tمطلوب رقم بطاقة المكتبة*.",
              "PASSOWRD_LOWER_CASE": "حرف صغير واحد على الأقل\t",
              "PASSOWRD_ONE_NUMBER": "رقم واحد على الأقل\t",
              "PASSOWRD_UPPER_CASE": "\tحرف كبير واحد على الأقل",
              "PASSWORD_VALIDATION": "كلمة المرور مطلوبة*.",
              "RELATION_VALIDATION": "\tالعلاقة مطلوبة*.",
              "SELECT_DATE_OF_BIRTH": "\tالرجاء تحديد تاريخ الميلاد.",
              "STREET_ADDRESS_LINE_1": "\tمطلوب سطر عنوان الشارع 1*.",
              "STREET_ADDRESS_LINE_2": "\tمطلوب سطر عنوان الشارع 2*.",
              "SUBJECT_NAME_NEGATIVE": "يجب ألا يكون اسم الموضوع سلبيا\t",
              "SUBJECT_NAME_REQUIRED": "\tالموضوع مطلوب*.",
              "ZIP_SIX_TEN_VALIDATION":
                  "'يجب أن يتكون الرمز البريدي من رقم ويجب أن يتكون من 6 إلى 10 أحرف.",
              "NEW_PASSWORD_VALIDATION":
                  "يجب ألا تكون كلمة المرور الجديدة هي نفس كلمة المرور القديمة\t",
              "PASSWORD_MAX_VALIDATION":
                  "يجب أن تتكون كلمة المرور من 8 إلى 12 حرفًا، وتحتوي على حرف صغير واحد على الأقل، وحرف كبير واحد، ورقم واحد، وحرف خاص واحد (@\$!%*?&)",
              "EMAIL_ADDRESS_VALIDATION": "\tعنوان البريد الإلكتروني مطلوب*.",
              "SUBJECT_NAME_COMBINATION":
                  "\tيجب أن يحتوي اسم الموضوع على الحروف الهجائية والأرقام فقط.",
              "SUBJEST_SEMESTER_NEGATIVE":
                  "يجب أن يكون الفصل الدراسي غير سلبي*.\t",
              "LAST_NAME_NUMBER_VALIDATION":
                  "لا يمكن أن يحتوي اسم العائلة على أرقام*.",
              "FIRST_NAME_NUMBER_VALIDATION":
                  "لا يمكن أن يحتوي الاسم الأول على أرقام*.\t",
              "SUBJEST_SEMESTER_COMBINATION":
                  "\tيجب أن يحتوي الفصل الدراسي على الحروف الهجائية والأرقام فقط.",
              "MIDDLE_NAME_NUMBER_VALIDATION":
                  "\tلا يمكن أن يحتوي الاسم الأوسط على أرقام*."
            },
            "FE_SYLLABUS": {
              "SYLLABUS": "\tالمنهج",
              "ADD_SYLLABUS": "أضف المنهج",
              "EDIT_SYLLABUS": "تحرير المنهج",
              "SYLLABUS_LIST": "قائمة المنهج",
              "DELETE_SYLLABUS": "\tحذف المنهج",
              "UPLOAD_SYLLABUS": "تحميل المنهج",
              "ARE_YOU_SURE_WANT_TO_DELETE_THIS_SYLLABUS":
                  "\tهل أنت متأكد أنك تريد حذف هذا المنهج؟"
            },
            "TASK_STATUS": {
              "TASK_STATUS_EXISTS": "المهمة موجودة بالفعل.",
              "GET_ALL_TASK_SUCCESS": "\tالحصول على كافة المهام بنجاح.",
              "TASK_STATUS_NOT_FOUND": "لم يتم العثور على حالة المهمة.",
              "ADD_TASK_STATUS_SUCCESS": "\tتمت إضافة حالة المهمة بنجاح.",
              "TASK_STATUS_NOT_DELETED": "حالة المهمة غير/غير قادر على الحذف.",
              "TASK_STATUS_NOT_UPDATED":
                  "\tحالة المهمة غير/غير قادر على التحديث",
              "FETCH_TASK_STATUS_SUCCESS": "تم جلب حالة المهمة بنجاح.",
              "DELETE_TASK_STATUS_SUCCESS": "تم حذف حالة المهمة بنجاح.\t",
              "UPDATE_TASK_STATUS_SUCCESS": "تم تحديث حالة المهمة بنجاح.\t"
            },
            "FE_DASHBOARD": {"DASHBOARD": "لوحة القيادة\t"},
            "FE_LIBRARIAN": {
              "LIBRARIAN": "أمين المكتبة\t",
              "ADD_LIBRARIAN": "إضافة أمين المكتبة\t",
              "EDIT_LIBRARIAN": "تحرير أمين المكتبة\t",
              "VIEW_LIBRARIAN": "عرض أمين المكتبة\t",
              "DELETE_LIBRARIAN": "حذف أمين المكتبة\t",
              "ARE_YOU_DELETE_LIBRARIAN":
                  "هل أنت متأكد أنك تريد حذف أمين المكتبة هذا؟.\t"
            },
            "LIBRARY_CARD": {
              "NOT_FOUND": "لم يتم العثور على بطاقة المكتبة\t",
              "ALREADY_EXIST": "\tبطاقة المكتبة موجودة بالفعل",
              "CREATED_SUCCESSFULLY": "\tتم إنشاء بطاقة المكتبة بنجاح.",
              "UPDATED_SUCCESSFULLY": "\tتم تحديث بطاقة المكتبة بنجاح.",
              "CARD_NUMBER_ALREADY_EXIST":
                  "رقم بطاقة المكتبة موجود بالفعل أو أن المستخدم لديه بطاقة مكتبة بالفعل"
            },
            "ORGANIZATION": {
              "NOT_FOUND": "\tلم يتم العثور على المنظمة",
              "NOT_DELETED": "\tالعلاقة غير المحذوفة للمؤسسة موجودة.",
              "SOME_DELETED":
                  "\tتم حذف بعض السجلات بنجاح، ولم يتم حذف البعض الآخر.",
              "ALREADY_EXIST":
                  "اسم المنظمة موجود بالفعل، يرجى المحاولة باستخدام اسم منظمة آخر",
              "GET_SUCCESSFULLY": "المنظمة تحصل على النجاح.",
              "CREATED_SUCCESSFULLY": "تم إنشاء المنظمة بنجاح.",
              "DELETED_SUCCESSFULLY": "\tتم حذف المؤسسة بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث المنظمة بنجاح.\t",
              "GET_LIST_SUCCESSFULLY": "تم الحصول على قائمة المنظمات بنجاح.\t"
            },
            "SUBSCRIPTION": {
              "SUBSCRIPTION_SUCCESSFULLY": "\tالحصول على تفاصيل الاشتراك بنجاح."
            },
            "BOOK_CATEGORY": {
              "NOT_DELETED": "فئة الكتاب غير محذوفة العلاقة موجودة.",
              "SOME_DELETED":
                  "تم حذف بعض السجلات بنجاح، ولم يتم حذف البعض الآخر.",
              "ALREADY_EXIST": "\tفئة الكتاب موجودة بالفعل",
              "EXCEL_NOT_FOUND": "لم يتم العثور على فئة الكتاب Excel\t",
              "GET_SUCCESSFULLY": "تم الحصول على فئة الكتاب بنجاح.\t",
              "NAME_ALREADY_EXIST":
                  "اسم فئة الكتاب موجود بالفعل، يرجى المحاولة باستخدام اسم فئة كتاب آخر",
              "CREATED_SUCCESSFULLY": "تم إنشاء فئة الكتاب بنجاح.",
              "DELETED_SUCCESSFULLY": "\tتم حذف فئة الكتاب بنجاح.",
              "UPDATED_SUCCESSFULLY": "\tتم تحديث فئة الكتاب بنجاح.",
              "GET_LIST_SUCCESSFULLY":
                  "\tتم الحصول على قائمة فئات الكتب بنجاح.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "تم إنشاء ملف json الخاص بفئة الكتاب بنجاح"
            },
            "CR_VALIDATION": {
              "VALID_STATUS": "الرجاء إدخال حالة صالحة",
              "INVALID_CR_ID": "\tالرجاء إدخال معرف السجل التجاري الصحيح",
              "CR_DESC_REQUIRED": "\tتغيير وصف الطلب مطلوب",
              "CR_NAME_REQUIRED": "تغيير اسم الطلب مطلوب.",
              "CR_HOURS_REQUIRED": "مطلوب تغيير ساعات الطلب",
              "CR_STATUS_REQUIRED": "الرجاء إدخال تغيير حالة الطلب\t",
              "INVALID_PROJECT_ID": "الرجاء إدخال معرف مشروع صالح\t",
              "PROJECT_ID_REQUIRED": "معرف المشروع مطلوب.\t"
            },
            "FE_ASSIGNMENT": {
              "ASSIGNMENT": "\tتكليف",
              "ADD_ASSIGNMENT": "\tإضافة مهمة",
              "ASSIGNMENT_DATE": "تاريخ التعيين",
              "ASSIGNMENT_LIST": "\tقائمة المهام",
              "ASSIGNMENT_TIME": "وقت المهمة",
              "EDIT_ASSIGNMENT": "تحرير الواجب",
              "ASSIGNMENT_TITLE": "\tعنوان المهمة",
              "DELETE_ASSIGNMENT": "\tحذف الواجب",
              "ADD_ASSIGNMENT_TITLE": "\tأضف عنوان المهمة",
              "ASSIGNMENT_DESCRIPTION": "\tوصف المهمة",
              "ARE_YOU_DELETE_ASSIGNMENT":
                  "\tهل أنت متأكد أنك تريد حذف هذه المهمة؟",
              "ARE_YOU_DELETE_ASSIGNMENT_LIST":
                  "هل أنت متأكد أنك تريد حذف هذه المهمة؟"
            },
            "FE_ATTENDANCE": {
              "A": "\tأ",
              "L": "\tل",
              "P": "\tص",
              "HL": "\tهل",
              "OF": "\tل",
              "ON": "\tعلى",
              "WK": "\tدبليو كيه",
              "LATE": "\tمتأخر",
              "ROLL": "\tلفافة",
              "LEAVE": "\tيترك",
              "ABSENT": "\tغائب",
              "REG_NO": "رقم التسجيل",
              "HALFDAY": "\tنصف يوم",
              "PRESENT": "\tحاضر",
              "REMARKS": "ملاحظات",
              "EMPLOYEE": "\tموظف",
              "STAFF_ID": "\tمعرف الموظفين",
              "STUDENTS": "\tطلاب",
              "EMPLOYEES": "\tموظفين",
              "ATTENDANCE": "\tحضور",
              "YOUR_CHILD": "طفلك",
              "SELECT_ROLE": "حدد الدور",
              "LAST_UPDATED": "\tآخر تحديث",
              "SELECT_CLASS": "\tاختر فئة",
              "SELECT_MONTH": "\tاختر الشهر",
              "STUDENT_LIST": "\tقائمة الطلاب",
              "EMPLOYEE_LIST": "\tقائمة موظف",
              "MY_ATTENDANCE": "حضوري",
              "YOUR_CHILDREN": "\tأطفالك",
              "SELECT_STUDENT": "\tحدد الطالب",
              "SELECT_EMPLOYEE": "\tحدد الموظف",
              "SELECT_SECTIONS": "حدد الأقسام",
              "TAKE_ATTENDANCE": "خذ الحضور",
              "ATTENDANCE_REPORT": "تقرير الحضور"
            },
            "FE_PLACHOLDER": {
              "ZIP": "أدخل الرمز البريدي",
              "NAME": "\tأدخل الاسم",
              "TYPE": "أدخل النوع",
              "EMAIL": "\tأدخل البريد الإلكتروني",
              "LEVEL": "\tاختار مستوى",
              "TITLE": "أدخل العنوان",
              "COURSE": "\tاختر الدورة من القائمة",
              "GENDER": "\tحدد نوع الجنس",
              "STATUS": "\tاختر الحالة",
              "ADDRESS": "أدخل العنوان",
              "CAPCITY": "\tأدخل القدرة",
              "MINUTES": "\tدقائق",
              "SECTION": "\tاختر القسم",
              "SUBJECT": "\tأدخل الموضوع",
              "CATEGORY": "\tاختر الفئة",
              "FACILITY": "\tأدخل المنشأة",
              "LANGUAGE": "\tاختار اللغة",
              "LOCATION": "إدخال الدولة",
              "PASSWORD": "أدخل كلمة المرور\t",
              "SEMESTER": "أدخل الفصل الدراسي",
              "DEPARMENT": "\tاختر القسم",
              "LAST_NAME": "إدخال اسم آخر",
              "SMTP_HOST": "\tأدخل مضيف SMTP",
              "SMTP_PORT": "\tأدخل منفذ SMTP",
              "CLASS_NAME": "\tأدخل اسم الفصل",
              "FIRST_NAME": "\tأدخل الاسم الأول",
              "SMTP_EMAIL": "\tأدخل البريد الإلكتروني SMTP",
              "START_DATE": "\tحدد تاريخ البدء",
              "TITLE_TEXT": "\tأدخل نص العنوان",
              "BLOOD_GROUP": "\tحدد فصيلة الدم",
              "BRANCH_NAME": "\tأدخل اسم الفرع",
              "FOOTER_TEXT": "\tأدخل نص التذييل",
              "LESSON_NAME": "\tأدخل اسم الدرس الخاص بك",
              "LESSON_TYPE": "\tاختر نوع الدرس",
              "MIDDLE_NAME": "أدخل الاسم الأوسط",
              "NATIONALITY": "\tأدخل الجنسية",
              "RETURN_FINE": "\tأدخل غرامة هنا",
              "ROOM_NUMBER": "\tأدخل رقم الغرفة",
              "SELECT_DATE": "\tحدد تاريخ",
              "SELECT_ROLE": "حدد الدور",
              "SELECT_ROOM": "\tاختر الغرفة",
              "SELECT_USER": "\tحدد المستخدم هنا",
              "BRANCH_EMAIL": "\tأدخل البريد الإلكتروني للفرع",
              "ENTER_REMARK": "أدخل الملاحظة هنا",
              "SECTION_NAME": "\tأدخل اسم القسم",
              "SELECT_CLASS": "حدد الفصل",
              "SELECT_USERS": "\tحدد المستخدمين",
              "SUBJECT_CODE": "أدخل رمز الموضوع",
              "SUBJECT_NAME": "أدخل اسم الموضوع",
              "BOOK_CATEGORY": "\tأدخل اسم فئة الكتاب",
              "CATEGORY_NAME": "\tأدخل اسم الفئة",
              "SMTP_HOSTNAME": "\tأدخل اسم مضيف SMTP",
              "SMTP_PASSWORD": "\tأدخل كلمة مرور SMTP",
              "SMTP_USERNAME": "\tأدخل اسم مستخدم SMTP",
              "BRANCH_ADDRESS": "\tأدخل عنوان الفرع",
              "SECTION_NUMBER": "أدخل رقم القسم الخاص بك",
              "SELECT_SECTION": "\tاختر القسم",
              "SELECT_SUBJECT": "\tحدد الموضوع",
              "SELECT_TEACHER": "\tاختر المعلم",
              "ZOOM_CLIENT_ID": "\tأدخل معرف عميل التكبير",
              "DEPARTMENT_NAME": "\tأدخل اسم القسم",
              "LESSON_DURATION": "\tأدخل المدة",
              "SECTION_DETAILS": "\tأدخل تفاصيل القسم",
              "SELECT_END_TIME": "\tحدد وقت الانتهاء",
              "SMTP_FROM_EMAIL": "\tأدخل من البريد الإلكتروني",
              "ZOOM_ACCOUNT_ID": "\tأدخل معرف حساب التكبير",
              "COURSE_FULL_NAME": "\tأدخل اسم الدورة",
              "DEPARTMNENT_CODE": "\tأدخل رمز القسم",
              "SELECT_ROLE_HERE": "\tاختر الدور هنا",
              "CLASS_DESCRIPTION": "أدخل وصف الفصل",
              "SELECT_ISSUE_DATE": "\tحدد تاريخ الإصدار",
              "SELECT_START_TIME": "\tحدد وقت البدء",
              "BRANCH_INFORMATION": "أدخل معلومات الفرع",
              "SELECT_RETURN_DATE": "\tحدد تاريخ العودة",
              "ZOOM_CLIENT_SECRET": "\tأدخل سر عميل التكبير",
              "LIBRARY_CARD_NUMBER": "أدخل رقم بطاقة المكتبة",
              "SECTION_DESCRIPTION": "أدخل وصف القسم",
              "SELECT_CLASS_METHOD": "\tحدد طريقة الفصل",
              "SELECT_FOR_EVERYONE": "\tاختر للجميع",
              "SUBJECT_DESCRIPTION": "\tأدخل وصف الموضوع",
              "CATEGORY_DESCRIPTION": "أدخل وصف الفئة",
              "PARENT_CATEGORY_NAME": "أدخل اسم الفئة الأصل",
              "SELECT_BOOK_CATEGORY": "\tاختر فئة الكتاب",
              "DEPARTMENT_DESCRIPTION": "\tأدخل وصف القسم"
            },
            "CPU_VALIDATION": {
              "VALID_STATUS": "\tالرجاء إدخال حالة صالحة.",
              "NAME_REQUIRED": "\tمطلوب وحدة المعالجة المركزية.",
              "STATUS_REQUIRED": "\tحالة وحدة المعالجة المركزية مطلوبة."
            },
            "EMAIL_TEMPLATE": {
              "EDITED": "تم تعديل قالب البريد الإلكتروني بنجاح.",
              "CREATED": "تمت إضافة قالب البريد الإلكتروني بنجاح.",
              "DELETED": "\tتم حذف قالب البريد الإلكتروني بنجاح.",
              "DETAILS": "\tتم جلب قالب البريد الإلكتروني بنجاح.",
              "NOT_EXISTS": "\tلم يتم العثور على قالب البريد الإلكتروني.",
              "TITLE_EXISTS": "عنوان قالب البريد الإلكتروني هذا موجود بالفعل.",
              "ALL_EMAIL_TEMPLATE":
                  "\tاحصل على كل قالب البريد الإلكتروني بنجاح."
            },
            "PLAN_VALIDATOR": {
              "MODULES": "مطلوب معرف الوحدات",
              "PLAN_TYPE": "\tنوع الخطة مطلوب",
              "PLAN_TENURE": "\tمدة الخطة المطلوبة",
              "NAME_REQUIRED": "\tاسم الخطة مطلوب",
              "PRICE_REQUIRED": "\tسعر الخطة مطلوب.",
              "CURRENCY_REQUIRED": "\tعملة الخطة مطلوبة"
            },
            "PUBLIC_HOLIDAY": {
              "LEAVE_GET": "\tجلب العطلة العامة بنجاح.",
              "LEAVE_NOT_FOUND": "\tلم يتم العثور على عطلة عامة.",
              "ADD_LEAVE_SUCCESS": "\tتمت إضافة العطلة الرسمية بنجاح.",
              "EDIT_LEAVE_SUCCESS": "\tتم تعديل العطلة الرسمية بنجاح.",
              "DELETE_LEAVE_SUCCESS": "\tتم حذف العطلة العامة بنجاح.",
              "GET_ALL_LEAVE_SUCCESS": "جلب جميع العطلات الرسمية بنجاح."
            },
            "RAM_VALIDATION": {
              "VALID_STATUS": "\tالرجاء إدخال حالة صالحة.",
              "NAME_REQUIRED": "\tمطلوب رام .",
              "STATUS_REQUIRED": "\tحالة الرام مطلوبة"
            },
            "ZOOM_VALIDATOR": {
              "ZOOM_CLIENT_ID": "\tمطلوب اسم معرف عميل التكبير",
              "ZOOM_ACCOUNT_ID": "\tمطلوب معرف حساب التكبير",
              "ZOOM_CLIENT_SECRET": "\tمطلوب سر عميل Zoom"
            },
            "ACKNOWLEDGEMENT": {
              "NOT_FOUND": "لم يتم العثور على الإقرار",
              "ALREADY_EXIST": "الإقرار موجود بالفعل",
              "EXCEL_NOT_FOUND": "لم يتم العثور على إقرار Excel",
              "GET_SUCCESSFULLY": "\tالحصول على الاعتراف بنجاح.",
              "NAME_ALREADY_EXIST":
                  "\tاسم الإقرار موجود بالفعل، يرجى المحاولة باستخدام اسم إقرار آخر",
              "CREATED_SUCCESSFULLY": "\tتم إنشاء الإقرار بنجاح.",
              "DELETED_SUCCESSFULLY": "تم حذف الإقرار بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث الإقرار بنجاح.",
              "GET_LIST_SUCCESSFULLY": "تم الحصول على قائمة الاعتراف بنجاح.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "تم إنشاء ملف json الخاص بـ excel بنجاح"
            },
            "BOOK_VALIDATION": {
              "TITLE_REQUIRED": "\tعنوان الكتاب مطلوب",
              "PRICE_NUMERIC_ONLY": "\tيجب أن يكون سعر الكتاب رقمًا فقط",
              "TOTAL_QUANTITY_REQUIRED": "كمية الكتاب المطلوبة"
            },
            "CLASS_VALIDATOR": {
              "CLASS_NAME": "\tاسم الفئة مطلوب.",
              "DESCRIPTION": "\tوصف الفصل مطلوب."
            },
            "EMPLOYEE_STATUS": {
              "GET_DEPARTMENT": "\tتم الحصول على تفاصيل حالة الموظف بنجاح.",
              "GET_ALL_DEPARTMENT": "\tتم الحصول على جميع حالات الموظف بنجاح.",
              "CREATED_SUCCESSFULLY": "\tتم إنشاء حالة الموظف بنجاح.",
              "DELETED_SUCCESSFULLY": "\tتم حذف حالة الموظف بنجاح.",
              "DEPARTMENT_NOT_EXIST": "\tحالة الموظف غير موجودة.",
              "UPDATED_SUCCESSFULLY": "\tتم تحديث حالة الموظف بنجاح.",
              "EMPLOYEE_STATUS_ALREADY_EXIST": "\tحالة الموظف موجودة بالفعل."
            },
            "FE_LIVE_CLASSES": {
              "LIVE_CLASSES": "دروس حية",
              "LIVE_CLASS_LIST": "قائمة الفصول الحية"
            },
            "FE_SMTP_SETTING": {
              "SMTP_AUTH": "مصادقة SMTP",
              "SMTP_PORT": "\tمنفذ SMTP",
              "FROM_EMAIL": "\tمن البريد الإلكترونى",
              "SMTP_SECURE": "\tSMTP آمن",
              "SMTP_HOSTNANE": "\tاسم مضيف SMTP",
              "SMTP_PASSWORD": "كلمة مرور SMTP",
              "SMTP_USERNAME": "\tاسم مستخدم SMTP"
            },
            "FE_SUBSCRIPTION": {
              "PAID": "مدفوع",
              "PLAN": "\tيخطط",
              "SR_NO": "\tالأب رقم",
              "AMOUNT": "\tكمية",
              "BILLED": "\tفاتورة",
              "METHOD": "طريقة",
              "STATUS": "حالة*",
              "YEARLY": "\tسنوي",
              "INVOICE": "فاتورة",
              "MONTHLY": "\tشهريا",
              "PACKAGE": "\tطَرد",
              "UPGRADE": "\tيرقي",
              "QUARTELY": "\tيرقي",
              "SUBSCRIBE": "يشترك",
              "START_DATE": "\tتاريخ البدء",
              "DESCRIPTION": "\tوصف",
              "EXPIRY_DATE": "\tتاريخ الانتهاء",
              "MODULE_NAME": "\tاسم وحدة",
              "CURRENT_PLAN": "\tالخطة الحالية",
              "LAST_UPGRADE": "\tالترقية الأخيرة",
              "PACKAGE_NAME": "\tاسم الحزمة",
              "PLAN_UPGRADE": "\tترقية الخطة",
              "SUBSCRIPTION": "\tترقية الخطة",
              "ORDER_SUMMARY": "\tملخص الطلب",
              "PLAN_PURCHASE": "شراء الخطة",
              "PURCHASE_DATE": "تاريخ الشراء\t",
              "BILLING_PERIOD": "\tفترة الفاتورة",
              "PAYMENT_METHOD": "\tطريقة الدفع او السداد",
              "PAYMENT_DETAILS": "بيانات الدفع\t",
              "PAYMENT_HISTORY": "\tتاري\tقائمة الخطة الحاليةخ الدفع",
              "CURRENT_PLAN_LIST": "\tقائمة الخطة الحالية",
              "SUBSCRIPTION_LIST": "\tقائمة الاشتراك",
              "MODULE_PERMISSIONS": "\tأذونات الوحدة",
              "YOY_ILL_BE_CHARGED": "سيتم محاسبتك",
              "CURRENT_PLAN_DETAILS": "تفاصيل الخطة الحالية\t",
              "PLAN_INTERVAL_PERIOD": "الفترة الفاصلة للخطة",
              "SUBSCRIPTION_DETAILS": "\tتفاصيل الاشتراك",
              "CHOOSE_PAYMENT_METHOD": "\tاختر وسيلة الدفع",
              "NO_PLANS_ARE_AVAILABLE": "لا توجد خطط متاحة.",
              "UNTIL_YOU_CANCEL_THE_SUBSCRIPTION":
                  "\tحتى تقوم بإلغاء الاشتراك.",
              "PAYMENT_SUCCESSFULL_SUBSCRIPTION_ACTIVE":
                  "تم الدفع بنجاح! الاشتراك نشط."
            },
            "MAKE_VALIDATION": {
              "VALID_STATUS": "\tالرجاء إدخال حالة صالحة.",
              "NAME_REQUIRED": "مطلوب جعل الاسم.",
              "STATUS_REQUIRED": "حالة اسم الصنع مطلوبة."
            },
            "ROLE_PERMISSION": {
              "ADDED": "\tتمت إضافة إذن الدور بنجاح.",
              "FETCH": "تم جلب إذن الدور بنجاح",
              "EDITED": "تم تعديل إذن الدور بنجاح.",
              "DELETED": "\tتم حذف إذن الدور بنجاح.",
              "UPDATED": "تم تحديث إذن الدور بنجاح.",
              "NOT_FOUND": "لم يتم العثور على إذن الدور",
              "ALREADY_EXIST": "إذن الدور موجود بالفعل."
            },
            "ROOMS_VALIDATOR": {
              "Type_REQUIRED": "نوع الغرفة مطلوب.",
              "CAPACITY_REQUIRED": "\tسعة الغرفة مطلوبة.",
              "FACILITY_REQUIRED": "\tمطلوب مرافق الغرفة.",
              "LOCATION_REQUIRED": "موقع الغرفة مطلوب.",
              "ROOM_NUMBER_REQUIRED": "\tرقم الغرفة مطلوب."
            },
            "TASK_VALIDATION": {
              "INVALID_CR_ID": "الرجاء إدخال معرف السجل التجاري الصحيح.",
              "INVALID_PM_ID": "\tالرجاء إدخال معرف PM صالح.",
              "INVALID_PROJECT_ID": "\tالرجاء إدخال معرف مشروع صالح.",
              "TASK_DESC_REQUIRED": "وصف المهمة مطلوب.",
              "TASK_NAME_REQUIRED": "اسم المهمة مطلوب.",
              "TASK_TYPE_REQUIRED": "نوع المهمة مطلوب.",
              "INVALID_TASK_STATUS": "الرجاء إدخال معرف حالة مهمة صالح.",
              "PROJECT_ID_REQUIRED": "\tمعرف المشروع مطلوب.",
              "TASK_HOURS_REQUIRED": "ساعات العمل مطلوبة.",
              "TASK_STATUS_REQUIRED": "حالة المهمة مطلوبة.",
              "TASK_ENDDATE_REQUIRED": "تاريخ انتهاء المهمة مطلوب.",
              "TASK_STARTDATE_REQUIRED": "تاريخ بدء المهمة مطلوب.",
              "TASK_ASSIGNED_USER_REQUIRED":
                  "\tمطلوبة المستخدمين المعينين المهمة."
            },
            "USER_VALIDATION": {
              "VALID_ID": "الرجاء إدخال معرف صالح.",
              "EMAIL_VALID": "الرجاء إدخال بريد إلكتروني صحيح",
              "ID_REQUIRED": "\tمطلوب معرف.",
              "VALID_EMAIL": "\tالرجاء إدخال بريد إلكتروني صحيح.",
              "VALID_STATUS": "الرجاء إدخال حالة صالحة.",
              "ZIP_REQUIRED": "الرمز البريدي مطلوب*.",
              "CITY_REQUIRED": "\tالمدينة مطلوبة",
              "PASSWORD_SIZE":
                  "\tكلمة المرور يجب أن تتكون من 6 أحرف على الأقل.",
              "EMAIL_REQUIRED": "\tالبريد الالكتروني مطلوب.",
              "STATE_REQUIRED": "\tالبريد الالكتروني مطلوب.",
              "LAST_NAME_VALID": "\tالرجاء إدخال اسم العائلة صالح.",
              "STATUS_REQUIRED": "\tالحالة مطلوبة.",
              "VALID_USER_TYPE": "\tالرجاء إدخال نوع مستخدم صالح.",
              "gender_REQUIRED": "الجنس مطلوب",
              "ADDRESS_REQUIRED": "العنوان مطلوب.",
              "COUNTRY_REQUIRED": "\tالدولة مطلوبة",
              "FIRST_NAME_VALID": "\tالرجاء إدخال الاسم الأول الصحيح",
              "VALID_DEPARTMENT": "الرجاء إدخال قسم صالح.",
              "LASTNAME_REQUIRED": "إسم العائلة مطلوب.\t",
              "NEW_PASSWORD_SIZE":
                  "كلمة المرور الجديدة يجب أن تتكون من 6 أحرف على الأقل.\t",
              "OLD_PASSWORD_SIZE":
                  "كلمة المرور القديمة يجب أن تتكون من 6 أحرف على الأقل.",
              "PASSWORD_REQUIRED": "\tكلمة المرور مطلوبة.",
              "USERTYPE_REQUIRED": "\tالرجاء إدخال نوع_مستخدم صالح.",
              "VALID_PLATFORM_OS":
                  "\tيجب أن يكون نظام التشغيل الأساسي 1 لنظام Android و2 لنظام iOS.",
              "FIRSTNAME_REQUIRED": "\tالإسم الأول مطلوب.",
              "LAST_NAME_REQUIRED": "إسم العائلة مطلوب.",
              "USER_TYPE_REQUIRED": "\tنوع المستخدم مطلوب.",
              "CONTACT_NUMBER_SIZE": "رقم الاتصال يجب أن يتكون من 10 أحرف.",
              "DEPARTMENT_REQUIRED": "\tالقسم مطلوب.",
              "FIRST_NAME_REQUIRED": "الإسم الأول مطلوب.",
              "PASSWORD_VALIDATION":
                  "يجب أن تتكون كلمة المرور من حرف كبير واحد وحرف صغير واحد وحرف خاص واحد ورقم واحد والحد الأدنى 6.",
              "CONTACT_NUMBER_VALID": "\tالرجاء إدخال رقم اتصال صالح.",
              "VALID_EMPOYEE_STATUS": "\tالرجاء إدخال حالة الموظف الصحيحة.",
              "CONFIRM_PASSWORD_SIZE":
                  "تأكيد كلمة المرور يجب أن تتكون من 6 أحرف على الأقل.",
              "NEW_PASSWORD_REQUIRED": "كلمة المرور الجديدة مطلوبة.",
              "OLD_PASSWORD_REQUIRED": "\tكلمة المرور القديمة مطلوبة.",
              "USERTYPE_NAME_REQUIRED": "الرجاء إدخال اسم نوع المستخدم.",
              "VALID_REPORTING_PERSON": "\tالرجاء إدخال شخص صالح للإبلاغ.",
              "REFRESH_TOKENS_REQUIRED": "\tرمز التحديث مطلوب.",
              "EMPLOYEE_STATUS_REQUIRED": "\tحالة الموظف مطلوبة.",
              "CONFIRM_PASSWORD_REQUIRED": "\tتأكيد كلمة المرور مطلوب.",
              "REPORTING_PERSON_REQUIRED": "\tمطلوب شخص للتبليغ."
            },
            "WEBSITE_SETTING": {
              "NOT_FOUND": "لم يتم العثور على إعدادات موقع الويب.",
              "GET_SUCCESSFULLY": "تم الحصول على إعداد موقع الويب بنجاح.",
              "CREATED_SUCCESSFULLY": "\tتم إنشاء إعداد موقع الويب بنجاح.",
              "UPDATED_SUCCESSFULLY": "\tتم تحديث إعداد موقع الويب بنجاح."
            },
            "ASSET_VALIDATION": {
              "CPU_REQUIRED": "مطلوب وحدة المعالجة المركزية.\t",
              "RAM_REQUIRED": "مطلوب رام .",
              "DATE_REQUIRED": "التاريخ مطلوب.",
              "VALID_ASSETTYPE": "الرجاء إدخال نوع أصل صالح.",
              "INVALID_MAKE_NAME": "الرجاء إدخال معرف صنع صالح.",
              "INVALID_USER_NAME": "الرجاء إدخال معرف مستخدم صالح.",
              "INVALID_ASSET_NAME": "الرجاء إدخال معرف أصل صالح.",
              "MAKE_NAME_REQUIRED": "مطلوب جعل الاسم.",
              "USER_NAME_REQUIRED": "\tاسم المستخدم مطلوب.",
              "ASSET_CODE_REQUIRED": "\tمطلوب رمز الأصول.",
              "ASSET_TYPE_REQUIRED": "\tنوع الأصل مطلوب.",
              "INVALID_VENDOR_NAME": "الرجاء إدخال معرف بائع صالح.",
              "INVOICE_NO_REQUIRED": "رقم الفاتورة مطلوب.",
              "MAC_ADRESS_REQUIRED": "مطلوب عنوان ماك.",
              "MODEL_NAME_REQUIRED": "اسم الموديل مطلوب.",
              "VENDOR_NAME_REQUIRED": "\tاسم البائع مطلوب.",
              "COMPANY_NAME_REQUIRED": "اسم الشركة مطلوب."
            },
            "CLASS_TIME_TABLE": {
              "GET_ALL":
                  "يتم الحصول على قائمة الجدول الزمني للفصل الدراسي بنجاح.",
              "NOT_EXIST": "الجدول الزمني للفصل الدراسي غير موجود.",
              "NOT_FOUND": "لم يتم العثور على الجدول الزمني للفصل الدراسي.",
              "GET_DETAILS":
                  "تم الحصول على تفاصيل الجدول الزمني للفصل الدراسي بنجاح.",
              "ALREADY_EXIST": "الجدول الزمني للفصل الدراسي موجود بالفعل.",
              "ROOM_NOT_AVAILABLE": "الغرفة غير متوفرة.",
              "CREATED_SUCCESSFULLY":
                  "تم إنشاء الجدول الزمني للفصل الدراسي بنجاح.",
              "DELETED_SUCCESSFULLY":
                  "تم حذف الجدول الزمني للفصل الدراسي بنجاح.",
              "UPDATED_SUCCESSFULLY":
                  "تم تحديث الجدول الزمني للفصل الدراسي بنجاح.",
              "SECTION_ALREADY_OCCUPIED": "تم تعيين القسم بالفعل فئة.",
              "TEACHER_ALREADY_OCCUPIED": "تم تعيين المعلم بالفعل الصف."
            },
            "COURSE_VALIDATOR": {
              "VISIBILITY": "\tمطلوب رؤية الدورة",
              "NAME_REQUIRED": "\tاسم الدورة مطلوب",
              "STATUS_REQUIRED": "حالة الدورة مطلوبة",
              "COURSE_IMAGE_REQUIRED": "\tصورة الدورة مطلوبة"
            },
            "FE_CLASS_ROUTINE": {
              "CLASS_ROUTINE": "\tروتين الصف",
              "MY_CLASS_ROUTINE": "\tروتين صفي",
              "ADD_CLASS_ROUTINE": "إضافة روتين الصف",
              "CLASS_ROUTIN_LIST": "قائمة روتين الصف",
              "END_TIME_REQUIRED": "\tوقت الانتهاء مطلوب*.",
              "CLASS_ROUTINE_LIST": "\tقائمة روتين الصف",
              "EDIT_CLASS_ROUTINE": "\tتحرير روتين الفصل",
              "SELECT_DAY_OF_WEEK": "\tحدد يوم من الأسبوع",
              "START_TIME_REQUIRED": "وقت البدء مطلوب*.",
              "DELETE_CLASS_ROUTINE": "حذف روتين الصف",
              "SELECT_PLAC_DAY_OF_WEEK": "اختر يوم من الأسبوع",
              "NO_CLASS_ROUTINE_AVAILABLE": "\tلا يوجد روتين صفي متاح !!!",
              "ARE_YOU_SURE_WANT_TO_DELETE_THIS_CLASSROUTINE":
                  "هل أنت متأكد أنك تريد حذف روتين الفصل هذا؟"
            },
            "LEAVE_VALIDATION": {
              "DATE_SIZE": "\tأدخل سلسلة تاريخ مكونة من 13 رقمًا.",
              "REASON_SIZE": "سبب الإجازة هو الحد الأدنى 6 أحرف",
              "REASON_REQUIRED": "\tسبب الإجازة مطلوب.",
              "STATUS_REQUIRED": "حالة الإجازة مطلوبة.",
              "END_DATE_REQUIRED": "تاريخ الانتهاء مطلوب.",
              "INVALID_DAY_SHIFT": "الرجاء إدخال وردية يومية صالحة.",
              "DAY_SHIFT_REQUIRED": "\tمطلوب التحول اليوم.",
              "START_DATE_REQUIRED": "\tتاريخ البدء مطلوب.",
              "INVALID_LEAVE_STATUS": "حالة الإجازة غير صالحة."
            },
            "STRIPE_VALIDATOR": {
              "PUBLIC_KEY_REQUIRED": "مطلوب اسم المفتاح العام",
              "SECRET_KEY_REQUIRED": "مطلوب اسم المفتاح السري\t",
              "PUBLIC_LIVE_KEY_REQUIRED": "مطلوب اسم المفتاح المباشر العام\t",
              "SECRET_LIVE_KEY_REQUIRED": "مطلوب اسم المفتاح المباشر السري\t"
            },
            "CLIENT_VALIDATION": {
              "NUMBER_SIZE": "يجب أن يتكون رقم الاتصال من 10 أرقام\t",
              "VALID_EMAIL": "الرجاء إدخال بريد إلكتروني صحيح.\t",
              "PASSWORD_SIZE":
                  "كلمة المرور يجب أن تتكون من 6 أحرف على الأقل.\t",
              "EMAIL_REQUIRED": "البريد الالكتروني مطلوب.\t",
              "NUMBER_REQUIRED": "رقم الاتصال مطلوب.\t",
              "COUNTRY_REQUIRED": "اسم البلد مطلوب.",
              "PASSWORD_REQUIRED": "\tكلمة المرور مطلوبة.",
              "PASSWORD_VALIDATION":
                  "يجب أن تتكون كلمة المرور من حرف كبير واحد وحرف صغير واحد وحرف خاص واحد ورقم واحد والحد الأدنى 6.",
              "COMMUNICATION_TOOLS_REQUIRED":
                  "مطلوب اسم ومعرف أداة اتصال واحدة على الأقل."
            },
            "FE_EMAIL_TEMPLATE": {
              "BODY": "\tجسم",
              "DYAMIC_VALUES": "\tالقيم الديناميكية",
              "EMAIL_TEMPLATE": "\tقالب البريد الإلكتروني"
            },
            "PERMISSION_ENTITY": {
              "ADDED": "\tتمت إضافة كيان الإذن بنجاح.",
              "FETCH": "تم جلب كيان الإذن بنجاح",
              "EDITED": "\tتم تحرير كيان الإذن بنجاح.",
              "DELETED": "\tتم حذف كيان الإذن بنجاح.",
              "UPDATED": "تم تحديث كيان الإذن بنجاح.\t",
              "NOT_FOUND": "لم يتم العثور على كيان الإذن\t",
              "ALREADY_EXIST": "كيان الإذن موجود بالفعل.\t"
            },
            "SUPER_ADMIN_STAFF": {
              "NOT_FOUND": "لم يتم العثور على طاقم الإدارة المتميز\t",
              "EXCEL_NOT_FOUND":
                  "لم يتم العثور على برنامج Excel للموظفين الإداريين المتميزين",
              "GET_SUCCESSFULLY": "نجح طاقم الإدارة المتميز.",
              "IMPORT_SUCESSFULLY": "تم استيراد طاقم الإدارة المتميز بنجاح.",
              "CREATED_SUCCESSFULLY": "تم إنشاء طاقم الإدارة المتميز بنجاح.",
              "DELETED_SUCCESSFULLY": "تم حذف طاقم الإدارة المتميز بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث طاقم الإدارة المتميز بنجاح.",
              "GET_LIST_SUCCESSFULLY":
                  "يتم الحصول على قائمة الموظفين الإداريين المتميزين بنجاح.",
              "EXCEL_DEPARTMENT_ISSUE": "\tالقسم المقدم غير موجود",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "\tطاقم الإدارة المتميز في ورقة Excel موجود بالفعل"
            },
            "TICKET_VALIDATION": {
              "STATUS_REQUIRED": "حالة التذكرة مطلوبة",
              "DESRIPTION_REQUIRED": "\tوصف التذكرة مطلوب.",
              "ISSUE_TYPE_REQUIRED": "نوع المشكلة مطلوب."
            },
            "VENDOR_VALIDATION": {
              "VALID_STATUS": "\tالرجاء إدخال حالة صالحة.",
              "NAME_REQUIRED": "\tمطلوب جعل البائع.",
              "STATUS_REQUIRED": "\tحالة اسم البائع مطلوبة."
            },
            "COMMENT_VALIDATION": {
              "Ticket_ID_REQUIRED": "\tوصف التذكرة مطلوب."
            },
            "COMPANY_VALIDATION": {
              "VALID_STATUS": "\tالرجاء إدخال حالة صالحة.",
              "NAME_REQUIRED": "اسم الشركة مطلوب.",
              "STATUS_REQUIRED": "\tحالة الشركة مطلوبة."
            },
            "FE_SYSTEM_SETTINGS": {
              "SR_NO": "الأب رقم",
              "TITLE": "\tعنوان",
              "TOPIC": "عنوان",
              "SETTINGS": "\tإعدادات",
              "SMTP_HOST": "\tيستضيف*",
              "SMTP_PORT": "\tميناء*",
              "HOST_VIDEO":
                  "استضافة الفيديو (ابدأ الفيديو عندما ينضم المشاركون إلى الاجتماع).",
              "MEETING_ID": "\tمعرف الاجتماع",
              "SMTP_EMAIL": "بريد إلكتروني*",
              "JOIN_METTING": "انضم إلى الاجتماع قبل أن يبدأ المضيف الاجتماع.",
              "LIVE_CLASSES": "\tدروس حية",
              "SMTP_SETTING": "\tإعداد SMTP",
              "ZOOM_SETTING": "\tإعداد التكبير",
              "SMTP_PASSWORD": "\tكلمة المرور*",
              "SMTP_USERNAME": "اسم المستخدم*",
              "ADD_LIVE_CLASS": "إضافة فئة حية",
              "ZOOM_CLIENT_ID": "\tتكبير معرف العميل",
              "LIVE_CLASS_LIST": "\tقائمة الفصول الحية",
              "SYSTEM_SETTINGS": "\tاعدادات النظام",
              "ZOOM_ACCOUNT_ID": "معرف حساب التكبير",
              "MUTE_PARTICIPATS": "\tكتم صوت المشاركين عند الدخول.",
              "ZOOM_ADD_OWN_API": "تكبير إضافة API الخاصة",
              "EDIT_LIVE_CLASSES": "\tتحرير الفصل المباشر",
              "LIVE_CLASS_METHOD": "طريقة الفصل المباشر",
              "PARTICIPATE_VIDEO":
                  "فيديو المشاركين (ابدأ الفيديو عندما ينضم المشاركون إلى الاجتماع).",
              "LIVE_CLASS_SETTING": "إعداد الفصل المباشر",
              "ZOOM_CLIENT_SECRET": "\tتكبير العميل السري",
              "DELETE_LIVE_CLASSES": "حذف الفصل المباشر",
              "ARE_YOU_SURE_DELETE_CLASS":
                  "هل أنت متأكد أنك تريد حذف هذا الفصل المباشر؟."
            },
            "PROJECT_VALIDATION": {
              "FILE_REQUIRED": "وثائق المشروع المطلوبة.\t",
              "INVALID_TL_ID": "الرجاء إدخال معرف صالح لقائد الفريق.",
              "PM_ID_REQUIRED": "مطلوب معرف مدير المشروع.",
              "TL_ID_REQUIRED": "معرف قائد الفريق مطلوب.",
              "INVALID_CLIENT_ID": "الرجاء إدخال معرف العميل الصحيح.",
              "CLIENT_ID_REQUIRED": "معرف العميل مطلوب.",
              "PROJECT_NAME_VALID": "الرجاء إدخال اسم المشروع الصحيح.",
              "PROJECT_NAME_REQUIRED": "اسم المشروع مطلوب.\t",
              "PROJECT_TYPE_REQUIRED": "نوع المشروع مطلوب.",
              "PROJECT_HOURS_REQUIRED": "ساعات المشروع مطلوبة.",
              "PROJECT_DESCRIPTION_VALID": "الرجاء إدخال وصف صالح للمشروع.",
              "PROJECT_DESCRIPTION_REQUIRED": "وصف المشروع مطلوب."
            },
            "FEEDBACK_VALIDATION": {
              "STATUS_INVALID": "الرجاء إدخال حالة صالحة.",
              "TITLE_REQUIRED": "عنوان التذكرة مطلوب.",
              "DESCRIPTION_REQUIRED": "وصف التذكرة مطلوب.",
              "INVALID_FEEDBACK_TYPE": "الرجاء إدخال نوع صالح.\t",
              "FEEDBACK_TYPE_REQUIRED": "نوع التذكرة مطلوب."
            },
            "FE_ACCOUNT_SETTINGS": {
              "EMAIL": "بريد إلكتروني",
              "PROFILE": "معلومات شخصية",
              "PASSWORD": "كلمة المرور\t",
              "MY_PROFILE": "ملفي",
              "YOUR_PHOTO": "صورتك",
              "NEW_PASSWORD": "كلمة المرور الجديدة",
              "SAVE_PROFILE": "احفظ الملف",
              "UPDATE_PASSWORD": "تطوير كلمة السر",
              "ACCOUNT_SETTINGS": "إعدادت الحساب",
              "CONFIRM_PASSWORD": "تأكيد كلمة المرور الجديدة\t",
              "CURRENT_PASSWORD": "كلمة السر الحالية",
              "PHOTO_DESCRIPTION": "سيتم عرض هذا في ملفك الشخصي."
            },
            "FE_WEBSITE_SETTINGS": {
              "FAVICON": "الرمز المفضل",
              "DARK_LOGO": "شعار الظلام",
              "ENABLE_RTL": "تمكين RTL",
              "LIGHT_LOGO": "شعار الضوء",
              "TITLE_TEXT": "نص العنوان",
              "DARK_LAYOUT": "تخطيط الظلام",
              "FOOTER_TEXT": "نص التذييل",
              "LAYOUT_SETTONGS": "إعدادات الشكل الظاهري",
              "CHOOSE_FILE_HERE": "اختر ملف هنا",
              "DEFAULT_LANGUAGE": "اللغة الافتراضية",
              "WEBSITE_SETTINGS": "إعدادات الموقع"
            },
            "ORGANIZATION_BRANCH": {
              "GET_ALL": "تم الحصول على قائمة فروع المنظمة بنجاح..",
              "NOT_EXIST": "فرع المنظمة غير موجود.",
              "NOT_FOUND": "لم يتم العثور على فرع المؤسسة.",
              "GET_DETAILS": "تم الحصول على تفاصيل فرع المنظمة بنجاح.",
              "ALREADY_EXIST": "فرع المنظمة موجود بالفعل.",
              "NAME_ALREADY_EXIST":
                  "اسم فرع المؤسسة موجود بالفعل، يرجى المحاولة باستخدام اسم فرع مؤسسة آخر\t",
              "CREATED_SUCCESSFULLY": "تم إنشاء فرع المنظمة بنجاح.\t",
              "DELETED_SUCCESSFULLY": "تم حذف فرع المؤسسة بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث فرع المؤسسة بنجاح.",
              "ORG_EMAIL_ALREADY_EXIST":
                  "البريد الإلكتروني للمؤسسة موجود بالفعل، يرجى استخدام بريد إلكتروني مختلف",
              "MAX_BRANCH_LIMIT_REACHED":
                  "تم الوصول إلى الحد الأقصى للفرع لهذه الخطة"
            },
            "S3_BUCKET_VALIDATOR": {
              "ACCESS_KEY_REQUIRED": "مفتاح الوصول مطلوب.",
              "SECRET_KEY_REQUIRED": "المفتاح السري مطلوب.",
              "BUCKET_NAME_REQUIRED": "اسم الجرافة مطلوب.",
              "REGION_NAME_REQUIRED": "اسم المنطقة مطلوب."
            },
            "CATEGORIES_VALIDATOR": {
              "NAME_REQUIRED": "اسم الفئات مطلوب",
              "STATUS_REQUIRED": "حالة الفئات مطلوبة\t",
              "CATEGORIES_IMAGE": "صورة الفئات مطلوبة"
            },
            "DEPARTMENT_VALIDATOR": {
              "HOD_REQUIRED": "مطلوب رئيس قسم .",
              "NAME_REQUIRED": "مطلوب اسم.",
              "COURSE_REQUIRED": "مطلوب الدورة.\t",
              "STATUS_REQUIRED": "الحالة مطلوبة.",
              "DESCRIPTION_REQUIRED": "الوصف مطلوب."
            },
            "ORGANIZATION_SECTION": {
              "GET_ALL": "تم الحصول على قائمة أقسام المنظمة بنجاح..",
              "NOT_EXIST": "قسم المنظمة غير موجود.",
              "NOT_FOUND": "لم يتم العثور على قسم المنظمة.",
              "GET_DETAILS": "تم الحصول على تفاصيل قسم المنظمة بنجاح.",
              "NOT_DELETED": "قسم المؤسسة ليس العلاقة المحذوفة موجودة.",
              "SOME_DELETED":
                  "تم حذف بعض السجلات بنجاح، ولم يتم حذف البعض الآخر.",
              "ALREADY_EXIST": "قسم المنظمة موجود بالفعل.",
              "CLASS_ID_REQUIRED": "معرف الفصل مطلوب لتعيين المعلم",
              "NAME_ALREADY_EXIST":
                  "اسم قسم المؤسسة موجود بالفعل، يرجى المحاولة باستخدام اسم قسم مؤسسة آخر",
              "GET_SECTION_SUBJECT": "يتم الحصول على قسم الموضوع بنجاح.",
              "GET_SECTION_TEACHER": "قسم المعلم الحكيم يحصل على النجاح.\t",
              "CREATED_SUCCESSFULLY": "تم إنشاء قسم المنظمة بنجاح.",
              "DELETED_SUCCESSFULLY": "تم حذف قسم المؤسسة بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث قسم المؤسسة بنجاح.",
              "GET_SECTION_BY_TEACHER": "تم الحصول على قائمة الأقسام بنجاح.",
              "SUBJECT_ASSIGN_SUCCESS": "تم تعيين الموضوع بنجاح.",
              "TEACHER_ASSIGN_SUCCESS": "تم تعيين المعلم بنجاح.",
              "GET_ALL_SECTION_SUBJECT":
                  "تم الحصول على قسم قائمة الموضوعات بنجاح.",
              "GET_ALL_SECTION_TEACHER":
                  "تم الحصول على قسم قائمة المعلمين بنجاح.",
              "STUDENT_GET_SUCCESSFULLY": "قسم الطلاب الحكيم يحصل بنجاح",
              "UPDATE_SUBJECT_ASSIGN_SUCCESS": "تم تحديث موضوع القسم بنجاح.",
              "UPDATE_TEACHER_ASSIGN_SUCCESS": "تم تحديث قسم المعلم بنجاح.",
              "SECTION_SUBJECT_ALREADY_ASSIGN":
                  "لقد تم بالفعل تعيين هذا القسم الموضوع.",
              "SECTION_TEACHER_ALREADY_ASSIGN":
                  "لقد تم بالفعل تعيين هذا القسم مدرسًا.",
              "SECTION_SUBJECT_DELETED_SUCCESSFULLY":
                  "تم حذف موضوع القسم بنجاح.",
              "SECTION_TEACHER_DELETED_SUCCESSFULLY": "تم حذف معلم القسم بنجاح."
            },
            "ORGANIZATION_SUBJECT": {
              "GET_ALL": "الحصول على قائمة موضوعات المنظمة بنجاح..",
              "NOT_EXIST": "موضوع المنظمة غير موجود.",
              "NOT_FOUND": "لم يتم العثور على موضوع المنظمة.",
              "GET_DETAILS": "تم الحصول على تفاصيل موضوع المنظمة بنجاح.",
              "NOT_DELETED": "موضوع المنظمة غير محذوف العلاقة موجودة.",
              "SOME_DELETED":
                  "تم حذف بعض السجلات بنجاح، ولم يتم حذف البعض الآخر.",
              "ALREADY_EXIST": "موضوع المنظمة موجود بالفعل.",
              "CODE_ALREADY_EXIST": "رمز موضوع المؤسسة موجود بالفعل.",
              "CREATED_SUCCESSFULLY": "تم إنشاء موضوع المنظمة بنجاح.",
              "DELETED_SUCCESSFULLY": "تم حذف موضوع المؤسسة بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث موضوع المؤسسة بنجاح."
            },
            "TIMESHEET_VALIDATION": {
              "DATE_REQUIRED": "تاريخ الجدول الزمني مطلوب.",
              "INVALID_TASK_ID": "معرف المهمة غير صالح.",
              "TASK_ID_REQUIRED": "معرف المهمة مطلوب.",
              "INVALID_PROJECT_ID": "معرف المشروع غير صالح.\t",
              "PROJECT_ID_REQUIRED": "معرف المشروع مطلوب.\t",
              "TIMESHEET_HOURS_REQUIRED": "ساعات الجدول الزمني مطلوبة."
            },
            "ASSET_TYPE_VALIDATION": {
              "VALID_STATUS": "الرجاء إدخال حالة صالحة.",
              "NAME_REQUIRED": "اسم نوع الأصل مطلوب.",
              "STATUS_REQUIRED": "حالة نوع الأصل مطلوبة.\t"
            },
            "FE_LIBRARY_MANAGEMENT": {
              "DOB": "تاريخ الميلاد",
              "BOOK": "كتاب",
              "FINE": "بخير",
              "ROLE": "دور",
              "PRICE": "سعر",
              "SR_NO": "الأب رقم\t",
              "AUTHOR": "مؤلف",
              "REMARK": "ملاحظة",
              "APPROVE": "يعتمد",
              "EDITION": "الإصدار",
              "ADD_BOOK": "إضافة كتاب",
              "CATEGORY": "فئة",
              "RETURNED": "عاد",
              "EDIT_BOOK": "تحرير الكتاب",
              "POST_DATE": "تاريخ آخر",
              "PUBLISHER": "الناشر",
              "USER_NAME": "اسم المستخدم",
              "VIEW_BOOK": "عرض الكتاب",
              "BOOK_ISSUE": "إصدار الكتاب",
              "BOOK_TITLE": "عنوان كتاب",
              "CREATED_AT": "أنشئت في",
              "ISSUE_BOOK": "كتاب الإصدار",
              "ISSUE_DATE": "تاريخ الإصدار",
              "STAFF_LIST": "قائمة الموظفين",
              "ADD_STUDENT": "إضافة طالب\t",
              "BOOK_NUMBER": "عدد الكتاب",
              "COVER_IMAGE": "صورة الغلاف",
              "DELETE_BOOK": "حذف الكتاب\t",
              "DESCRIPTION": "وصف",
              "RETURN_DATE": "تاريخ العودة",
              "SELECT_BOOK": "حدد كتاب",
              "BOOK_DETAILS": "تفاصيل الكتاب",
              "BOOK_ISBN_NO": "رقم الكتاب ISBN\t",
              "BOOK_REQUEST": "طلب كتاب",
              "ISSUED_BOOKS": "الكتب الصادرة",
              "REQUEST_BOOK": "طلب كتاب",
              "RETURNE_BOOK": "كتاب عودة",
              "STUDENT_NAME": "اسم",
              "USER_DETAILS": "بيانات المستخدم",
              "BOOK_CATEGORY": "فئة الكتاب",
              "CATEGORY_NAME": "اسم التصنيف",
              "ISSUED_COPIES": "النسخ الصادرة",
              "PURCHASE_DATE": "تاريخ الشراء",
              "STAFF_MEMBERS": "طاقم العمل",
              "LIBRARY_STATUS": "حالة المكتبة",
              "TOTAL_QUANTITY": "الكمية الإجمالية",
              "ADD_STAFF_MEMBER": "إضافة عضو فريق العمل",
              "ISSUED_BOOK_LIST": "قائمة الكتب الصادرة",
              "ADD_BOOK_CATEGORY": "إضافة فئة الكتاب",
              "ADD_LIBRAY_NUMBER": "إضافة رقم المكتبة",
              "BOOK_CATEGORY_NAME": "اسم فئة الكتاب",
              "EDIT_BOOK_CATEGORY": "تحرير فئة الكتاب",
              "EDIT_LIBRAY_NUMBER": "تعديل رقم المكتبة",
              "LIBRARY_MANAGEMENT": "إدارة المكتبة",
              "VIEW_BOOK_CATEGORY": "عرض فئة الكتاب",
              "LIBRARY_CARD_NUMBER": "رقم بطاقة المكتبة",
              "DELETE_BOOK_CATEGORY": "حذف فئة الكتاب",
              "SELECT_BOOK_CATEGORY": "حدد فئة الكتاب",
              "ARE_YOU_SURE_WANT_TO_DELETE_THIS_BOOK":
                  "هل أنت متأكد أنك تريد حذف هذا الكتاب؟",
              "ARE_YOU_SURE_WANT_TO_DELETE_THIS_CATEGORY":
                  "هل أنت متأكد أنك تريد حذف هذه الفئة؟"
            },
            "ISSUE_TYPE_VALIDATION": {
              "NAME_REQUIRED": "عنوان نوع المشكلة مطلوب."
            },
            "FE_ROLE_AND_PERMISSION": {
              "READ": "يقرأ",
              "TOTAL": "المجموع",
              "USERS": "المستخدمين",
              "WRITE": "يكتب",
              "CENCEL": "يلغي",
              "DELETE": "يمسح",
              "UPDATE": "تحديث",
              "EDIT_ROLE": "تحرير الدور",
              "EDIT_USER": "تحرير إذن المستخدم",
              "ROLE_ACCESS": "الوصول إلى الدور",
              "USER_ACCESS": "وصول المستخدم",
              "NO_ROLE_PERMISSION":
                  "لا يحتوي هذا الدور حاليًا على وحدات أو أذونات معينة.",
              "ROLE_AND_PERMISSION": "أذونات الأدوار",
              "UPDATE_ROLE_PERMISSION": "تحديث إذن الدور",
              "UPDATE_USER_PERMISSION": "تحديث إذن المستخدم"
            },
            "ORGANIZATION_VALIDATION": {
              "VALID_EMAIL": "الرجاء إدخال بريد إلكتروني صحيح",
              "NAME_REQUIRED": "اسم المنظمة مطلوب",
              "EMAIL_REQUIRED": "البريد الالكتروني مطلوب.",
              "VALID_PHONE_NO": "الرجاء إدخال رقم هاتف صحيح"
            },
            "ORGANIZATION_ADMIN_STAFF": {
              "NOT_FOUND": "لم يتم العثور على طاقم إدارة المنظمة",
              "EXCEL_NOT_FOUND":
                  "لم يتم العثور على Excel للموظفين الإداريين للمؤسسة\t",
              "GET_SUCCESSFULLY": "نجح طاقم إدارة المنظمة.",
              "IMPORT_SUCESSFULLY": "تم استيراد طاقم إدارة المؤسسة بنجاح.",
              "CREATED_SUCCESSFULLY": "تم إنشاء طاقم إدارة المؤسسة بنجاح.",
              "DELETED_SUCCESSFULLY": "تم حذف طاقم إدارة المؤسسة بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث طاقم إدارة المؤسسة بنجاح.",
              "GET_LIST_SUCCESSFULLY":
                  "تم الحصول على قائمة موظفي إدارة المنظمة بنجاح.",
              "EXCEL_DEPARTMENT_ISSUE": "القسم المقدم غير موجود",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "موظفو إدارة المنظمة في ورقة Excel موجودون بالفعل"
            },
            "ASSIGN_TICKET_TYPE_PERSON": {
              "GET": "يتم الحصول على الشخص المخصص لنوع التذكرة بنجاح.",
              "ADDED": "تم تخصيص الشخص لنوع التذكرة بنجاح.\t",
              "UPDATE": "تم تحديث نوع التذكرة المخصصة بنجاح."
            },
            "EMAIL_TEMPLATE_VALIDATION": {
              "EMAIL_BODY": "الجسم مطلوب .",
              "EMAIL_KEYS": "المفاتيح مطلوبة.",
              "EMAIL_TITLE": "العنوان مطلوب.",
              "EMAIL_STATUS": "الحالة مطلوبة.",
              "EMAIL_SUBJECT": "الموضوع مطلوب.",
              "EMAIL_BODY_VALUE": "يجب أن يكون للنص قيمة html.",
              "EMAIL_TITLE_LENGTH":
                  "يجب أن يحتوي العنوان على 3 أحرف على الأقل.",
              "EMAIL_STATUS_NUMERIC": "الرجاء إدخال حالة صالحة.",
              "EMAIL_SUBJECT_LENGTH":
                  "يجب أن يحتوي الموضوع على حرفين على الأقل و 50 حرفًا كحد أقصى."
            },
            "FE_ORGANIZATION_STRUCTURE": {
              "CODE": "شفرة",
              "ROOM": "غرفة",
              "TYPE": "يكتب",
              "CLASS": "فصل",
              "SUBJECT": "موضوع",
              "ADD_ROOM": "أضف غرفة",
              "CAPACITY": "سعة",
              "FACILITY": "منشأة",
              "LOCATION": "موقع",
              "SEMESTER": "نصف السنة",
              "ADD_CLASS": "أضف فئة",
              "EDIT_ROOM": "تحرير غرفة\t",
              "VIEW_ROOM": "عرض الغرفة",
              "CLASS_NAME": "اسم الفئة",
              "DEPARTMENT": "قسم",
              "EDIT_CLASS": "تحرير الفصل",
              "VIEW_CLASS": "عرض الطبقة",
              "ADD_SUBJECT": "إضافة الموضوع",
              "DELETE_ROOM": "حذف الغرفة",
              "DESCRIPTION": "وصف",
              "ROOM_NUMBER": "رقم الغرفة",
              "SELECT_ROOM": "اختر الغرفة",
              "CREATED DATE": "وصف",
              "CREATED_DATE": "تاريخ القسم",
              "DELETE_CLASS": "حذف الفصل",
              "EDIT_SUBJECT": "تحرير الموضوع",
              "SUBJECT_CODE": "رمز الموضوع",
              "SUBJECT_NAME": "اسم الموضوع",
              "TEACHER_NAME": "اسم المعلم",
              "VIEW_SUBJECT": "عرض الموضوع",
              "ADD_DEPARTMENT": "إضافة قسم",
              "ASSIGN_SUBJECT": "تعيين الموضوع",
              "DELETE_SUBJECT": "حذف الموضوع",
              "SELECT_TEACHER": "حدد المعلم",
              "DEPARTMENT_CODE": "كود قسم",
              "DEPARTMENT_NAME": "اسم القسم",
              "EDIT_DEPARTMENT": "قسم التحرير",
              "VIEW_DEPARTMENT": "عرض القسم\t",
              "DELETE_DEPARTMENT": "حذف القسم",
              "ASSIGN_SUBJECT_LIST": "تعيين قائمة الموضوع",
              "EDIT_ASSIGN_SUBJECT": "تحرير تعيين الموضوع",
              "ASSIGN_CLASS_TEACHER": "تعيين معلم الصف",
              "DELETE_ASSIGN_SUBJECT": "حذف تعيين الموضوع",
              "LABEL_DEPARTMENT_CODE": "كود قسم*",
              "LABEL_DEPARTMENT_NAME": "اسم القسم*",
              "UPDATE_ASSIGN_SUBJECT": "تحديث تعيين الموضوع",
              "ORGANIZATION_STRUCTURE": "الهيكل التنظيمي",
              "ASSIGN_CLASS_TEACHER_LIST": "تعيين قائمة معلمي الفصل\t",
              "EDIT_ASSIGN_CLASS_TEACHER": "تحرير تعيين مدرس الفصل",
              "DELETE_ASSIGN_CLASS_TEACHER": "حذف تعيين مدرس الفصل",
              "UPDATE_ASSIGN_CLASS_TEACHER": "تحديث تعيين معلم الفصل",
              "ARE_YOU_SURE_WANT_DELETE_ROOM":
                  "هل أنت متأكد أنك تريد حذف هذه الغرفة؟",
              "ARE_YOU_SURE_WANT_DELETE_CLASS":
                  "هل أنت متأكد أنك تريد حذف هذا الفصل؟",
              "ARE_YOU_SURE_WANT_DELETE_SUBJECT": "هل أنت متأكد أنك تريد حذف؟",
              "ARE_YOU_SURE_WANT_DELETE_DEPARTMENT":
                  "هل أنت متأكد أنك تريد حذف هذا القسم؟",
              "ARE_YOU_SURE_WANT_DELETE_ASSIGN_SUBJECT":
                  "هل أنت متأكد أنك تريد حذف هذا الموضوع المعين؟",
              "ARE_YOU_SURE_WANT_DELETE_ASSIGN_CLASS_TEACHER":
                  "هل أنت متأكد أنك تريد حذف معلم الفصل المعين هذا؟"
            },
            "PUBLIC_HOLIDAY_VALIDATION": {
              "DATE_SIZE": "أدخل سلسلة تاريخ مكونة من 13 رقمًا.",
              "YEAR_SIZE": "حجم السنة هو الحد الأدنى 4 أرقام.",
              "DAY_REQUIRED": "اسم اليوم مطلوب.",
              "DATE_REQUIRED": "التاريخ مطلوب.",
              "YEAR_REQUIRED": "السنة مطلوبة."
            },
            "ACKNOWLEDGEMENT_CATEGORIES": {
              "EXCEL_NOT_FOUND": "فئات الإقرار لم يتم العثور على Excel",
              "GET_SUCCESSFULLY": "يتم الحصول على فئات الاعتراف بنجاح.",
              "NAME_ALREADY_EXIST":
                  "اسم فئات الشكر موجود بالفعل، يرجى المحاولة باستخدام اسم آخر لفئات الشكر",
              "CREATED_SUCCESSFULLY": "تم إنشاء فئات الإقرار بنجاح.",
              "DELETED_SUCCESSFULLY": "تم حذف فئات الإقرار بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث فئات الإقرار بنجاح.",
              "GET_LIST_SUCCESSFULLY":
                  "تم الحصول على قائمة فئات الاعتراف بنجاح.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "فئات الإقرار تم إنشاء ملف json الخاص بـ excel بنجاح\t"
            },
            "FE_ORGANIZATION_ADMIN_STAFF": {
              "ORG": "طاقم المنظمة",
              "ADD_ORG": "إضافة موظفي المنظمة",
              "ADD_ORG_STAFF": "إضافة موظفي المنظمة",
              "EDIT_ORG_STAFF": "تحرير موظفي المنظمة",
              "VIEW_ORG_STAFF": "عرض موظفي المنظمة",
              "USER_PERMISSION": "إذن المستخدم",
              "DELETE_ORG_STAFF": "حذف موظفي المنظمة",
              "UPDATE_ORG_STAFF": "تحديث موظفي المنظمة",
              "ARE_YOU_ORG_STAFF":
                  "هل أنت متأكد أنك تريد حذف موظفي المنظمة هذا؟.",
              "ADD_ORG_PERMISSION": "إضافة إذن المنظمة\t",
              "EDIT_USER_PERMISSION": "تحرير إذن المستخدم",
              "ADD_ORGANIZATION_STAFF": "إضافة موظفي المنظمة",
              "ORGANIZATION_ADMIN_STAFF": "طاقم إدارة المنظمة",
              "ORGANIZATION_ADMIN_STAFF_LIST": "قائمة موظفي إدارة المنظمة"
            },
            "ORGANIZATION_BRANCH_VALIDATION": {
              "VALID_EMAIL": "البريد الإلكتروني للفرع غير صالح.",
              "ZIP_REQUIRED": "مطلوب فرع الرمز البريدي",
              "CITY_REQUIRED": "مدينة الفرع مطلوبة",
              "NAME_REQUIRED": "اسم الفرع مطلوب.",
              "EMAIL_REQUIRED": "مطلوب البريد الإلكتروني للفرع.",
              "STATE_REQUIRED": "حالة الفرع مطلوبة",
              "ADDRESS_REQUIRED": "عنوان الفرع مطلوب.",
              "COUNTRY_REQUIRED": "مطلوب بلد الفرع",
              "TIMEZONE_REQUIRED": "المنطقة الزمنية للفرع مطلوبة.",
              "DESCRIPTION_REQUIRED": "معلومات الفرع مطلوبة."
            },
            "ORGANIZATION_BRANCH_ADMIN_STAFF": {
              "NOT_FOUND": "لم يتم العثور على طاقم إدارة فرع المنظمة",
              "EXCEL_NOT_FOUND":
                  "لم يتم العثور على Excel لموظفي إدارة فرع المنظمة",
              "GET_SUCCESSFULLY": "نجح طاقم إدارة فرع المنظمة في النجاح.",
              "IMPORT_SUCESSFULLY": "تم استيراد طاقم إدارة فرع المؤسسة بنجاح.",
              "CREATED_SUCCESSFULLY": "تم إنشاء طاقم إدارة فرع المؤسسة بنجاح.",
              "DELETED_SUCCESSFULLY": "تم حذف طاقم إدارة فرع المؤسسة بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث طاقم إدارة فرع المؤسسة بنجاح.",
              "GET_LIST_SUCCESSFULLY":
                  "تم الحصول على قائمة موظفي إدارة فرع المنظمة بنجاح.",
              "EXCEL_DEPARTMENT_ISSUE": "القسم المقدم غير موجود",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "يوجد بالفعل موظفو إدارة فرع المنظمة في ورقة Excel"
            },
            "ORGANIZATION_SECTION_VALIDATION": {
              "ROOM_NUMBER": "رقم الغرفة مطلوب.",
              "NAME_REQUIRED": "اسم قسم المنظمة مطلوب.",
              "DESCRIPTION_REQUIRED": "الوصف مطلوب."
            },
            "ORGANIZATION_SUBJECT_VALIDATION": {
              "NAME_REQUIRED": "اسم موضوع المنظمة مطلوب.\t",
              "CLASS_REQUIRED": "مطلوب فئة\t",
              "CREATED_BY_REQUIRED": "مطلوب موضوع المنظمة الذي تم إنشاؤه بواسطة"
            },
            "FE_ORGANIZATION_BRANCH_ADMIN_STAFF": {
              "ORG_BRANCH_STAFF": "موظفو فرع المنظمة",
              "ADD_ORG_PERMISSION": "إضافة إذن المنظمة",
              "ADD_ORG_BRANCH_STAFF": "إضافة موظفي فرع المنظمة",
              "EDIT_ORG_BRANCH_STAFF": "تحرير موظفي فرع المنظمة",
              "VIEW_ORG_BRANCH_STAFF": "عرض موظفي فرع المنظمة",
              "DELETE_ORG_BRANCH_STAFF": "حذف موظفي فرع المنظمة",
              "UPDATE_ORG_BRANCH_STAFF": "تحديث موظفي فرع المنظمة",
              "ARE_YOU_ORG_BRANCH_STAFF":
                  "هل أنت متأكد أنك تريد حذف موظفي فرع المؤسسة هذا؟.",
              "ORGANIZATION_BRANCH_ADMIN_STAFF": "طاقم إدارة فرع المنظمة",
              "ORGANIZATION_BRANCH_ADMIN_STAFF_LIST": "قائمة إدارة فرع المنظمة"
            },
            "ACKNOWLEDGEMENTCATEGORIES_VALIDATOR": {
              "NAME_REQUIRED": "اسم فئات الاعتراف مطلوب",
              "DESCRIPTION_REQUIRED": "فئات الاعتراف الوصف مطلوب."
            },
            "ACKNOWLEDGEMENT_CATEGORIES_VALIDATOR": {
              "NOT_FOUND": "لم يتم العثور على فئات الإقرار",
              "ALREADY_EXIST": "الفئة موجودة بالفعل",
              "EXCEL_NOT_FOUND": "فئات الإقرار لم يتم العثور على Excel",
              "GET_SUCCESSFULLY": "يتم الحصول على فئات الاعتراف بنجاح.",
              "NAME_ALREADY_EXIST":
                  "اسم فئات الشكر موجود بالفعل، يرجى المحاولة باستخدام اسم آخر لفئات الشكر",
              "CREATED_SUCCESSFULLY": "تم إنشاء فئات الإقرار بنجاح.",
              "DELETED_SUCCESSFULLY": "تم حذف فئات الإقرار بنجاح.",
              "UPDATED_SUCCESSFULLY": "تم تحديث فئات الإقرار بنجاح.",
              "GET_LIST_SUCCESSFULLY":
                  "تم الحصول على قائمة فئات الاعتراف بنجاح.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "فئات الإقرار تم إنشاء ملف json الخاص بـ excel بنجاح\t"
            },
            "ORGANIZATION_BRANCH_ADMIN_VALIDATION": {
              "VALID_EMAIL": "البريد الإلكتروني لمشرف الفرع غير صالح.\t",
              "ZIP_REQUIRED": "مطلوب الرمز البريدي لمشرف الفرع\t",
              "CITY_REQUIRED": "مطلوب مدينة مدير الفرع\t",
              "PASSWORD_SIZE":
                  "كلمة المرور يجب أن تتكون من 6 أحرف على الأقل.\t",
              "EMAIL_REQUIRED": "مطلوب البريد الإلكتروني لمشرف الفرع.\t",
              "STATE_REQUIRED": "حالة مسؤول الفرع مطلوبة\t",
              "ADDRESS_REQUIRED": "عنوان الفرع مطلوب.\t",
              "COUNTRY_REQUIRED": "مطلوب بلد مسؤول الفرع\t",
              "LAST_NAME_REQUIRED": "الاسم الأخير لمشرف الفرع مطلوب.\t",
              "FIRST_NAME_REQUIRED": "الاسم الأول لمشرف الفرع مطلوب.\t",
              "PASSWORD_VALIDATION":
                  "يجب أن تتكون كلمة المرور من حرف كبير واحد وحرف صغير واحد وحرف خاص واحد ورقم واحد والحد الأدنى 6.\t"
            }
          },
          "createdAt": "2024-04-04T05:33:52.774Z",
          "updatedAt": "2024-05-16T09:26:40.806Z",
          "created_by": "Anantha Super Admin",
          "updated_by": "Anantha Super Admin",
          "created_at_timezone": "2024-04-04T11:03:52.774Z"
        },
        {
          "id": "4231d366-940a-4d39-88e5-82c06482a184",
          "language": "Hindi",
          "code": "hi",
          "status": "1",
          "messages": {
            "CR": {
              "GET_CR": "\tपरिवर्तन अनुरोध सफलतापूर्वक प्राप्त हुआ.",
              "CREATED": "\tपरिवर्तन अनुरोध बनाया गया",
              "NOT_FOUND": "\tपरिवर्तन अनुरोध मौजूद नहीं है.",
              "GET_CR_LIST": "\tपरिवर्तन अनुरोध सूची सफलतापूर्वक प्राप्त हुई।",
              "GET_PROJECT_WO_CR":
                  "\tप्रोजेक्ट प्राप्त करें जिसमें अब परिवर्तन अनुरोध है",
              "DELETED_SUCCESSFULLY":
                  "\tपरिवर्तन अनुरोध सफलतापूर्वक हटा दिया गया.",
              "UPDATED_SUCCESSFULLY":
                  "परिवर्तन अनुरोध सफलतापूर्वक अद्यतन किया गया.",
              "CR_DETAILS_NOT_AVAILABLE": "\tपरिवर्तन अनुरोध विवरण नहीं मिला.",
              "PROJECT_CR_NOT_AVAILABLE":
                  "\tइस प्रोजेक्ट में कोई परिवर्तन अनुरोध नहीं है"
            },
            "BOOK": {
              "NOT_FOUND": "\tकिताब नहीं मिली",
              "NOT_DELETED":
                  "\tअन्य मॉड्यूल पर निर्भरता के कारण पुस्तक हटाई नहीं गई",
              "NUMBER_SAME":
                  "वही नंबर मौजूद है कृपया किसी अन्य पुस्तक नंबर के साथ प्रयास करें",
              "SOME_DELETED": "\tकुछ किताब हटा दी गई",
              "ALREADY_EXIST": "\tपुस्तक पहले से मौजूद है",
              "EXCEL_NOT_FOUND": "पुस्तक एक्सेल नहीं मिली",
              "NAME_ALREADY_EXIST":
                  "\tपुस्तक का नाम पहले से ही मौजूद है कृपया किसी अन्य पुस्तक के नाम के साथ प्रयास करें",
              "CREATED_SUCCESSFULLY": "\tपुस्तक सफलतापूर्वक बनाई गई.",
              "DELETED_SUCCESSFULLY": "\tपुस्तक सफलतापूर्वक हटा दी गई.",
              "UPDATED_SUCCESSFULLY": "\tपुस्तक सफलतापूर्वक अपडेट की गई.",
              "GET_LIST_SUCCESSFULLY": "\tपुस्तक सूची सफलतापूर्वक प्राप्त हुई.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "\tबुक एक्सेल की json फ़ाइल सफलतापूर्वक बनाई गई"
            },
            "FILE": {"GIF_NOT_FOUND": "Gif फ़ाइल की अनुमति नहीं है."},
            "MAKE": {
              "NAME_EXIST": "\tमेक का नाम पहले से मौजूद है.",
              "MAKE_NOT_EXIST": "\tमेक अस्तित्व में नहीं है.",
              "GET_MAKE_LISTING": "\tविवरण सफलतापूर्वक प्राप्त करें।",
              "EDIT_MAKE_SUCCESSFULLY": "\tसफलतापूर्वक संपादित करें.",
              "MAKE_CREATED_SUCCESSFULLY": "\tसफलतापूर्वक बनाया गया."
            },
            "PLAN": {
              "NOT_FOUND": "\tसफलतापूर्वक बनाया गया.",
              "NOT_DELETED": "\tयोजना नहीं हटाया गया संबंध मौजूद है.",
              "SOME_DELETED":
                  "\tकुछ रिकॉर्ड सफलतापूर्वक हटा दिए गए, अन्य नहीं हटाए गए।\t",
              "ALREADY_EXIST":
                  "योजना का नाम पहले से ही मौजूद है कृपया किसी अन्य योजना के नाम के साथ प्रयास करें",
              "GET_SUCCESSFULLY": "योजना सफल हो.",
              "CREATED_SUCCESSFULLY": "योजना सफलतापूर्वक बनाई गई.",
              "DELETED_SUCCESSFULLY": "\tयोजना सफलतापूर्वक हटा दी गई.",
              "UPDATED_SUCCESSFULLY": "\tयोजना सफलतापूर्वक अपडेट की गई.",
              "GET_LIST_SUCCESSFULLY": "\tयोजना सूची सफलतापूर्वक प्राप्त हुई."
            },
            "ROLE": {
              "ADDED": "\tभूमिका सफलतापूर्वक जोड़ी गई.",
              "FETCH": "\tभूमिका सफलतापूर्वक प्राप्त हुई",
              "EDITED": "\tभूमिका सफलतापूर्वक संपादित की गई.",
              "DELETED": "\tभूमिका सफलतापूर्वक हटा दी गई.",
              "ALREADY_EXIST": "\tभूमिका पहले से मौजूद है."
            },
            "SMTP": {
              "NOT_FOUND": "\tएसएमटीपी नहीं मिला",
              "ALREADY_EXIST": "\tSMTP पहले से मौजूद है",
              "EXCEL_NOT_FOUND": "\tएसएमटीपी एक्सेल नहीं मिला",
              "GET_SUCCESSFULLY": "\tSMTP सफलतापूर्वक प्राप्त हुआ.",
              "NAME_ALREADY_EXIST":
                  "\tएसएमटीपी नाम पहले से ही मौजूद है कृपया किसी अन्य एसएमटीपी नाम के साथ प्रयास करें",
              "CREATED_SUCCESSFULLY": "\tSMTP सफलतापूर्वक बनाया गया.",
              "DELETED_SUCCESSFULLY": "SMTP सफलतापूर्वक हटा दिया गया.",
              "UPDATED_SUCCESSFULLY": "\tएसएमटीपी सफलतापूर्वक अपडेट किया गया.",
              "GET_LIST_SUCCESSFULLY": "\tSMTP सूची सफलतापूर्वक प्राप्त हुई.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "\tSMTP एक्सेल की json फ़ाइल सफलतापूर्वक बनाई गई"
            },
            "TASK": {
              "TASK_GET": "कार्य सफलतापूर्वक प्राप्त करें.",
              "DUPLICATE_TASK": "\tकार्य पहले से मौजूद है.",
              "TASK_NOT_FOUND": "\tकार्य नहीं मिला.",
              "ADD_TASK_SUCCESS": "\tकार्य सफलतापूर्वक जोड़ा गया.",
              "EDIT_TASK_SUCCESS": "\tकार्य सफलतापूर्वक संपादित हुआ.",
              "DELETE_TASK_SUCCESS": "\tकार्य सफलतापूर्वक हटा दिया गया.",
              "GET_ALL_TASK_SUCCESS": "\tसभी कार्य सफलतापूर्वक प्राप्त करें।",
              "EDIT_TASK_SUCCESS_STATUS":
                  "\tकार्य स्थिति सफलतापूर्वक परिवर्तित हुई.",
              "TASK_DETAILS_NOT_AVAILABLE": "\tकार्य विवरण उपलब्ध नहीं है."
            },
            "ZOOM": {
              "GET_ALL": "\tज़ूम विवरण सूची सफलतापूर्वक प्राप्त हुई..",
              "NOT_EXIST": "\tज़ूम विवरण मौजूद नहीं है.",
              "NOT_FOUND": "\tज़ूम विवरण नहीं मिला.",
              "GET_DETAILS": "\tज़ूम विवरण सफलतापूर्वक प्राप्त हुआ.",
              "ALREADY_EXIST": "\tज़ूम विवरण पहले से मौजूद है.",
              "CREATED_SUCCESSFULLY": "ज़ूम विवरण सफलतापूर्वक बनाया गया.",
              "DELETED_SUCCESSFULLY": "ज़ूम विवरण सफलतापूर्वक हटा दिया गया.",
              "UPDATED_SUCCESSFULLY": "\tज़ूम विवरण सफलतापूर्वक अपडेट किया गया."
            },
            "ASSET": {
              "GET_SUCCESSFULLY": "\tसंपत्ति सफलतापूर्वक प्राप्त होती है.",
              "WRONG_ASSET_TYPE": "\tसंपत्ति ग़लत है.",
              "COUNT_SUCCESSFULLY": "\tकुल मिलाकर सफल हो जाओ.",
              "DELETE_SUCCESSFULLY": "\tसंपत्ति सफलतापूर्वक हटा दी गई.",
              "CREATED_SUCCESSFULLY": "\tसंपत्ति सफलतापूर्वक बनाई गई.",
              "UPDATED_SUCCESSFULLY": "\tसंपत्ति सफलतापूर्वक अद्यतन की गई.",
              "GET_LIST_SUCCESSFULLY":
                  "संपत्ति सूची सफलतापूर्वक प्राप्त हुई.\t",
              "ASSET_CODE_ALREDAY_EXIST": "\tएसेट कोड पहले से मौजूद है.",
              "ASSET_COUNT_SUCCESSFULLY":
                  "कुल संपत्ति का प्रकार सफलतापूर्वक प्राप्त हुआ.\t",
              "INSOCK_ASSET_COUNT_SUCCESSFULLY":
                  "\tकुल इंस्टॉक परिसंपत्ति प्रकार सफलतापूर्वक प्राप्त हुआ।"
            },
            "CLASS": {
              "NOT_FOUND": "कक्षा नहीं मिली.\t",
              "NOT_DELETED": "\tवर्ग नहीं हटाया गया संबंध मौजूद है।",
              "SOME_DELETED":
                  "कुछ रिकॉर्ड सफलतापूर्वक हटा दिए गए, अन्य नहीं हटाए गए।",
              "ALREADY_EXIST":
                  "\tकक्षा का नाम पहले से ही मौजूद है कृपया किसी अन्य कक्षा के नाम के साथ प्रयास करें",
              "GET_SUCCESSFULLY": "\tकक्षा सफलतापूर्वक प्राप्त करें.",
              "CREATED_SUCCESSFULLY": "\tकक्षा सफलतापूर्वक बनाई गई.",
              "DELETED_SUCCESSFULLY": "कक्षा सफलतापूर्वक हटा दी गई.",
              "UPDATED_SUCCESSFULLY": "\tकक्षा सफलतापूर्वक अपडेट की गई.",
              "GET_LIST_SUCCESSFULLY": "\tकक्षा सूची सफलतापूर्वक प्राप्त हुई."
            },
            "LEAVE": {
              "LEAVE_GET": "\tसफलतापूर्वक छोड़ें प्राप्त करें.",
              "LEAVE_DUPLICATE": "\tछोड़ें पहले से ही मौजूद हैं.",
              "LEAVE_NOT_ADDED": "इस दिन की पाली में छुट्टी न जोड़ें।",
              "LEAVE_NOT_FOUND": "छुट्टी नहीं मिली.",
              "ADD_LEAVE_SUCCESS": "\tसफलतापूर्वक जोड़ा गया छोड़ें.",
              "EDIT_LEAVE_SUCCESS": "सफलतापूर्वक संपादित छोड़ें.\t",
              "LEAVE_CANNOT_DELET": "\tअब आप लीव को डिलीट नहीं कर सकते.",
              "MAKE_SEPARATE_LEAVE":
                  "इस दिन की पाली में छुट्टियाँ न जोड़ें, अलग से छुट्टियाँ बनाएँ।",
              "UPDATE_LEAVE_STATUS": "छोड़ें स्थिति अद्यतन की गई.\t",
              "DELETE_LEAVE_SUCCESS": "\tसफलतापूर्वक हटा दिया गया.",
              "START_GRETERTHEN_END": "\tआरंभ तिथि समाप्ति तिथि से बड़ी है.",
              "GET_ALL_LEAVE_SUCCESS": "सभी पत्तियाँ सफलतापूर्वक प्राप्त करें।",
              "START_END_DATE_IS_HOLIDAY":
                  "\tआरंभ तिथि या समाप्ति तिथि अवकाश है, कोई अन्य तिथि चुनें।",
              "LEAVE_DETAILS_NOT_AVAILABLE": "\tछुट्टी का विवरण उपलब्ध नहीं है."
            },
            "ROLES": {"ADDED": "\tभूमिका सफलतापूर्वक जोड़ी गई."},
            "ROOMS": {
              "GET_ROOM": "\tकमरे का विवरण सफलतापूर्वक प्राप्त हुआ.",
              "NOT_FOUND": "कमरा नहीं मिला\t",
              "NOT_DELETED": "\tरूम डिलीट नहीं किया गया संबंध मौजूद है।",
              "GET_ALL_ROOM": "कमरे की सूची सफलतापूर्वक प्राप्त हुई..\t",
              "SOME_DELETED":
                  "\tकुछ रिकॉर्ड सफलतापूर्वक हटा दिए गए, अन्य नहीं हटाए गए।",
              "ALREADY_EXIST":
                  "रूम्स का नाम पहले से ही मौजूद है, कृपया किसी अन्य रूम्स नाम के साथ प्रयास करें",
              "ROOM_NOT_EXIST": "\tकमरा मौजूद नहीं है.",
              "ROOM_ALREADY_EXIST": "\tकमरा पहले से मौजूद है.",
              "CREATED_SUCCESSFULLY": "\tकमरा सफलतापूर्वक बनाया गया.",
              "DELETED_SUCCESSFULLY": "कमरा सफलतापूर्वक हटा दिया गया.",
              "UPDATED_SUCCESSFULLY": "कमरा सफलतापूर्वक अपडेट किया गया."
            },
            "SHEET": {"FETCH": "\tएक्सेल शीट यूआरएल सफलतापूर्वक लाया गया।"},
            "USERS": {
              "INVALID_PM": "\tउपयोगकर्ता प्रोजेक्ट मैनेजर नहीं है.",
              "INVALID_TL": "\tउपयोगकर्ता टीम लीडर नहीं है.",
              "LEAVE_TODAY": "\tकर्मचारी आज छुट्टी पर हैं.",
              "LOGOUT_FAIL": "आपको लॉग आउट करते समय त्रुटि हुई.",
              "NOT_ALLOWED": "\tआपको इस भूमिका तक पहुंचने की अनुमति नहीं है.",
              "URL_EXPIRED": "\tयह यूआरएल समाप्त हो चुका है या अमान्य है.",
              "GET_ALL_USER": "सभी उपयोगकर्ताओं को सफलतापूर्वक प्राप्त करें.",
              "INVALID_USER": "\tआपको नया उपयोगकर्ता बनाने की अनुमति नहीं है.",
              "USER_CREATED": "\tउपयोगकर्ता सफलतापूर्वक बनाया गया.",
              "USER_DELETED": "\tउपयोगकर्ता सफलतापूर्वक हटा दिया गया.",
              "GET_USER_LIST": "\tउपयोगकर्ता सूची सफलतापूर्वक प्राप्त हुई.",
              "LOGIN_SUCCESS": "\tआप सफलतापूर्वक लॉग इन हो गए हैं.",
              "LOGOUT_SUCCESS": "\tसफलतापूर्वक लॉगआउट करें.",
              "SIGNUP_SUCCESS": "\tउपयोगकर्ता सफलतापूर्वक बनाया गया.",
              "USERTYPE_EXIST": "\tउपयोगकर्ता प्रकार पहले से मौजूद है.",
              "USER_NOT_FOUND": "\tउपभोगकर्ता मौजूद नहीं।",
              "EMAIL_NOT_FOUND": "\tईमेल मौजूद नहीं है.",
              "FETCH_USER_LIST": "डेटा सफलतापूर्वक लाया जा रहा है.",
              "ADDED_BULK_USERS":
                  "\tबड़ी संख्या में उपयोगकर्ता सफलतापूर्वक जोड़े गए.",
              "CREATED_USERTYPE": "उपयोगकर्ता प्रकार सफलतापूर्वक बनाया गया.",
              "DEACTIVE_ACCOUNT":
                  "\tआपका खाता निष्क्रिय कर दिया गया है, कृपया व्यवस्थापक से संपर्क करें।",
              "GET_USER_PROFILE":
                  "\tउपयोगकर्ता प्रोफ़ाइल सफलतापूर्वक प्राप्त हुई.",
              "INVALID_PASSWORD": "अमान्य ईमेल या पासवर्ड।",
              "USERTYPE_DELETED":
                  "\tउपयोगकर्ता प्रकार सफलतापूर्वक हटा दिया गया.",
              "USERTYPE_UPDATED":
                  "\tउपयोगकर्ता प्रकार सफलतापूर्वक अपडेट किया गया.",
              "GET_USERTYPE_LIST":
                  "\tउपयोगकर्ता प्रकार सूची सफलतापूर्वक प्राप्त हुई.",
              "PASSWORDMINLENGTH":
                  "\tआपके पासवर्ड में कम से कम 6 अक्षर होने चाहिए।",
              "PASSWORD_MISMATCH":
                  "\tनया पासवर्ड और कन्फर्म पासवर्ड मेल नहीं खाता।",
              "EMAIL_CHANGE_ERROR":
                  "\tईमेल नहीं बदला गया, ईमेल भेजने में त्रुटि हुई। अन्य सभी विवरण सफलतापूर्वक अपडेट किए गए।",
              "INVALIDOLDPASSWORD": "\tकृपया वैध वर्तमान पासवर्ड दर्ज करें.",
              "NOT_VERIFY_ACCOUNT": "\tकृपया अपने खाते को सत्यापित करें।",
              "USERTYPE_NOT_FOUND": "\tउपयोगकर्ता प्रकार मौजूद नहीं है.",
              "EMAIL_ALREDAY_EXIST": "\tयह ईमेल इस ऐप में पहले से मौजूद है.",
              "GET_USER_AUTH_TOKEN":
                  "नए प्रमाणीकरण टोकन सफलतापूर्वक प्राप्त करें.",
              "ADMIN_PROFILE_UPDATE": "\tप्रोफ़ाइल अद्यतन सफलतापूर्वक.",
              "GET_USERTYPE_PROFILE":
                  "\tउपयोगकर्ता प्रकार सफलतापूर्वक प्राप्त हुआ.",
              "LOCATION_DEACTIVATED":
                  "\tकार्य स्थान निष्क्रिय कर दिया गया है, कृपया व्यवस्थापक से संपर्क करें।",
              "ORGANIZATION_DELETED":
                  "आपका संगठन हटा दिया गया है। समस्या के समाधान के लिए कृपया व्यवस्थापक से संपर्क करें",
              "PROFILE_FETCH_SUCCESS": "प्रोफ़ाइल फ़ेच सफल.",
              "RESETPASSWORD_SUCCESS": "\tआपका पासवर्ड बदला जा चुका है।",
              "FORGOTPASSWORD_SUCCESS": "\tआपका पासवर्ड बदला जा चुका है।",
              "PASSWORDUPDATE_SUCCESS": "\tआपका पासवर्ड सफलतापूर्वक बदल गया.",
              "PROFILE_DELETE_SUCCESS": "\tप्रोफ़ाइल सफलतापूर्वक हटा दी गई.",
              "MAX_USERS_LIMIT_REACHED":
                  "\tइस योजना के लिए अधिकतम उपयोगकर्ताओं की सीमा पूरी हो गई है",
              "USERDETAIL_NOT_AVAILABLE": "\tउपयोगकर्ता विवरण नहीं मिला.",
              "CONTRACTOR_STATUS_PENDING":
                  "\tआपका खाता सत्यापन के लिए लंबित है. सहायता के लिए कृपया विक्रेता से संपर्क करें।",
              "CONTRACTOR_STATUS_REJECTED":
                  "\tआपका खाता अक्षम है। कृपया अपने खाते को पुनः सक्रिय करने के लिए विक्रेता से संपर्क करें।",
              "USER_DETAILS_NOT_AVAILABLE":
                  "\tउपयोगकर्ता विवरण उपलब्ध नहीं है.",
              "MOBILE_NUMBER_ALREADY_EXIST":
                  "\tमोबाइल नंबर हमारे सिस्टम में पहले से मौजूद है! कृपया कोई भिन्न दर्ज करें.",
              "ORGANIZATION_BRANCH_DELETED":
                  "\tआपके संगठन की शाखा हटा दी गई है। समस्या के समाधान के लिए कृपया व्यवस्थापक से संपर्क करें",
              "FORGOTPASSWORD_EMAIL_SUCCESS":
                  "ईमेल भेज दिया गया है कृपया अपना इनबॉक्स जांचें और अपना पासवर्ड रीसेट करने के लिए प्राप्त लिंक पर क्लिक करें।\t",
              "OLDPASSWORD_NEWPASSWORD_SAME":
                  "\tवर्तमान पासवर्ड और नया पासवर्ड एक समान नहीं हो सकते.",
              "ORGANIZATION_STATUS_INACTIVE":
                  "\tआपका संगठन किसी कारण से निष्क्रिय हो गया है। समस्या के समाधान के लिए कृपया व्यवस्थापक से संपर्क करें",
              "PROFILE_UPDATE_WITH_EMAIL_SUCCESS":
                  "प्रोफाइल को सफलतापूर्वक अपडेट किया गया। कृपया अपना नया ईमेल सत्यापित करें.",
              "ORGANIZATION_BRANCH_STATUS_INACTIVE":
                  "प्रोफाइल को सफलतापूर्वक अपडेट किया गया। कृपया अपना नया ईमेल सत्यापित करें."
            },
            "AUTHOR": {
              "NOT_FOUND": "\tलेखक\tलेखक नहीं मिला नहीं मिला",
              "ALREADY_EXIST": "\tलेखक पहले से मौजूद है",
              "EXCEL_NOT_FOUND": "लेखक एक्सेल नहीं मिला",
              "GET_SUCCESSFULLY": "लेखक सफलतापूर्वक प्राप्त करें.",
              "NAME_ALREADY_EXIST":
                  "\tलेखक का नाम पहले से ही मौजूद है कृपया किसी अन्य लेखक के नाम के साथ प्रयास करें",
              "CREATED_SUCCESSFULLY": "लेखक ने सफलतापूर्वक बनाया.",
              "DELETED_SUCCESSFULLY": "\tलेखक सफलतापूर्वक हटा दिया गया.",
              "UPDATED_SUCCESSFULLY": "लेखक सफलतापूर्वक अद्यतन किया गया.",
              "GET_LIST_SUCCESSFULLY": "लेखक सूची सफलतापूर्वक प्राप्त हुई.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "\tलेखक एक्सेल की json फ़ाइल सफलतापूर्वक बनाई गई"
            },
            "CLIENT": {
              "CREATED": "\tग्राहक बनाया गया.",
              "NOT_FOUND": "\tग्राहक मौजूद नहीं है.",
              "GET_CLIENT_LIST": "\tग्राहक सूची सफलतापूर्वक प्राप्त हुई.",
              "GET_CLIENT_PROFILE":
                  "क्लाइंट प्रोफ़ाइल सफलतापूर्वक प्राप्त हुई.\t",
              "EMAIL_ALREDAY_EXIST": "\tक्लाइंट ईमेल पहले से मौजूद है.",
              "PROFILE_UPDATE_SUCCESS":
                  "क्लाइंट प्रोफ़ाइल सफलतापूर्वक अपडेट की गई.\t",
              "CLIENT_DETAILS_NOT_AVAILABLE": "ग्राहक विवरण नहीं मिला.\t"
            },
            "COURSE": {
              "NOT_FOUND": "पाठ्यक्रम नहीं मिला\t",
              "NOT_DELETED":
                  "अन्य मॉड्यूल पर निर्भरता के कारण पाठ्यक्रम नहीं हटाया गया\t",
              "RATING_LIST": "पाठ्यक्रम की रेटिंग सफलतापूर्वक प्राप्त हुई\t",
              "RATING_ADDED": "पाठ्यक्रम रेटिंग जोड़ी गई.\t",
              "SOME_DELETED": "कुछ किताब हटा दी गई\t",
              "ALREADY_EXIST": "पाठ्यक्रम पहले से मौजूद है\t",
              "GET_SUCCESSFULLY": "पाठ्यक्रम सफलतापूर्वक प्राप्त करें.\t",
              "NAME_ALREADY_EXIST":
                  "पाठ्यक्रम का नाम पहले से ही मौजूद है, कृपया किसी अन्य पाठ्यक्रम के नाम के साथ प्रयास करें\t",
              "CREATED_SUCCESSFULLY":
                  "पाठ्यक्रम का नाम पहले से ही मौजूद है, कृपया किसी अन्य पाठ्यक्रम के नाम के साथ प्रयास करें\t",
              "DELETED_SUCCESSFULLY": "पाठ्यक्रम सफलतापूर्वक हटा दिया गया.\t",
              "RATING_ALREADY_EXIST": "कोर्स रेटिंग पहले से मौजूद है\t",
              "UPDATED_SUCCESSFULLY":
                  "पाठ्यक्रम सफलतापूर्वक अद्यतन किया गया.\t",
              "GET_LIST_SUCCESSFULLY":
                  "पाठ्यक्रम सूची सफलतापूर्वक पाठ्यक्रम सूची सफलतापूर्वक प्राप्त हुई.\tप्राप्त हुई.\t",
              "GET_DETAIL_SUCCESSFULLY":
                  "\tपाठ्यक्रम विवरण सफलतापूर्वक प्राप्त हो जाते हैं।"
            },
            "EMAILS": {"EMAIL_SEND_SUCCESS": "एकल ईमेल सफलतापूर्वक भेजा गया."},
            "LESSON": {
              "NOT_FOUND": "सबक नहीं मिला",
              "NOT_DELETED": "\tपाठ हटाया नहीं गया संबंध मौजूद है।",
              "SOME_DELETED":
                  "\tकुछ रिकॉर्ड सफलतापूर्वक हटा दिए गए, अन्य नहीं हटाए गए।",
              "ALREADY_EXIST":
                  "\tकुछ रिकॉर्ड सफलतापूर्वक हटा दिए गए, अन्य नहीं हटाए गए।",
              "GET_SUCCESSFULLY": "\tपाठ सफलतापूर्वक प्राप्त करें.",
              "CREATED_SUCCESSFULLY": "\tपाठ सफलतापूर्वक बनाया गया.",
              "DELETED_SUCCESSFULLY": "\tपाठ सफलतापूर्वक हटा दिया गया.",
              "UPDATED_SUCCESSFULLY": "पाठ सफलतापूर्वक अद्यतन किया गया.",
              "GET_LIST_SUCCESSFULLY": "पाठ सूची सफलतापूर्वक प्राप्त हुई।"
            },
            "MODULE": {
              "NOT_FOUND": "\tमॉड्यूल नहीं मिला",
              "NOT_DELETED": "\tमॉड्यूल हटाया नहीं गया संबंध मौजूद है।",
              "SOME_DELETED":
                  "कुछ रिकॉर्ड सफलतापूर्वक हटा दिए गए, अन्य नहीं हटाए गए।",
              "ALREADY_EXIST":
                  "मॉड्यूल नाम पहले से ही मौजूद है कृपया किसी अन्य मॉड्यूल नाम के साथ प्रयास करें",
              "GET_SUCCESSFULLY": "\tमॉड्यूल सफलतापूर्वक प्राप्त हुआ.",
              "CREATED_SUCCESSFULLY": "\tमॉड्यूल सफलतापूर्वक बनाया गया.",
              "UPDATED_SUCCESSFULLY": "\tमॉड्यूल सफलतापूर्वक अपडेट किया गया.",
              "GET_LIST_SUCCESSFULLY": "मॉड्यूल सूची सफलतापूर्वक प्राप्त हुई."
            },
            "PARENT": {
              "NOT_FOUND": "\tअभिभावक नहीं मिले",
              "NOT_CREATED": "अभिभावक नहीं बनाया गया। कुछ समस्याएं थीं",
              "EXCEL_NOT_FOUND": "पेरेंट एक्सेल नहीं मिला",
              "GET_SUCCESSFULLY": "\tमाता-पिता सफलतापूर्वक प्राप्त करें.",
              "IMPORT_SUCESSFULLY": "\tपेरेंट ने सफलतापूर्वक आयात किया.",
              "CREATED_SUCCESSFULLY": "पेरेंट सफलतापूर्वक बनाया गया.",
              "DELETED_SUCCESSFULLY": "\tपेरेंट सफलतापूर्वक हटा दिया गया.",
              "UPDATED_SUCCESSFULLY": "पेरेंट सफलतापूर्वक अपडेट किया गया.",
              "GET_LIST_SUCCESSFULLY": "अभिभावक सूची सफलतापूर्वक प्राप्त हुई.",
              "EXCEL_PARENT_ALREADY_EXIST":
                  "\tएक्सेल शीट में पेरेंट पहले से मौजूद है"
            },
            "STRIPE": {
              "NOT_FOUND": "\tस्ट्राइप कुंजी नहीं मिली",
              "ALREADY_EXIST":
                  "\tस्ट्राइप कुंजी पहले से ही मौजूद है कृपया इसे अपडेट करें",
              "GET_SUCCESSFULLY": "\tस्ट्राइप कुंजी सफलतापूर्वक प्राप्त हुई।",
              "CREATED_SUCCESSFULLY": "S3 कुंजी सफलतापूर्वक बनाई गई.",
              "DELETED_SUCCESSFULLY": "\tस्ट्रेप कुंजी सफलतापूर्वक हटा दी गई।",
              "UPDATED_SUCCESSFULLY": "\tS3 विवरण सफलतापूर्वक अद्यतन।",
              "GET_LIST_SUCCESSFULLY":
                  "\tस्ट्राइप कुंजी सूची सफलतापूर्वक प्राप्त हुई।"
            },
            "TICKET": {
              "CREATED": "\tटिकट सफलतापूर्वक बनाया गया.",
              "FETCHED": "\tटिकट सफलतापूर्वक लाया गया.",
              "NOT_FOUND": "\tआपको टिकट नहीं सौंपा गया.",
              "COMMENT_ADDED": "टिप्पणी सफलतापूर्वक जोड़ी गई.",
              "STATUS_UPDATE": "टिकट की स्थिति सफलतापूर्वक अपडेट की गई।",
              "COMMENT_FETCHED": "\tटिप्पणी सफलतापूर्वक प्राप्त की गई."
            },
            "VENDOR": {
              "NAME_EXIST": "\tविक्रेता का नाम पहले से मौजूद है.",
              "VENDOR_NOT_EXIST": "विक्रेता मौजूद नहीं है.",
              "GET_VENDOR_LISTING":
                  "\tविक्रेता विवरण सफलतापूर्वक प्राप्त करें.",
              "EDIT_VENDOR_SUCCESSFULLY":
                  "\tविक्रेता को सफलतापूर्वक संपादित करें.",
              "VENDOR_CREATED_SUCCESSFULLY": "\tविक्रेता सफलतापूर्वक बनाया गया."
            },
            "COMPANY": {
              "NAME_EXIST": "कंपनी का नाम पहले से मौजूद है.",
              "COMPANY_ADDED": "कंपनी सफलतापूर्वक जोड़ी गई",
              "COMPANY_NOT_ADDED": "\tकंपनी नहीं जोड़ी जा सकी",
              "COMPANY_NOT_EXIST": "कंपनी अस्तित्व में नहीं है.",
              "GET_COMPANY_LISTING": "\tकंपनी विवरण सफलतापूर्वक प्राप्त करें.",
              "EDIT_COMPANY_SUCCESSFULLY":
                  "\tकंपनी को सफलतापूर्वक संपादित करें.",
              "COMPANY_CREATED_SUCCESSFULLY": "\tकंपनी सफलतापूर्वक बनाई गई."
            },
            "FE_USER": {
              "PARENTS": "\tअभिभावक",
              "STUDENT": "\tविद्यार्थी",
              "TEACHER": "\tअध्यापक",
              "BIO_DATA": "\tबायोडाटा",
              "LIBRARIAN": "\tपुस्तकालय अध्यक्ष",
              "STUDENT_ID": "\tस्टूडेंट आईडी",
              "ADD_STUDENT": "विद्यार्थी जोड़ें",
              "ADD_TEACHER": "\tशिक्षक जोड़ें",
              "BLOOD_GROUP": "\tब्लड ग्रुप",
              "NATIONALITY": "\tराष्ट्रीयता",
              "SELECT_DATE": "\tतारीख़ चुनें",
              "UPLOAD_LOGO": "प्रोफ़ाइल चित्र अपलोड करें",
              "EDIT_PARENTS": "\tमाता-पिता संपादित करें",
              "EDIT_STUDENT": "\tविद्यार्थी संपादित करें",
              "EDIT_TEACHER": "\tशिक्षक संपादित करें",
              "SELECT_CLASS": "\tकक्षा का चयन करें",
              "VIEW_PARENTS": "माता-पिता देखें\t",
              "VIEW_STUDENT": "छात्र देखें\t",
              "VIEW_TEACHER": "\tशिक्षक देखें",
              "DATE_OF_BIRTH": "\tजन्म की तारीख",
              "PROFILE_IMAGE": "\tप्रोफ़ाइल छवि",
              "DELETE_PARENTS": "\tमाता-पिता हटाएँ",
              "DELETE_STUDENT": "\tविद्यार्थी हटाएँ",
              "DELETE_TEACHER": "\tशिक्षक हटाएँ",
              "SELECT_SECTION": "\tअनुभाग का चयन करें",
              "DATE_OF_JOINING": "\tशामिल होने की तिथि",
              "STREET_ADDRESS_LINE_1": "\tसड़क पता (लाइन 1",
              "STREET_ADDRESS_LINE_2": "\tसड़क पता पंक्ति 2",
              "ARE_YOU_DELETE_PARENTS":
                  "\tक्या आप वाकई इस माता-पिता को हटाना चाहते हैं?",
              "ARE_YOU_DELETE_STUDENT":
                  "\tक्या आप वाकई इस छात्र को हटाना चाहते हैं?",
              "ARE_YOU_DELETE_TEACHER":
                  "\tक्या आप वाकई इस शिक्षक को हटाना चाहते हैं?"
            },
            "GENERAL": {
              "GET_LIST": "\tसूची सफलतापूर्वक प्राप्त करें.",
              "NOT_FOUND": "\tएपीआई नहीं मिला.",
              "NOT_TOKEN": "\tटोकन नहीं मिला.",
              "INVALID_ID": "\tकृपया वैध आईडी दर्ज करें.",
              "INVALID_DOC": "\tकृपया दस्तावेज़ अपलोड करें.",
              "JWT_EXPIRED":
                  "\tJWT की समय सीमा समाप्त हो गई है, कृपया पुनः लॉगिन करें।",
              "INVALID_IMAGE": "\tकृपया मान्य छवि अपलोड करें.",
              "INVALID_LOGIN": "तुम अधिकृत नहीं हो।",
              "BLACKLIST_MAIL":
                  "\tकृपया एक वैध ईमेल दर्ज करें, हम डमी ईमेल की अनुमति नहीं देते हैं।",
              "RESTRICTED_USER":
                  "\tआप यह कार्रवाई करने के लिए अधिकृत नहीं हैं.",
              "UNAUTHORIZED_USER": "\tअनधिकृत, कृपया लॉगिन करें।",
              "INVALID_SECRET_KEY": "\tअमान्य गुप्त कुंजी.",
              "PASSWORD_NOT_ALLOW":
                  "\tउपयोगकर्ता द्वारा पासवर्ड संपादित नहीं किया जा सकता.",
              "EMAIL_ALREADY_EXIST":
                  "\tईमेल पहले से ही पंजीकृत है, कृपया भिन्न मेल का उपयोग करें।",
              "GENERAL_ERROR_CONTENT":
                  "\tकुछ गलत हो गया। कृपया बाद में पुन: प्रयास करें।"
            },
            "PROJECT": {
              "PROJECT_GET": "\tप्रोजेक्ट सफलतापूर्वक प्राप्त करें.",
              "FILE_REQUIRED": "\tकोई फ़ाइल नहीं मिल रही.",
              "FILE_NOT_FOUND": "\tफ़ाइलें नहीं मिलीं.",
              "PROJECT_DUPLICATE": "\tप्रोजेक्ट पहले से मौजूद है.",
              "PROJECT_NOT_FOUND": "\tप्रोजेक्ट नहीं मिला.",
              "ADD_PROJECT_SUCCESS": "प्रोजेक्ट सफलतापूर्वक जोड़ा गया.",
              "FILE_UPLOAD_SUCCESS": "\tफ़ाइलें सफलतापूर्वक अपलोड हो गईं.",
              "EDIT_PROJECT_SUCCESS": "\tप्रोजेक्ट सफलतापूर्वक संपादित हुआ.",
              "FILE_GET_SUCCESSFULLY":
                  "\tप्रोजेक्ट दस्तावेज़ सफलतापूर्वक प्राप्त हुआ.",
              "DELETE_PROJECT_SUCCESS": "प्रोजेक्ट सफलतापूर्वक हटा दिया गया.",
              "GET_ALL_PROJECT_SUCCESS":
                  "\tसभी प्रोजेक्ट सफलतापूर्वक प्राप्त करें।",
              "PROJECT_DETAILS_NOT_AVAILABLE":
                  "\tपरियोजना विवरण उपलब्ध नहीं है."
            },
            "REQUEST": {
              "FAIL": "\tकार्रवाई नहीं मिली.",
              "ADDED": "डेटा सफलतापूर्वक जोड़ा गया.",
              "FETCH": "डेटा सफलतापूर्वक लाया गया",
              "EDITED": "\tडेटा सफलतापूर्वक संपादित किया गया.",
              "DELETED": "\tडेटा सफलतापूर्वक हटा दिया गया."
            },
            "SECTION": {
              "NOT_FOUND": "\tअनुभाग नहीं मिला",
              "NOT_DELETED": "\tअनुभाग हटाया नहीं गया संबंध मौजूद है.",
              "SOME_DELETED":
                  "\tकुछ रिकॉर्ड सफलतापूर्वक हटा दिए गए, अन्य नहीं हटाए गए।",
              "ALREADY_EXIST": "अनुभाग पहले से मौजूद है\t",
              "GET_SUCCESSFULLY": "अनुभाग सफलतापूर्वक प्राप्त करें.",
              "NAME_ALREADY_EXIST":
                  "\tअनुभाग नाम पहले से ही मौजूद है कृपया किसी अन्य अनुभाग नाम के साथ प्रयास करें",
              "CREATED_SUCCESSFULLY": "\tअनुभाग सफलतापूर्वक बनाया गया.",
              "DELETED_SUCCESSFULLY": "अनुभाग सफलतापूर्वक हटा दिया गया.",
              "UPDATED_SUCCESSFULLY": "\tअनुभाग सफलतापूर्वक अद्यतन किया गया.",
              "GET_LIST_SUCCESSFULLY": "\tअनुभाग सूची सफलतापूर्वक प्राप्त हुई.",
              "SUBJECT_ASSIGN_SUCCESS": "\tविषय सफलतापूर्वक असाइन करें",
              "TEACHER_ASSIGN_SUCCESS": "शिक्षक सफलतापूर्वक असाइन करें"
            },
            "STUDENT": {
              "NOT_FOUND": "\tछात्र नहीं मिला",
              "EXCEL_NOT_FOUND": "\tछात्र एक्सेल नहीं मिला",
              "GET_SUCCESSFULLY": "\tविद्यार्थी सफलता प्राप्त करें.",
              "EXCEL_CLASS_ISSUE": "\tबशर्ते कक्षा मौजूद नहीं है",
              "IMPORT_SUCESSFULLY": "\tविद्यार्थी ने सफलतापूर्वक आयात किया.",
              "EXCEL_SECTION_ISSUE": "\tबशर्ते अनुभाग मौजूद नहीं है",
              "CREATED_SUCCESSFULLY": "विद्यार्थी सफलतापूर्वक बनाया गया.",
              "DELETED_SUCCESSFULLY": "विद्यार्थी सफलतापूर्वक बनाया गया.",
              "UPDATED_SUCCESSFULLY":
                  "\tविद्यार्थी सफलतापूर्वक अद्यतन किया गया.",
              "GET_LIST_SUCCESSFULLY": "छात्र सूची सफलतापूर्वक प्राप्त हुई.\t",
              "EXCEL_STUDENT_ALREADY_EXIST":
                  "एक्सेल शीट में छात्र पहले से ही मौजूद है"
            },
            "TEACHER": {
              "NOT_FOUND": "\tशिक्षक नहीं मिले",
              "NOT_DELETED": "शिक्षक नहीं हटाया गया संबंध मौजूद है.",
              "SOME_DELETED":
                  "\tकुछ रिकॉर्ड सफलतापूर्वक हटा दिए गए, अन्य नहीं हटाए गए।",
              "EXCEL_NOT_FOUND": "\tशिक्षक एक्सेल नहीं मिला",
              "GET_SUCCESSFULLY": "शिक्षक को सफलता मिले.",
              "IMPORT_SUCESSFULLY": "\tशिक्षक ने सफलतापूर्वक आयात किया.",
              "CREATED_SUCCESSFULLY": "\tशिक्षक सफलतापूर्वक बनाया गया.",
              "DELETED_SUCCESSFULLY": "\tशिक्षक सफलतापूर्वक हटा दिया गया.",
              "UPDATED_SUCCESSFULLY": "\tशिक्षक सफलतापूर्वक अद्यतन किया गया.",
              "GET_LIST_SUCCESSFULLY": "\tशिक्षक सूची सफलतापूर्वक प्राप्त हुई.",
              "EXCEL_DEPARTMENT_ISSUE": "\tबशर्ते विभाग अस्तित्व में न हो",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "एक्सेल शीट में शिक्षक पहले से मौजूद हैं"
            },
            "FEEDBACK": {
              "GET": "टिकट सफलतापूर्वक मिल गया.",
              "DATA": "डैशबोर्ड डेटा सफलतापूर्वक प्राप्त हुआ",
              "GET_SINGLE": "\tटिकट सफलतापूर्वक मिल गया.",
              "INVALID_ID": "\tकृपया वैध आईडी दर्ज करें.",
              "CAN_NOT_EDIT": "आप इस फ़ील्ड को संपादित नहीं कर सकते.",
              "FEEDBACK_CHAT": "टिकट संदेश सफलतापूर्वक भेजा गया.",
              "FEEDBACK_CHAT_GET": "चैट सफलतापूर्वक प्राप्त करें.",
              "GET_FEEDBACK_LIST": "\tटिकट सूची सफलतापूर्वक प्राप्त हुई.",
              "FEEDBACK_NOT_FOUND": "\tटिकट नहीं मिला.",
              "GET_REMARK_SUCCESS":
                  "\tटिकट टिप्पणियाँ सफलतापूर्वक प्राप्त हुईं.",
              "EDITED_SUCCESSFULLY": "\tटिकट सफलतापूर्वक अपडेट किया गया.",
              "CREATED_SUCCESSFULLY": "\tटिकट जनरेट हुआ.",
              "FEEDBACK_TYPE_CREATED": "\tटिकट प्रकार बनाया गया.",
              "FEEDBACK_IS_NOT_CLOSED": "टिकट अभी बंद नहीं हुआ है.",
              "FORBIDDEN_REASSIGNMENT":
                  "आप पुन: असाइन करने के लिए अधिकृत नहीं हैं.\t",
              "ASSIGNEE_ALREADY_EXISTS": "समनुदेशिती पहले से मौजूद है.",
              "FEEDBACK_CAN_NOT_DELETE": "\tआप इस टिकट को हटा नहीं सकते.",
              "REASSIGNED_SUCCESSFULLY":
                  "नया कार्यभार सफलतापूर्वक सौंपा गया है.",
              "REMARK_ADDED_SUCCESSFULLY": "टिकट टिप्पणी सफलतापूर्वक जोड़ी गई.",
              "USER_VALIDATION_SUCCESSFUL":
                  "\tटिकट सफलतापूर्वक अपडेट किया गया.",
              "FEEDBACK_DELETED_SUCCESSFULLY":
                  "\tटिकट सफलतापूर्वक हटा दिया गया.",
              "FEEDBACK_DETAILS_NOT_AVAILABLE": "\tटिकट उपलब्ध नहीं है."
            },
            "LANGUAGE": {
              "NOT_FOUND": "\tभाषा नहीं मिली.",
              "ALREADY_EXIST": "भाषा पहले से मौजूद है.",
              "GET_SUCCESSFULLY": "भाषा सफलतापूर्वक प्राप्त होती है।\t",
              "DELETE_SUCCESSFULLY": "भाषा सफलतापूर्वक हटा दी गई.",
              "CREATED_SUCCESSFULLY": "भाषा सफलतापूर्वक बनाई गई.\t",
              "UPDATED_SUCCESSFULLY": "\tभाषा सफलतापूर्वक अपडेट की गई."
            },
            "REGIONAL": {
              "CITIES_FETCH": "शहर सफलतापूर्वक प्राप्त हुए\t",
              "STATES_FETCH": "\tराज्यों को सफलतापूर्वक प्राप्त हुआ",
              "TIMEZONE_FETCH": "\tसमय-क्षेत्र सफलतापूर्वक प्राप्त हुआ",
              "COUNTRIES_FETCH": "देशों ने सफलतापूर्वक प्राप्त किया\t",
              "CITIES_NOT_FOUND": "शहर नहीं मिले\t",
              "STATES_NOT_FOUND": "राज्य नहीं मिले\t",
              "TIMEZONE_NOT_FOUND": "समय-क्षेत्र नहीं मिला\t",
              "COUNTRIES_NOT_FOUND": "\tदेश नहीं मिले"
            },
            "DASHBOARD": {
              "SUPER_ADMIN": "सुपर-एडमिन डैशबोर्ड सफलतापूर्वक लाया गया।\t"
            },
            "FE_BRANCH": {
              "BRANCH": "शाखा\t",
              "ADD_BRANCH": "\tशाखा जोड़ें",
              "BRANCH_NAME": "\tशाखा का नाम",
              "EDIT_BRANCH": "शाखा संपादित करें",
              "LIST_BRANCH": "\tसूची शाखा",
              "VIEW_BRANCH": "\tशाखा देखें",
              "BRANCH_EMAIL": "शाखा ईमेल\t",
              "DELETE_BRANCH": "शाखा हटाएँ\t",
              "UPDATE_BRANCH": "अद्यतन शाखा\t",
              "BRANCH_ADDRESS": "\tशाखा पता",
              "ADD_BRANCH_ADMIN": "शाखा व्यवस्थापक जोड़ें",
              "EDIT_BRANCH_ADMIN": "शाखा व्यवस्थापक संपादित करें\t",
              "BRANCH_INFORMATION": "शाखा सूचना\t",
              "UPLOAD_BRANCH_LOGO": "शाखा लोगो अपलोड करें\t",
              "ARE_YOU_SURE_WANT_TO_DELETE":
                  "\tक्या आप वाकई इस शाखा को हटाना चाहते हैं?"
            },
            "FE_COMMON": {
              "NO": "#",
              "ADD": "\tजोड़ना",
              "NOO": "\tनहीं",
              "YES": "\tहाँ",
              "ZIP": "\tज़िप कोड",
              "ltr": "\tएल टीआर",
              "rtl": "आरटीएल",
              "CITY": "\tशहर",
              "DATE": "\tतारीख",
              "MODE": "\tतरीका",
              "NAME": "\tनाम",
              "NEXT": "\tअगला",
              "SAVE": "\tबचाना",
              "SEND": "भेजना",
              "USER": "\tउपयोगकर्ता",
              "CLASS": "\tकक्षा",
              "CLEAR": "\tस्पष्ट",
              "EMAIL": "ईमेल",
              "STATE": "राज्य",
              "TOTAL": "कुल",
              "UP_TO": "\tतक",
              "USERS": "उपयोगकर्ताओं",
              "ACTION": "\tकार्रवाई",
              "CANCEL": "रद्द करना",
              "CREATE": "\tबनाएं",
              "EXPORT": "निर्यात",
              "FILTER": "\tफ़िल्टर",
              "FRIDAY": "\tशुक्रवार",
              "GENDER": "\tलिंग",
              "IMPORT": "\tआयात",
              "MONDAY": "\tसोमवार",
              "SEARCH": "\tखोज",
              "SELECT": "\tचुनना",
              "STEP_1": "\tचुनना",
              "STEP_2": "चरण दो",
              "STEP_3": "\tचरण 3",
              "SUBMIT": "\tजमा करना",
              "SUNDAY": "\tरविवार",
              "ADDRESS": "\tपता",
              "CHECKED": "चेक किए गए",
              "COUNTRY": "\tदेश",
              "NO_DATA": "कोई डेटा नहीं",
              "PAY_NOW": "\tअब भुगतान करें",
              "PREVIEW": "पूर्व दर्शन\t",
              "LOAD_LESS": "\tकम लोड करें",
              "LOAD_MORE": "और लोड करें",
              "SHOW_LESS": "\tकम दिखाएं",
              "SHOW_MORE": "और दिखाओ",
              "WEDNESDAY": "\tबुधवार",
              "CREATED_AT": "पर बनाया गया",
              "CREATED_BY": "\tके द्वारा बनाई गई",
              "FIRST_NAME": "\tपहला नाम",
              "SELECT_ALL": "\tसबका चयन करें",
              "START_DATE": "आरंभ करने की तिथि",
              "START_TIME": "समय शुरू",
              "ADD_SECTION": "अनुभाग जोड़ें",
              "ATTACHEMENT": "लगाव",
              "DESCRIPTION": "\tविवरण",
              "DROP_SELECT": "\tफ़ाइल छोड़ें या चुनें",
              "MIDDLE_NAME": "\tमध्य नाम",
              "SEARCH_HERE": "\tयहां तलाश करो",
              "SELECT_CITY": "\tशहर चुनें",
              "SELECT_DATE": "\tतारीख़ चुनें",
              "UPLOAD_FILE": "\tफ़ाइल अपलोड करें",
              "CREATED_DATE": "\tतिथि बनाएं",
              "EDIT_SECTION": "\tअनुभाग का संपादन",
              "PHONE_NUMBER": "फ़ोन नंबर\t",
              "SECTION_NAME": "\tअनुभाग का नाम",
              "SELECT_STATE": "\tराज्य चुनें",
              "VIEW_SECTION": "अनुभाग देखें",
              "MOBILE_NUMBER": "\tमोबाइल नंबर",
              "ROWS_PER_PAGE": "\tप्रति पृष्ठ पंक्तियाँ",
              "DELETE_SECTION": "\tअनुभाग हटाएँ",
              "SELECT_COUNTRY": "\tदेश चुनें",
              "SELECT_SUBJECT": "\tविषय का चयन करें",
              "TOGGLE_COLUMNS": "\tकॉलम टॉगल करें",
              "BILLING_ADDRESS": "\t\tबिल भेजने का पता",
              "MULTIPLE_SELECT": "\tएकाधिक चयन",
              "SELECT_TIMEZONE": "समयक्षेत्र चुनें",
              "UNLIMITED_USERS": "\tअसीमित उपयोगकर्ता",
              "LABEL_START_DATE": "\tआरंभ करने की तिथि*",
              "QUICK_PAGE_LINKS": "\tत्वरित पृष्ठ लिंक",
              "SEARCH_YOUR_PAGE": "\tअपना पृष्ठ खोजें",
              "LABEL_DESCRIPTION": "\tविवरण*",
              "PERMENENT_ADDRESS": "\tस्थायी पता",
              "UNLIMITED_BRANCHES": "\tअसीमित शाखाएँ",
              "NO_TICKETS_AVAILABLE": "कोई टिकट उपलब्ध नहीं.!!\t",
              "SAMPLE_FILE_DOWNLOAD": "नमूना फ़ाइल डाउनलोड\t",
              "EMERGENCY_PHONE_NUMBER": "आपातकालीन फ़ोन नंबर\t",
              "WHITE_SPACE_NOT_INCLUDE":
                  "व्हाइटस्पेस को शामिल नहीं किया जाना चाहिए.\t",
              "NO_CONVERSATIONS_SELECTED": "\tकोई वार्तालाप चयनित नहीं.",
              "ARE_YOU_SURE_WANT_DELETE_SECTION":
                  "क्या आप वाकई इस अनुभाग को हटाना चाहते हैं?\t"
            },
            "FE_COURSE": {
              "LEVEL": "\tस्तर",
              "COURSE": "\tअवधि",
              "RATING": "\tरेटिंग",
              "REVIEW": "\tसमीक्षा",
              "LESSONS": "\tपाठ",
              "ADD_USER": "\tउपयोगकर्ता जोड़ें",
              "CATEGORY": "\tवर्ग",
              "END_DATE": "\tअंतिम तिथि",
              "NO_LESSON": "\tकोई पाठ उपलब्ध नहीं है",
              "RATE_THIS": "\tइसका मूल्यांकन करें",
              "ADD_COURSE": "पाठ्यक्रम जोड़ें",
              "BASIC_INFO": "\tमूल जानकारी",
              "CREATED_AT": "पर बनाया गया",
              "NO_SECTION": "\tकोई अनुभाग उपलब्ध नहीं है",
              "VISIBILITY": "\tदृश्यता",
              "COURSE_INFO": "\tपाठ्यक्रम संबंधी जानकारी",
              "COURSE_NAME": "\tकोर्स का नाम*",
              "COURSE_TYPE": "\tकोर्स का प्रकार",
              "EDIT_COURSE": "\tपाठ्यक्रम संपादित करें",
              "ENROLLEMENT": "\tउपस्थिति पंजी",
              "LABEL_LEVEL": "\tस्तर*",
              "VIEW_COURSE": "\tपाठ्यक्रम देखें",
              "ADD_CATEGORY": "\tश्रेणी जोड़ना",
              "ADD_MULTIPLE": "एकाधिक जोड़ें",
              "COURSE_IMAGE": "\tपाठ्यक्रम छवि",
              "START_LESSON": "\tपाठ प्रारंभ करें",
              "CATEGORY_NAME": "\tश्रेणी नाम*",
              "DELETE_COURSE": "पाठ्यक्रम हटाएँ\t",
              "EDIT_CATEGORY": "\tश्रेणी संपादित करें",
              "MANAGE_COURSE": "\tपाठ्यक्रम प्रबंधित करें",
              "VIEW_CATEGORY": "\tश्रेणी देखें",
              "LABEL_CATEGORY": "\tवर्ग*",
              "LABEL_END_DATE": "\tअंतिम तिथि*",
              "COURSE_OVERVIEW": "\tपाठ्यक्रम अवलोकन",
              "DELETE_CATEGORY": "श्रेणी हटाएँ",
              "PARENT_CATEGORY": "अभिभावक श्रेणी",
              "COURSE_FULL_NAME": "\tकोर्स का पूरा नाम",
              "COURSE_VISIBILITY": "\tपाठ्यक्रम दृश्यता",
              "SHORT_DESCRIPTION": "संक्षिप्त वर्णन",
              "DETAIL_DESCRIPTION": "\tविस्तार से वर्णन",
              "COURSE_OVERVIEW_URL": "\tपाठ्यक्रम अवलोकन यूआरएल",
              "COURSE_OVERVIEW_LIST": "\tपाठ्यक्रम अवलोकन",
              "PARENT_CATEGORY_NAME": "मूल श्रेणी का नाम",
              "DELETE_COURSE_WARNING":
                  "क्या आप वाकई इस पाठ्यक्रम को हटाना चाहते हैं?",
              "UPLOAD_CATEGORY_IMAGE": "\tश्रेणी छवि अपलोड करें",
              "NO_COURSES_ARE_AVAILABLE": "कोई पाठ्यक्रम उपलब्ध नहीं है.",
              "LABEL_MINIMUM_REQUIREMENT": "\tन्यूनतम जरूरत",
              "ARE_YOU_SURE_DELETE_CATEGORY":
                  "क्या आप वाकई इस श्रेणी को हटाना चाहते हैं?"
            },
            "FE_STATUS": {
              "OPEN": "खुला",
              "ACTIVE": "\tसक्रिय",
              "CLOSED": "बंद किया हुआ",
              "FINISH": "खत्म करना",
              "NEWEST": "\tनवीनतम",
              "OLDEST": "\tसबसे पुराने",
              "STATUS": "\tस्थिति",
              "PENDING": "\tलंबित",
              "RESOLVED": "\tहल किया",
              "COMPLETED": "पुरा होना।",
              "IN_ACTIVE": "\tनिष्क्रिय",
              "IN_PROGRESS": "प्रगति पर है",
              "LABEL_STATUS": "स्थिति*",
              "IN_ACTIVE_SMALL": "\tनिष्क्रिय"
            },
            "FE_TICKET": {
              "INBOX": "\tइनबॉक्स",
              "TICKET": "\tटिकट",
              "CREATED": "बनाया था",
              "REGARDS": "सम्मान",
              "ALL_TICKET": "\tसभी टिकट",
              "ISSUE_TYPE": "\tविषय वर्ग",
              "CREATE_TICKE": "\tटिकट बनाएं",
              "CREATE_TICKET": "\tटिकट बनाएं"
            },
            "LIBRARIAN": {
              "NOT_FOUND": "\tलाइब्रेरियन नहीं मिला",
              "EXCEL_NOT_FOUND": "\tलाइब्रेरियन एक्सेल नहीं मिला",
              "GET_SUCCESSFULLY": "\tलाइब्रेरियन को सफलता मिलती है.",
              "IMPORT_SUCESSFULLY": "\tलाइब्रेरियन ने सफलतापूर्वक आयात किया.",
              "CREATED_SUCCESSFULLY": "\tलाइब्रेरियन सफलतापूर्वक बनाया गया.",
              "DELETED_SUCCESSFULLY":
                  "\tलाइब्रेरियन को सफलतापूर्वक हटा दिया गया.",
              "UPDATED_SUCCESSFULLY":
                  "\tलाइब्रेरियन ने सफलतापूर्वक अद्यतन किया.",
              "GET_LIST_SUCCESSFULLY":
                  "लाइब्रेरियन सूची सफलतापूर्वक प्राप्त हुई।",
              "EXCEL_DEPARTMENT_ISSUE": "बशर्ते विभाग अस्तित्व में न हो",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "एक्सेल शीट में लाइब्रेरियन पहले से मौजूद है"
            },
            "TIMESHEET": {
              "TIMESHEET_NOT_FOUND": "\tटाइमशीट नहीं मिली.",
              "CREATED_SUCCESSFULLY": "टाइमशीट सफलतापूर्वक बनाई गई.",
              "GET_TIMESHHET_SUCCESS":
                  "\tटाइमशीट सूची सफलतापूर्वक प्राप्त हुई.",
              "EDIT_TIMESHEET_SUCCESS": "टाइमशीट सफलतापूर्वक संपादित करें.",
              "DELETE_TIMESHEET_SUCCESS": "\tटाइमशीट सफलतापूर्वक हटाएं."
            },
            "ASSET_TYPE": {
              "NOT_EXIST": "\tसंपत्ति का प्रकार मौजूद नहीं है.",
              "NAME_EXIST": "\tपरिसंपत्ति प्रकार का नाम पहले से मौजूद है.",
              "GET_LISTING":
                  "संपत्ति प्रकार का विवरण सफलतापूर्वक प्राप्त करें.\t",
              "EDIT_SUCCESSFULLY":
                  "परिसंपत्ति प्रकार को सफलतापूर्वक संपादित करें.",
              "CREATED_SUCCESSFULLY": "\tसंपत्ति प्रकार सफलतापूर्वक बनाया गया."
            },
            "ATTACHMENT": {
              "IMAGE_UPLOAD_ERROR": "\tछवि अपलोड करने में त्रुटि."
            },
            "ATTENDANCE": {
              "GET_ALL": "\tउपस्थिति सूची सफलतापूर्वक प्राप्त हुई..",
              "NOT_EXIST": "उपस्थिति मौजूद नहीं है.",
              "NOT_FOUND": "\tउपस्थिति नहीं मिली.",
              "GET_DETAILS": "\tउपस्थिति विवरण सफलतापूर्वक प्राप्त हुआ.",
              "ALREADY_EXIST": "\tउपस्थिति पहले से मौजूद है.",
              "CREATED_SUCCESSFULLY": "\tउपस्थिति सफलतापूर्वक बनाई गई.",
              "DELETED_SUCCESSFULLY": "\tउपस्थिति सफलतापूर्वक हटा दी गई.",
              "UPDATED_SUCCESSFULLY": "उपस्थिति सफलतापूर्वक अपडेट की गई."
            },
            "BOOK_ISSUE": {
              "LOST": "\tपुस्तक को खोया हुआ के रूप में चिह्नित किया गया है.",
              "DAMAGED": "लौटाई गई किताब क्षतिग्रस्त बताई गई है।",
              "REJECTED": "\tअनुरोधित पुस्तक अस्वीकार कर दी गई है.",
              "NOT_FOUND": "पुस्तक का अंक नहीं मिला",
              "NOT_DELETED":
                  "अन्य मॉड्यूल पर निर्भरता के कारण पुस्तक का अंक हटाया नहीं गया",
              "SOME_DELETED": "कुछ किताब हटा दी गई",
              "ALREADY_EXIST": "पुस्तक अंक पहले से मौजूद है",
              "EXCEL_NOT_FOUND": "पुस्तक अंक एक्सेल नहीं मिला",
              "PENDING_CREATED": "\tपुस्तक अंक लंबित अनुरोध बनाया गया।",
              "GET_SUCCESSFULLY": "पुस्तक अंक सफलतापूर्वक प्राप्त हुआ.",
              "AlREADY_REQUESTED": "\tकिताब पहले ही जारी हो चुकी है",
              "QUANTITY_FINISHED":
                  "पुस्तक जारी करने के लिए स्टॉक में पर्याप्त पुस्तक प्रतियां शेष नहीं हैं।",
              "NAME_ALREADY_EXIST":
                  "\tपुस्तक के अंक का नाम पहले से ही मौजूद है, कृपया किसी अन्य पुस्तक के अंक के नाम के साथ प्रयास करें",
              "CREATE_SUCCESSFULLY": "\tपुस्तक अंक सफलतापूर्वक बनाया गया.",
              "DELETED_SUCCESSFULLY":
                  "\tपुस्तक का अंक सफलतापूर्वक हटा दिया गया.",
              "UPDATED_SUCCESSFULLY":
                  "\tपुस्तक अंक सफलतापूर्वक अद्यतन किया गया.",
              "APPROVED_SUCCESSFULLY": "\tपुस्तक सफलतापूर्वक स्वीकृत हो गई.",
              "GET_LIST_SUCCESSFULLY":
                  "\tपुस्तक निर्गम सूची सफलतापूर्वक प्राप्त हुई।",
              "LIBRARY_CARD_REQUIRED":
                  "पुस्तक जारी करने के लिए लाइब्रेरी कार्ड आवश्यक है।",
              "RETURNED_SUCCESSFULLY": "पुस्तक सफलतापूर्वक लौटा दी गई.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "\tपुस्तक अंक एक्सेल की json फ़ाइल सफलतापूर्वक बनाई गई"
            },
            "CATEGORIES": {
              "NOT_FOUND": "\tश्रेणियाँ नहीं मिलीं",
              "NOT_DELETED": "\tश्रेणियाँ नहीं मिलीं",
              "SOME_DELETED":
                  "\tकुछ रिकॉर्ड सफलतापूर्वक हटा दिए गए, अन्य नहीं हटाए गए।",
              "ALREADY_EXIST": "\tश्रेणी पहले से मौजूद है",
              "EXCEL_NOT_FOUND": "\tश्रेणियाँ एक्सेल नहीं मिलीं",
              "GET_SUCCESSFULLY": "\tश्रेणियाँ सफलतापूर्वक प्राप्त होती हैं.",
              "NAME_ALREADY_EXIST":
                  "\tश्रेणियों का नाम पहले से ही मौजूद है कृपया किसी अन्य श्रेणी के नाम के साथ प्रयास करें",
              "CREATED_SUCCESSFULLY": "\tश्रेणियाँ सफलतापूर्वक बनाई गईं.",
              "DELETED_SUCCESSFULLY": "\tश्रेणियाँ सफलतापूर्वक हटा दी गईं.",
              "UPDATED_SUCCESSFULLY": "\tश्रेणियाँ सफलतापूर्वक अपडेट की गईं.",
              "GET_LIST_SUCCESSFULLY":
                  "\tश्रेणियाँ सूची सफलतापूर्वक प्राप्त हो गई।",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "\tश्रेणियाँ एक्सेल की json फ़ाइल सफलतापूर्वक बनाई गई"
            },
            "DEPARTMENT": {
              "NOT_FOUND": "\tविभाग नहीं मिला",
              "ALREADY_EXIST":
                  "\tविभाग का नाम पहले से ही मौजूद है कृपया किसी अन्य विभाग के नाम के साथ प्रयास करें",
              "GET_DEPARTMENT": "\tविभाग का विवरण सफलतापूर्वक प्राप्त हो गया।",
              "GET_ALL_DEPARTMENT": "\tविभाग सूची सफलतापूर्वक प्राप्त हुई..",
              "CREATED_SUCCESSFULLY": "\tविभाग सफलतापूर्वक बनाया गया.",
              "DELETED_SUCCESSFULLY": "\tविभाग सफलतापूर्वक हटा दिया गया.",
              "DEPARTMENT_NOT_EXIST": "विभाग अस्तित्व में नहीं है.",
              "UPDATED_SUCCESSFULLY": "\tविभाग सफलतापूर्वक अपडेट किया।",
              "ALREADY_EXIST_WITH_CODE":
                  "विभाग कोड पहले से ही मौजूद है कृपया किसी अन्य विभाग कोड के साथ प्रयास करें",
              "DEPARTMENT_ALREADY_EXIST": "विभाग पहले से मौजूद है."
            },
            "ISSUE_TYPE": {
              "CREATED": "समस्या प्रकार सफलतापूर्वक बनाया गया.",
              "FETCHED": "\tसमस्या प्रकार सफलतापूर्वक प्राप्त किए गए।",
              "NOT_FOUND": "\tसमस्या प्रकार नहीं मिले.",
              "NOT_DELETED": "समस्या प्रकार हटाया नहीं गया संबंध मौजूद है।",
              "SOME_DELETED":
                  "\tकुछ रिकॉर्ड सफलतापूर्वक हटा दिए गए, अन्य नहीं हटाए गए।",
              "ALREADY_EXIST": "\tसमस्या प्रकार पहले से मौजूद है.",
              "DELETED_SUCCESSFULLY": "समस्या प्रकार सफलतापूर्वक हटा दिया गया.",
              "UPDATED_SUCCESSFULLY": "\tसमस्या प्रकार अद्यतन सफलतापूर्वक."
            },
            "LIVE_CLASS": {
              "GET_ALL": "\tलाइव क्लास सूची सफलतापूर्वक प्राप्त हुई..",
              "NOT_EXIST": "\tलाइव क्लास मौजूद नहीं है.",
              "NOT_FOUND": "\tलाइव क्लास नहीं मिली.",
              "GET_DETAILS": "\tलाइव क्लास विवरण सफलतापूर्वक प्राप्त हुआ।",
              "ALREADY_EXIST": "\tलाइव क्लास पहले से मौजूद है.",
              "ALREADY_EXIST_TIME": "\tफिलहाल लाइव क्लास पहले से ही मौजूद है।",
              "TOPIC_ALREADY_EXIST":
                  "लाइव विषय पहले से ही मौजूद है कृपया किसी अन्य लाइव विषय के साथ प्रयास करें",
              "CREATED_SUCCESSFULLY": "\tलाइव क्लास सफलतापूर्वक बनाई गई.",
              "DELETED_SUCCESSFULLY": "\tलाइव क्लास सफलतापूर्वक हटा दी गई.",
              "UPDATED_SUCCESSFULLY": "\tलाइव क्लास सफलतापूर्वक अपडेट की गई.",
              "ZOOM_CREDENTIALS_NOT_ADDED":
                  "\tज़ूम क्रेडेंशियल नहीं जोड़े गए, कृपया पहले जोड़ें।"
            },
            "PERMISSION": {
              "ADDED": "\tअनुमति सफलतापूर्वक जोड़ी गई.",
              "FETCH": "\tअनुमति सफलतापूर्वक प्राप्त हुई",
              "EDITED": "अनुमति सफलतापूर्वक संपादित की गई.",
              "DELETED": "अनुमति सफलतापूर्वक हटा दी गई.",
              "UPDATED": "\tअनुमति सफलतापूर्वक अपडेट की गई.",
              "NOT_FOUND": "\tअनुमति नहीं मिली",
              "ALREADY_EXIST": "\tअनुमति पहले से मौजूद है."
            },
            "COURSE_USER": {
              "NOT_FOUND": "पाठ्यक्रम उपयोगकर्ता नहीं मिला",
              "NOT_DELETED":
                  "\tअन्य मॉड्यूल पर निर्भरता के कारण पाठ्यक्रम उपयोगकर्ता को हटाया नहीं गया",
              "SOME_DELETED": "कुछ पाठ्यक्रम उपयोगकर्ता ने हटा दिया",
              "GET_SUCCESSFULLY":
                  "\tपाठ्यक्रम उपयोगकर्ता सफलतापूर्वक प्राप्त करें",
              "COURSE_USER_ASSIGNED":
                  "\tउपयोगकर्ता को सफलतापूर्वक पाठ्यक्रम सौंपा गया",
              "CREATED_SUCCESSFULLY":
                  "\tपाठ्यक्रम उपयोगकर्ता सफलतापूर्वक बनाया गया",
              "DELETED_SUCCESSFULLY":
                  "\tपाठ्यक्रम उपयोगकर्ता सफलतापूर्वक हटा दिया गया",
              "UPDATED_SUCCESSFULLY":
                  "पाठ्यक्रम उपयोगकर्ता सफलतापूर्वक अद्यतन किया गया",
              "GET_LIST_SUCCESSFULLY":
                  "\tपाठ्यक्रम उपयोगकर्ता सूची सफलतापूर्वक प्राप्त हुई",
              "USER_ASSIGNED_ALREADY":
                  "\tउपयोगकर्ताओं को पहले से ही इस पाठ्यक्रम के लिए नियुक्त किया गया है",
              "COURSE_USER_GET_SUCCESSFULLY":
                  "पाठ्यक्रम उपयोगकर्ता सफलतापूर्वक प्राप्त करें",
              "UPDATED_COURSE_USER_ASSIGNED":
                  "\tअद्यतन निर्दिष्ट पाठ्यक्रम उपयोगकर्ता"
            },
            "FE_REQUIRED": {
              "DAY": "\tदिन आवश्यक है*.",
              "MAX": "\tपार नहीं होना चाहिए",
              "BODY": "\tशरीर चाहिए*.",
              "CITY": "\tशहर चाहिए*.",
              "CODE": "कोड आवश्यक है*.\t",
              "NAME": "\tनाम आवश्यक है*।",
              "ROOM": "कमरा आवश्यक है*.",
              "SLUG": "\tस्लग आवश्यक है*।",
              "TYPE": "\tप्रकार आवश्यक है*.",
              "ZERO":
                  "इनपुट 0 नहीं होना चाहिए। कृपया एक गैर-शून्य मान दर्ज करें।",
              "CLASS": "\tकक्षा आवश्यक है*.",
              "EMAIL": "\tएसएमटीपी ईमेल आवश्यक है*।",
              "LEVEL": "\tस्तर आवश्यक है*.",
              "PRICE":
                  "कृपया एक वैध दाम की प्रविष्टि करें। यह एक संख्या होनी चाहिए (उदाहरण के लिए, 10 या 10.99)",
              "STATE": "\tराज्य आवश्यक है*.",
              "TITLE": "\tशीर्षक आवश्यक है*.",
              "VALID": "\tवैध दर्ज करें",
              "GENDER": "\tलिंग आवश्यक है*.",
              "RATING": "\tरेटिंग आवश्यक है*.",
              "STATUS": "\tस्थिति आवश्यक है*.",
              "COUNTRY": "\tदेश चाहिए*.",
              "LETTERS":
                  "\tकेवल अक्षर होने चाहिए. संख्याओं और विशेष वर्णों की अनुमति नहीं है",
              "SECTION": "कृपया अनुभाग चुनें*.",
              "SUBJECT": "\tकृपया विषय चुनें*.",
              "TEACHER": "\tशिक्षक की आवश्यकता है*.",
              "BIO_DATA": "\tबायोडाटा आवश्यक है*।",
              "CAPACITY": "क्षमता आवश्यक है*.",
              "CATEGORY": "\tश्रेणी का नाम आवश्यक है*.",
              "END_DATE": "\tकृपया अंतिम तिथि* चुनें।",
              "FACILITY": "\tसुविधा आवश्यक है*.",
              "LOCATION": "\tस्थान आवश्यक है*.",
              "MINI_REQ": "\tन्यूनतम आवश्यकता आवश्यक है*.",
              "NEGATIVE":
                  "\tऋणात्मक संख्या नहीं होनी चाहिए. कृपया नकारात्मक मानों के बिना एक वैध स्ट्रिंग दर्ज करें।",
              "PASSWORD": "\tएसएमटीपी पासवर्ड आवश्यक है*।",
              "ROOM_MAX":
                  "कमरा नंबर 5 अंकों से कम का सकारात्मक संख्यात्मक मान होना चाहिए\t",
              "SEMESTER": "\tसेमेस्टर आवश्यक है*.",
              "TIMEZONE": "\tसमयक्षेत्र आवश्यक है*.",
              "TYPE_MAX": "\tप्रकार 25 अक्षरों से अधिक नहीं होना चाहिए.",
              "USERNAME": "\tएसएमटीपी उपयोगकर्ता नाम आवश्यक है*।",
              "LAST_NAME": "\tअंतिम नाम आवश्यक है*.",
              "NO_NUMBER": "\tसंख्याएँ शामिल नहीं हो सकतीं।*",
              "SMTP_HOST": "\tएसएमटीपी होस्ट आवश्यक है*।",
              "SMTP_PORT": "\tएसएमटीपी पोर्ट आवश्यक है*।",
              "BOOK_TITLE": "पुस्तक का शीर्षक आवश्यक है*.",
              "CLASS_NAME": "\tकक्षा का नाम आवश्यक है*.",
              "DEPARTMENT": "\tकक्षा का नाम आवश्यक है*.",
              "DETAIL_REQ": "\tविस्तृत विवरण आवश्यक है*.",
              "FIRST_NAME": "पहला नाम आवश्यक है*।",
              "INPUT_ZERO":
                  "\tइनपुट 0 नहीं होना चाहिए। कृपया एक गैर-शून्य मान दर्ज करें।",
              "MORE_SPECE":
                  "\tपात्रों के बीच एक से अधिक स्थान की अनुमति नहीं है।",
              "RATING_MAX": "\tसमीक्षा 450 अक्षरों से अधिक नहीं होनी चाहिए.",
              "START_DATE": "\tकृपया आरंभ दिनांक चुनें*।",
              "BLOOD_GROUP": "ब्लड ग्रुप आवश्यक है*.",
              "BOOK_NUMBER": "\tपुस्तक संख्या आवश्यक है*.",
              "DESCRIPTION": "\tविवरण आवश्यक है*.",
              "IS_Required": "आवश्यक है*।",
              "MIDDLE_NAME": "\tमध्यनाम आवश्यक है*.",
              "NATIONALITY": "\tराष्ट्रीयता आवश्यक है*.",
              "ROOM_NUMBER": "कमरा नंबर आवश्यक है*.",
              "SELECT_DATE": "\tकृपया एक तिथि चुनें*।",
              "FACILITY_MAX": "\tसुविधा 100 अक्षरों से अधिक नहीं होनी चाहिए.",
              "INPUT_COMMON":
                  "इनपुट कोई ऋणात्मक संख्या नहीं होनी चाहिए. कृपया नकारात्मक मानों के बिना एक वैध स्ट्रिंग दर्ज करें।",
              "LOCATION_MAX": "\tस्थान 25 अक्षरों से अधिक नहीं होना चाहिए.",
              "PASSWORD_ACC": "पासवर्ड 8 या अधिक अक्षर लंबा होना चाहिए",
              "PASSWORD_MAX": "पासवर्ड अधिकतम 32 अक्षर लंबा होना चाहिए",
              "PHONE_NUMBER": "\tफ़ोन नंबर आवश्यक है*.",
              "ROOM_NUMERIC":
                  "\tकक्ष संख्या में केवल संख्यात्मक मान शामिल होने चाहिए।",
              "SECTION_NAME": "अनुभाग का नाम आवश्यक है*.",
              "SELECT_CLASS": "\tकृपया कक्षा* का चयन करें।",
              "SEMESTER_VAL": "\tसेमेस्टर 12 अक्षरों से अधिक नहीं होना चाहिए.",
              "SUBJECT_CODE": "\tविषय कोड आवश्यक है*.",
              "SUBJECT_NAME": "\tविषय का नाम आवश्यक है*.",
              "BOOK_CATEGORY": "\tपुस्तक श्रेणी आवश्यक है.*",
              "INVALID_EMAIL": "\tअमान्य ईमेल।",
              "BOOK_TITLE_MAX":
                  "\tपुस्तक का शीर्षक 25 अक्षरों से अधिक नहीं होना चाहिए।*",
              "DEPARTMENT_MAX":
                  "विभाग का नाम 25 अक्षरों से अधिक नहीं होना चाहिए।",
              "SELECT_TEACHER": "\tकृपया शिक्षक* का चयन करें।",
              "TOTAL_QUANTITY": "कुल मात्रा आवश्यक है*.",
              "ZIP_VALIDATION": "\tज़िप कोड एक अंकीय संख्या होनी चाहिए",
              "BOOK_NUMBER_VAL":
                  "पुस्तक संख्या एक गैर-ऋणात्मक संख्या* होनी चाहिए।",
              "DEPARTMENT_NAME": "\tविभाग का नाम आवश्यक है*.",
              "IMPORT_VALIDATE":
                  "\tकेवल XLSX फ़ाइलों की अनुमति है. कृपया वैध फ़ाइलें अपलोड करें.",
              "UPLOAD_SYLLABUS": "कृपया पाठ्यक्रम अपलोड करें*।",
              "BOOK_COMBINATION":
                  "\tपुस्तक संख्या में केवल अक्षर और संख्याएँ होनी चाहिए।",
              "BOOK_QUANTIY_VAL": "\tकुल मात्रा एक पूर्णांक होनी चाहिए.",
              "EMAIL_VALIDATION": "\tईमेल की जरूरत है*।",
              "SUBJECT_CODE_VAL":
                  "\tविषय कोड 5 अक्षरों से अधिक नहीं होना चाहिए.",
              "SUBJECT_NAME_MAX":
                  "\tविषय का नाम 25 अक्षरों से अधिक नहीं होना चाहिए.",
              "BOOK_CATEGORY_MAX":
                  "\tपुस्तक श्रेणी 255 अक्षरों से अधिक नहीं होनी चाहिए।*",
              "CAPACITY_NEGATIVE": "\tक्षमता एक धनात्मक संख्या होनी चाहिए.",
              "HYPHEN_UNDERSCORE":
                  "\tएक भी हाइफ़न या अंडरस्कोर के साथ समाप्त नहीं होना चाहिए।",
              "SELECT_ISSUE_DATE": "\tजारी करने की तिथि* चुनें।",
              "SPECIAL_CHARACTER":
                  "किसी विशेष वर्ण से आरंभ या समाप्त नहीं होना चाहिए और ऋणात्मक तथा दशमलव संख्या नहीं होनी चाहिए।",
              "MATCH_NEW_PASSWORD":
                  "पासवर्ड मेल नहीं खाते. कृपया सुनिश्चित करें कि पासवर्ड बिल्कुल मेल खाते हों।",
              "SECTION_VALIDATION": "अनुभाग आवश्यक है*.",
              "SELECT_RETURN_DATE": "वापसी तिथि* चुनें।",
              "SUBJECT_VALIDATION": "विषय आवश्यक है*.",
              "ZIP_MAX_VALIDATION": "ज़िप कोड अधिकतम 10 अंक लंबा होना चाहिए.",
              "ZIP_MIN_VALIDATION":
                  "\tज़िप कोड कम से कम 6 अंक लंबा होना चाहिए।*",
              "CATEGORY_VALIDATION": "\tश्रेणी आवश्यक है.*",
              "DEPARTMENT_NAME_VAL":
                  "विभाग के नाम में केवल अक्षर और संख्याएँ होनी चाहिए",
              "LIBRARY_CARD_NUMBER": "\tलाइब्रेरी कार्ड नंबर आवश्यक है*।",
              "PASSOWRD_LOWER_CASE": "\tकम से कम एक लोअरकेस अक्षर",
              "PASSOWRD_ONE_NUMBER": "\tकम से कम एक नंबर",
              "PASSOWRD_UPPER_CASE": "\tकम से कम एक बड़ा अक्षर",
              "PASSWORD_VALIDATION": "\tपासवर्ड की आवश्यकता है*।",
              "RELATION_VALIDATION": "संबंध आवश्यक है*.",
              "SELECT_DATE_OF_BIRTH": "\tकृपया जन्म तिथि चुनें.",
              "STREET_ADDRESS_LINE_1": "\tसड़क का पता पंक्ति 1 आवश्यक है*।",
              "STREET_ADDRESS_LINE_2": "सड़क का पता पंक्ति 2 आवश्यक है*।",
              "SUBJECT_NAME_NEGATIVE":
                  "\tविषय का नाम नकारात्मक नहीं होना चाहिए",
              "SUBJECT_NAME_REQUIRED": "\tविषय आवश्यक है*.",
              "ZIP_SIX_TEN_VALIDATION":
                  "\t'ज़िप कोड एक अंक होना चाहिए और इसमें 6-10 अक्षर होने चाहिए।",
              "NEW_PASSWORD_VALIDATION":
                  "नया पासवर्ड पुराने पासवर्ड जैसा नहीं होना चाहिए",
              "PASSWORD_MAX_VALIDATION":
                  "\tपासवर्ड 8-12 अक्षर का होना चाहिए, जिसमें कम से कम एक छोटा अक्षर, एक बड़ा अक्षर, एक संख्या और एक विशेष अक्षर (@\$!%*?&) होना चाहिए।",
              "EMAIL_ADDRESS_VALIDATION": "ईमेल पते की ज़रुरत है*।",
              "SUBJECT_NAME_COMBINATION":
                  "\tविषय के नाम में केवल अक्षर और संख्याएँ होनी चाहिए।",
              "SUBJEST_SEMESTER_NEGATIVE":
                  "\tसेमेस्टर गैर-नकारात्मक* होना चाहिए।",
              "LAST_NAME_NUMBER_VALIDATION":
                  "अंतिम नाम में संख्याएँ नहीं हो सकती*।",
              "FIRST_NAME_NUMBER_VALIDATION":
                  "प्रथमनाम में संख्याएँ* नहीं हो सकतीं।",
              "SUBJEST_SEMESTER_COMBINATION":
                  "\tसेमेस्टर में केवल अक्षर और अंक होने चाहिए।",
              "MIDDLE_NAME_NUMBER_VALIDATION":
                  "\tमध्यनाम में संख्याएँ* नहीं हो सकतीं।"
            },
            "FE_SYLLABUS": {
              "SYLLABUS": "\tपाठ्यक्रम",
              "ADD_SYLLABUS": "सिलेबस जोड़ें",
              "EDIT_SYLLABUS": "\tपाठ्यक्रम संपादित करें",
              "SYLLABUS_LIST": "\tपाठ्यक्रम सूची",
              "DELETE_SYLLABUS": "\tसिलेबस हटाएं",
              "UPLOAD_SYLLABUS": "\tसिलेबस अपलोड करें",
              "ARE_YOU_SURE_WANT_TO_DELETE_THIS_SYLLABUS":
                  "क्या आप वाकई इस पाठ्यक्रम को हटाना चाहते हैं?"
            },
            "TASK_STATUS": {
              "TASK_STATUS_EXISTS": "\tकाम पहले से मौज़ूद।",
              "GET_ALL_TASK_SUCCESS": "\tसभी कार्य सफलतापूर्वक संपन्न करें।",
              "TASK_STATUS_NOT_FOUND": "\tकार्य स्थिति नहीं मिली.",
              "ADD_TASK_STATUS_SUCCESS":
                  "कार्य स्थिति सफलतापूर्वक जोड़ी गई.ed task status successfully.",
              "TASK_STATUS_NOT_DELETED":
                  "\tकार्य स्थिति हटाने में असमर्थ/नहीं।atus not/unable to delete.",
              "TASK_STATUS_NOT_UPDATED":
                  "\tकार्य स्थिति अद्यतन नहीं/अद्यतन करने में असमर्थ",
              "FETCH_TASK_STATUS_SUCCESS":
                  "कार्य स्थिति सफलतापूर्वक प्राप्त की गई.",
              "DELETE_TASK_STATUS_SUCCESS":
                  "\tकार्य स्थिति सफलतापूर्वक हटाई गई.",
              "UPDATE_TASK_STATUS_SUCCESS":
                  "कार्य स्थिति सफलतापूर्वक अद्यतन की गई."
            },
            "FE_DASHBOARD": {"DASHBOARD": "\tडैशबोर्ड"},
            "FE_LIBRARIAN": {
              "LIBRARIAN": "\tपुस्तकालय अध्यक्ष",
              "ADD_LIBRARIAN": "\tलाइब्रेरियन जोड़ें",
              "EDIT_LIBRARIAN": "\tलाइब्रेरियन संपादित करें",
              "VIEW_LIBRARIAN": "\tलाइब्रेरियन देखें",
              "DELETE_LIBRARIAN": "\tलाइब्रेरियन हटाएँ",
              "ARE_YOU_DELETE_LIBRARIAN":
                  "\tक्या आप वाकई इस लाइब्रेरियन को हटाना चाहते हैं?"
            },
            "LIBRARY_CARD": {
              "NOT_FOUND": "\tलाइब्रेरी कार्ड नहीं मिला",
              "ALREADY_EXIST": "\tलाइब्रेरी कार्ड पहले से मौजूद है",
              "CREATED_SUCCESSFULLY":
                  "\tलाइब्रेरी कार्ड सफलतापूर्वक बनाया गया.",
              "UPDATED_SUCCESSFULLY":
                  "\tलाइब्रेरी कार्ड सफलतापूर्वक अपडेट किया गया.",
              "CARD_NUMBER_ALREADY_EXIST":
                  "\tलाइब्रेरी कार्ड नंबर पहले से मौजूद है या उपयोगकर्ता के पास पहले से ही लाइब्रेरी कार्ड है"
            },
            "ORGANIZATION": {
              "NOT_FOUND": "\tसंगठन नहीं मिला",
              "NOT_DELETED": "\tसंगठन हटाया नहीं गया संबंध मौजूद है.",
              "SOME_DELETED":
                  "\tकुछ रिकॉर्ड सफलतापूर्वक हटा दिए गए, अन्य नहीं हटाए गए।",
              "ALREADY_EXIST":
                  "\tसंगठन का नाम पहले से ही मौजूद है कृपया किसी अन्य संगठन के नाम के साथ प्रयास करें",
              "GET_SUCCESSFULLY": "\tसंगठन सफल हो.",
              "CREATED_SUCCESSFULLY": "संगठन सफलतापूर्वक बनाया गया.",
              "DELETED_SUCCESSFULLY": "\tसंगठन सफलतापूर्वक हटा दिया गया.",
              "UPDATED_SUCCESSFULLY": "\tसंगठन सफलतापूर्वक अद्यतन किया गया.",
              "GET_LIST_SUCCESSFULLY": "\tसंगठन सूची सफलतापूर्वक प्राप्त हुई."
            },
            "SUBSCRIPTION": {
              "SUBSCRIPTION_SUCCESSFULLY":
                  "\tसदस्यता विवरण सफलतापूर्वक प्राप्त हो गए."
            },
            "BOOK_CATEGORY": {
              "NOT_DELETED": "\tपुस्तक श्रेणी हटाया नहीं गया संबंध मौजूद है।",
              "SOME_DELETED":
                  "\tकुछ रिकॉर्ड सफलतापूर्वक हटा दिए गए, अन्य नहीं हटाए गए।",
              "ALREADY_EXIST": "\tपुस्तक श्रेणी पहले से मौजूद है",
              "EXCEL_NOT_FOUND": "\tपुस्तक श्रेणी एक्सेल नहीं मिला",
              "GET_SUCCESSFULLY": "\tपुस्तक श्रेणी सफलतापूर्वक प्राप्त हुई.",
              "NAME_ALREADY_EXIST":
                  "\tपुस्तक श्रेणी का नाम पहले से ही मौजूद है कृपया किसी अन्य पुस्तक श्रेणी नाम के साथ प्रयास करें",
              "CREATED_SUCCESSFULLY": "\tपुस्तक श्रेणी सफलतापूर्वक बनाई गई.",
              "DELETED_SUCCESSFULLY": "\tपुस्तक श्रेणी सफलतापूर्वक हटा दी गई.",
              "UPDATED_SUCCESSFULLY": "पुस्तक श्रेणी सफलतापूर्वक अपडेट की गई.",
              "GET_LIST_SUCCESSFULLY":
                  "पुस्तक श्रेणी सूची सफलतापूर्वक प्राप्त हुई।",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "\tपुस्तक श्रेणी एक्सेल की json फ़ाइल सफलतापूर्वक बनाई गई"
            },
            "CR_VALIDATION": {
              "VALID_STATUS": "\tकृपया वैध स्थिति दर्ज करें",
              "INVALID_CR_ID": "\tकृपया वैध सीआर आईडी दर्ज करें",
              "CR_DESC_REQUIRED": "\tपरिवर्तन अनुरोध विवरण आवश्यक है",
              "CR_NAME_REQUIRED": "\tपरिवर्तन अनुरोध नाम आवश्यक है.",
              "CR_HOURS_REQUIRED": "\tपरिवर्तन अनुरोध घंटे आवश्यक है",
              "CR_STATUS_REQUIRED": "\tकृपया परिवर्तन अनुरोध स्थिति दर्ज करें",
              "INVALID_PROJECT_ID": "\tकृपया वैध प्रोजेक्ट आईडी दर्ज करें",
              "PROJECT_ID_REQUIRED": "\tप्रोजेक्ट आईडी आवश्यक है."
            },
            "FE_ASSIGNMENT": {
              "ASSIGNMENT": "\tकार्यभार",
              "ADD_ASSIGNMENT": "\tअसाइनमेंट जोड़ें",
              "ASSIGNMENT_DATE": "असाइनमेंट दिनांक",
              "ASSIGNMENT_LIST": "असाइनमेंट सूची",
              "ASSIGNMENT_TIME": "\tअसाइनमेंट का समय",
              "EDIT_ASSIGNMENT": "\tअसाइनमेंट संपादित करें",
              "ASSIGNMENT_TITLE": "असाइनमेंट शीर्षक",
              "DELETE_ASSIGNMENT": "\tअसाइनमेंट हटाएँ",
              "ADD_ASSIGNMENT_TITLE": "\tअसाइनमेंट शीर्षक जोड़ें",
              "ASSIGNMENT_DESCRIPTION": "असाइनमेंट विवरण",
              "ARE_YOU_DELETE_ASSIGNMENT":
                  "\tक्या आप वाकई इस असाइनमेंट को हटाना चाहते हैं?",
              "ARE_YOU_DELETE_ASSIGNMENT_LIST":
                  "\tक्या आप वाकई इस असाइनमेंट को हटाना चाहते हैं?"
            },
            "FE_ATTENDANCE": {
              "A": "\tए",
              "L": "एल",
              "P": "\tपी",
              "HL": "\tएचएल",
              "OF": "\tका",
              "ON": "\tपर",
              "WK": "\tसप्त",
              "LATE": "देर",
              "ROLL": "रोल",
              "LEAVE": "छुट्टी",
              "ABSENT": "अनुपस्थित",
              "REG_NO": "\tरजिस्टर नं",
              "HALFDAY": "\tआधा दिन",
              "PRESENT": "उपस्थित\t",
              "REMARKS": "टिप्पणी\t",
              "EMPLOYEE": "\tकर्मचारी",
              "STAFF_ID": "स्टाफ आईडी",
              "STUDENTS": "\tछात्र",
              "EMPLOYEES": "\tकर्मचारी",
              "ATTENDANCE": "\tउपस्थिति",
              "YOUR_CHILD": "\tआपके बच्चे",
              "SELECT_ROLE": "\tभूमिका चुनें",
              "LAST_UPDATED": "\tआखरी अपडेट",
              "SELECT_CLASS": "कक्षा का चयन करें",
              "SELECT_MONTH": "\tमहीना चुनिए",
              "STUDENT_LIST": "\tछात्र सूची",
              "EMPLOYEE_LIST": "\tकर्मचारी सूची",
              "MY_ATTENDANCE": "मेरी उपस्थिति\t",
              "YOUR_CHILDREN": "आपके बच्चे\t",
              "SELECT_STUDENT": "\tछात्र का चयन करें",
              "SELECT_EMPLOYEE": "\tकर्मचारी का चयन करें",
              "SELECT_SECTIONS": "\tअनुभाग चुनें",
              "TAKE_ATTENDANCE": "उपस्थिति लें",
              "ATTENDANCE_REPORT": "उपस्थिति विवरण"
            },
            "FE_PLACHOLDER": {
              "ZIP": "उपस्थिति विवरण",
              "NAME": "\tनाम दर्ज करें",
              "TYPE": "\tप्रकार दर्ज करें",
              "EMAIL": "\tईमेल दर्ज करें",
              "LEVEL": "\tस्तर चुनें",
              "TITLE": "शीर्षक दर्ज करें",
              "COURSE": "\tसूची से पाठ्यक्रम चुनें",
              "GENDER": "\tलिंग चुनें",
              "STATUS": "स्थिति चुनें\t",
              "ADDRESS": "पता दर्ज करें\t",
              "CAPCITY": "क्षमता दर्ज करें\t",
              "MINUTES": "मिनट\t",
              "SECTION": "अनुभाग चुनें\t",
              "SUBJECT": "विषय दर्ज करें\t",
              "CATEGORY": "श्रेणी चुनना\t",
              "FACILITY": "सुविधा दर्ज करें\t",
              "LANGUAGE": "भाषा चुने\t",
              "LOCATION": "स्थान दर्ज करें\t",
              "PASSWORD": "पास वर्ड दर्ज करें\t",
              "SEMESTER": "सेमेस्टर दर्ज करें",
              "DEPARMENT": "\tविभाग का चयन करें",
              "LAST_NAME": "\tअंतिम नाम दर्ज करो",
              "SMTP_HOST": "\tSMTP होस्ट दर्ज करें",
              "SMTP_PORT": "\tएसएमटीपी पोर्ट दर्ज करें",
              "CLASS_NAME": "\tकक्षा का नाम दर्ज करें",
              "FIRST_NAME": "प्रथम नाम दर्ज करें",
              "SMTP_EMAIL": "\tएसएमटीपी ईमेल दर्ज करें",
              "START_DATE": "\tआरंभ तिथि चुनें",
              "TITLE_TEXT": "शीर्षक पाठ दर्ज करें",
              "BLOOD_GROUP": "\tरक्त समूह का चयन करें",
              "BRANCH_NAME": "\tशाखा का नाम दर्ज करें",
              "FOOTER_TEXT": "\tपादलेख पाठ दर्ज करें",
              "LESSON_NAME": "\tअपने पाठ का नाम दर्ज करें",
              "LESSON_TYPE": "\tपाठ का प्रकार चुनें",
              "MIDDLE_NAME": "\tमध्य नाम दर्ज करें",
              "NATIONALITY": "\tराष्ट्रीयता दर्ज करें",
              "RETURN_FINE": "\tयहां फाइन दर्ज करें",
              "ROOM_NUMBER": "\tकमरा नंबर दर्ज करें",
              "SELECT_DATE": "\tतारीख़ चुनें",
              "SELECT_ROLE": "भूमिका चुनें",
              "SELECT_ROOM": "\tकमरा चुनें",
              "SELECT_USER": "यहां उपयोगकर्ता का चयन करें",
              "BRANCH_EMAIL": "\tशाखा ईमेल दर्ज करें",
              "ENTER_REMARK": "\tयहां टिप्पणी दर्ज करें",
              "SECTION_NAME": "\tअनुभाग का नाम दर्ज करें",
              "SELECT_CLASS": "\tकक्षा का चयन करें",
              "SELECT_USERS": "\tउपयोगकर्ताओं का चयन करें",
              "SUBJECT_CODE": "\tविषय कोड दर्ज करें",
              "SUBJECT_NAME": "\tविषय का नाम दर्ज करें",
              "BOOK_CATEGORY": "\tपुस्तक श्रेणी का नाम दर्ज करें",
              "CATEGORY_NAME": "\tश्रेणी का नाम दर्ज करें",
              "SMTP_HOSTNAME": "\tएसएमटीपी होस्टनाम दर्ज करें",
              "SMTP_PASSWORD": "\tएसएमटीपी होस्टनाम दर्ज करें",
              "SMTP_USERNAME": "\tएसएमटीपी उपयोक्तानाम दर्ज करें",
              "BRANCH_ADDRESS": "\tशाखा का पता दर्ज करें",
              "SECTION_NUMBER": "\tअपना सेक्शन नंबर दर्ज करें",
              "SELECT_SECTION": "\tअनुभाग चुनें",
              "SELECT_SUBJECT": "\tविषय का चयन करें",
              "SELECT_TEACHER": "\tशिक्षक का चयन करें",
              "ZOOM_CLIENT_ID": "\tज़ूम क्लाइंट आईडी दर्ज करें",
              "DEPARTMENT_NAME": "\tविभाग का नाम दर्ज करें",
              "LESSON_DURATION": "\tअवधि दर्ज करें",
              "SECTION_DETAILS": "\tअनुभाग विवरण दर्ज करें",
              "SELECT_END_TIME": "\tसमाप्ति समय चुनें",
              "SMTP_FROM_EMAIL": "\tईमेल से दर्ज करें",
              "ZOOM_ACCOUNT_ID": "\tज़ूम खाता आईडी दर्ज करें",
              "COURSE_FULL_NAME": "पाठ्यक्रम का नाम दर्ज करें\t",
              "DEPARTMNENT_CODE": "\tविभाग कोड दर्ज करें",
              "SELECT_ROLE_HERE": "\tयहां भूमिका चुनें",
              "CLASS_DESCRIPTION": "\tकक्षा विवरण दर्ज करें",
              "SELECT_ISSUE_DATE": "\tजारी करने की तारीख चुनें",
              "SELECT_START_TIME": "\tआरंभ समय चुनें",
              "BRANCH_INFORMATION": "\tशाखा की जानकारी दर्ज करें",
              "SELECT_RETURN_DATE": "\tवापसी की तारीख चुनें",
              "ZOOM_CLIENT_SECRET": "\tज़ूम क्लाइंट रहस्य दर्ज करें",
              "LIBRARY_CARD_NUMBER": "\tलाइब्रेरी कार्ड नंबर दर्ज करें",
              "SECTION_DESCRIPTION": "\tअनुभाग विवरण दर्ज करें",
              "SELECT_CLASS_METHOD": "\tवर्ग विधि का चयन करें",
              "SELECT_FOR_EVERYONE": "सभी के लिए चयन करें",
              "SUBJECT_DESCRIPTION": "\tविषय विवरण दर्ज करें",
              "CATEGORY_DESCRIPTION": "\tश्रेणी विवरण दर्ज करें",
              "PARENT_CATEGORY_NAME": "मूल श्रेणी का नाम दर्ज करें",
              "SELECT_BOOK_CATEGORY": "\tपुस्तक श्रेणी का चयन करें",
              "DEPARTMENT_DESCRIPTION": "\tविभाग विवरण दर्ज करें"
            },
            "CPU_VALIDATION": {
              "VALID_STATUS": "\tकृपया वैध स्थिति दर्ज करें.",
              "NAME_REQUIRED": "\tसीपीयू आवश्यक है.",
              "STATUS_REQUIRED": "\tसीपीयू की स्थिति आवश्यक है."
            },
            "EMAIL_TEMPLATE": {
              "EDITED": "\tईमेल टेम्प्लेट सफलतापूर्वक संपादित किया गया.",
              "CREATED": "ईमेल टेम्प्लेट सफलतापूर्वक जोड़ा गया.",
              "DELETED": "ईमेल टेम्प्लेट सफलतापूर्वक हटा दिया गया.",
              "DETAILS": "\tईमेल टेम्प्लेट सफलतापूर्वक लाया गया.",
              "NOT_EXISTS": "ईमेल टेम्प्लेट नहीं मिला.",
              "TITLE_EXISTS": "यह ईमेल टेम्प्लेट शीर्षक पहले से मौजूद है.",
              "ALL_EMAIL_TEMPLATE":
                  "सभी ईमेल टेम्पलेट सफलतापूर्वक प्राप्त करें."
            },
            "PLAN_VALIDATOR": {
              "MODULES": "\tमॉड्यूल आईडी आवश्यक है",
              "PLAN_TYPE": "\tयोजना प्रकार आवश्यक है",
              "PLAN_TENURE": "\tयोजना कार्यकाल आवश्यक है",
              "NAME_REQUIRED": "\tयोजना का नाम आवश्यक है",
              "PRICE_REQUIRED": "\tयोजना मूल्य आवश्यक है.",
              "CURRENCY_REQUIRED": "\tयोजना मुद्रा आवश्यक है"
            },
            "PUBLIC_HOLIDAY": {
              "LEAVE_GET": "\tसार्वजनिक अवकाश सफलतापूर्वक प्राप्त करें।",
              "LEAVE_NOT_FOUND": "\tसार्वजनिक अवकाश नहीं मिला.",
              "ADD_LEAVE_SUCCESS": "सार्वजनिक अवकाश सफलतापूर्वक जोड़ा गया.",
              "EDIT_LEAVE_SUCCESS": "\tसार्वजनिक अवकाश सफलतापूर्वक संपादित.",
              "DELETE_LEAVE_SUCCESS":
                  "\tसार्वजनिक अवकाश सफलतापूर्वक हटा दिया गया.",
              "GET_ALL_LEAVE_SUCCESS":
                  "\tसभी सार्वजनिक अवकाश सफलतापूर्वक प्राप्त करें।"
            },
            "RAM_VALIDATION": {"VALID_STATUS": "\tकृपया वैध स्थिति दर्ज करें."}
          },
          "createdAt": "2024-04-04T08:02:36.625Z",
          "updatedAt": "2024-05-16T09:35:15.751Z",
          "created_by": "Anantha Super Admin",
          "updated_by": "Anantha Super Admin",
          "created_at_timezone": "2024-04-04T13:32:36.625Z"
        },
        {
          "id": "e24fa437-5c74-48e5-a1c3-590410c9657b",
          "language": "Tamil",
          "code": "ta",
          "status": "1",
          "messages": null,
          "createdAt": "2024-04-04T08:16:38.249Z",
          "updatedAt": "2024-05-03T05:28:24.527Z",
          "created_by": "Anantha Super Admin",
          "updated_by": "Anantha Super Admin",
          "created_at_timezone": "2024-04-04T13:46:38.249Z"
        },
        {
          "id": "ab226347-380a-4354-a556-0172936b6102",
          "language": "Telugu",
          "code": "te",
          "status": "1",
          "messages": {
            "CR": {
              "GET_CR":
                  "మార్పు అభ్య\tమార్పు అభ్యర్థన విజయవంతంగా పొందండి.ర్థన విజయవంతంగా పొందండి.",
              "CREATED":
                  "మార్పు అభ్యమార్పు అభ్యర్థన సృష్టించబడిందిర్థన సృష్టించబడింది",
              "NOT_FOUND": "మార్పు అభ్యర్థన ఉనికిలో లేదు.",
              "GET_CR_LIST": "అభ్యర్థన జాబితాను మార్చండి విజయవంతంగా పొందండి.\t",
              "GET_PROJECT_WO_CR":
                  "\tఇప్పుడు మార్పు అభ్యర్థన ఉన్న ప్రాజెక్ట్‌ని పొందండి",
              "DELETED_SUCCESSFULLY":
                  "మార్పు అభ్యర్థన విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY":
                  "\tమార్పు అభ్యర్థన విజయవంతంగా నవీకరించబడింది.",
              "CR_DETAILS_NOT_AVAILABLE":
                  "మార్పు అభ్యర్థన వివరాలు కనుగొనబడలేదు.",
              "PROJECT_CR_NOT_AVAILABLE":
                  "\tఈ ప్రాజెక్ట్‌కు మార్పు అభ్యర్థన లేదు"
            },
            "BOOK": {
              "NOT_FOUND": "\tపుస్తకం దొరకలేదు",
              "NOT_DELETED":
                  "ఇతర మాడ్యూళ్లపై ఆధారపడటం వలన పుస్తకం తొలగించబడలేదు",
              "NUMBER_SAME":
                  "అదే నంబర్ ఉంది దయచేసి మరొక బుక్ నంబర్‌తో ప్రయత్నించండి",
              "SOME_DELETED": "\tకొంత పుస్తకం తొలగించబడింది",
              "ALREADY_EXIST": "\tపుస్తకం ఇప్పటికే ఉంది",
              "EXCEL_NOT_FOUND": "బుక్ Excel కనుగొనబడలేదు",
              "GET_SUCCESSFULLY": "బుక్ విజయవంతంగా పొందండి.",
              "NAME_ALREADY_EXIST":
                  "పుస్తకం పేరు ఇప్పటికే ఉంది, దయచేసి మరొక పుస్తకం పేరుతో ప్రయత్నించండి",
              "CREATED_SUCCESSFULLY": "\tపుస్తకం విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY": "\tపుస్తకం విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY": "బుక్ విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY": "పుస్తకాల జాబితా విజయవంతమైంది.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "బుక్ Excel యొక్క json ఫైల్ విజయవంతంగా సృష్టించబడింది"
            },
            "FILE": {"GIF_NOT_FOUND": "Gif ఫైల్ అనుమతించబడదు."},
            "MAKE": {
              "NAME_EXIST": "\tమేక్ పేరు ఇప్పటికే ఉంది.",
              "MAKE_NOT_EXIST": "మేక్ ఉనికిలో లేదు.",
              "GET_MAKE_LISTING": "\tతయారు వివరాలను విజయవంతంగా పొందండి.",
              "EDIT_MAKE_SUCCESSFULLY": "విజయవంతంగా సవరించండి.",
              "MAKE_CREATED_SUCCESSFULLY": "\tవిజయవంతంగా రూపొందించండి."
            },
            "PLAN": {
              "NOT_FOUND": "\tప్లాన్ దొరకలేదు",
              "NOT_DELETED": "ప్లాన్ నాట్ డిలీట్ చేయని సంబంధం ఉంది.",
              "SOME_DELETED":
                  "కొన్ని రికార్డ్‌లు విజయవంతంగా తొలగించబడ్డాయి, మరికొన్ని తొలగించబడలేదు.",
              "ALREADY_EXIST":
                  "\tప్లాన్ పేరు ఇప్పటికే ఉంది, దయచేసి మరొక ప్లాన్ పేరుతో ప్రయత్నించండి",
              "GET_SUCCESSFULLY": "ప్రణాళిక విజయవంతంగా సాగుతుంది.",
              "CREATED_SUCCESSFULLY": "ప్లాన్ విజయవంతంగా రూపొందించబడింది.",
              "DELETED_SUCCESSFULLY": "\tప్లాన్ విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY": "\tప్లాన్ విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY": "\tప్రణాళిక జాబితా విజయవంతంగా పొందండి."
            },
            "ROLE": {
              "ADDED": "పాత్ర విజయవంతంగా జోడించబడింది.",
              "FETCH": "\tపాత్ర విజయవంతంగా పొందబడింది",
              "EDITED": "పాత్ర విజయవంతంగా సవరించబడింది.",
              "DELETED": "\tపాత్ర విజయవంతంగా తొలగించబడింది.",
              "ALREADY_EXIST": "పాత్ర ఇప్పటికే ఉంది."
            },
            "SMTP": {
              "NOT_FOUND": "\tSMTP కనుగొనబడలేదు",
              "ALREADY_EXIST": "\tSMTP ఇప్పటికే ఉంది",
              "EXCEL_NOT_FOUND": "SMTP Excel కనుగొనబడలేదు",
              "GET_SUCCESSFULLY": "\tSMTP విజయవంతంగా పొందండి.",
              "NAME_ALREADY_EXIST":
                  "SMTP పేరు ఇప్పటికే ఉంది, దయచేసి మరొక SMTP పేరుతో ప్రయత్నించండి",
              "CREATED_SUCCESSFULLY": "\tSMTP విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY": "SMTP విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY": "SMTP విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY": "\tSMTP జాబితా విజయవంతంగా పొందింది.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "\tSMTP excel యొక్క json ఫైల్ విజయవంతంగా సృష్టించబడింది"
            },
            "TASK": {
              "TASK_GET": "\tటాస్క్‌ని విజయవంతంగా పొందండి.",
              "DUPLICATE_TASK": "టాస్క్ ఇప్పటికే ఉంది.",
              "TASK_NOT_FOUND": "టాస్క్ కనుగొనబడలేదు.",
              "ADD_TASK_SUCCESS": "\tటాస్క్ విజయవంతంగా జోడించబడింది.",
              "EDIT_TASK_SUCCESS": "టాస్క్ విజయవంతంగా సవరించబడింది.",
              "DELETE_TASK_SUCCESS": "\tటాస్క్ విజయవంతంగా తొలగించబడింది.",
              "GET_ALL_TASK_SUCCESS": "అన్ని టాస్క్‌లను విజయవంతంగా పొందండి.",
              "EDIT_TASK_SUCCESS_STATUS":
                  "\tటాస్క్ స్థితి విజయవంతంగా మార్చబడింది.",
              "TASK_DETAILS_NOT_AVAILABLE": "టాస్క్ వివరాలు అందుబాటులో లేవు."
            },
            "ZOOM": {
              "GET_ALL": "జూమ్ వివరాల జాబితా విజయవంతంగా పొందండి..",
              "NOT_EXIST": "జూమ్ వివరాలు లేవు.",
              "NOT_FOUND": "జూమ్ వివరాలు కనుగొనబడలేదు.",
              "GET_DETAILS": "జూమ్ వివరాలు విజయవంతంగా వచ్చాయి.",
              "ALREADY_EXIST": "\tజూమ్ వివరాలు ఇప్పటికే ఉన్నాయి.",
              "CREATED_SUCCESSFULLY":
                  "జూమ్ వివరాలు విజయవంతంగా సృష్టించబడ్డాయి.",
              "DELETED_SUCCESSFULLY":
                  "\tజూమ్ వివరాలు విజయవంతంగా తొలగించబడ్డాయి.",
              "UPDATED_SUCCESSFULLY": "జూమ్ వివరాలు విజయవంతంగా నవీకరించబడ్డాయి."
            },
            "ASSET": {
              "GET_SUCCESSFULLY": "\tఆస్తిని విజయవంతంగా పొందుతారు.",
              "WRONG_ASSET_TYPE": "\tఆస్తి తప్పు.",
              "COUNT_SUCCESSFULLY": "\tటోటల్ మేక్ సక్సెస్ ఫుల్.",
              "DELETE_SUCCESSFULLY": "ఆస్తి విజయవంతంగా తొలగించబడింది.",
              "CREATED_SUCCESSFULLY": "\tఅసెట్ విజయవంతంగా సృష్టించబడింది.",
              "UPDATED_SUCCESSFULLY": "ఆస్తి విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY": "\tఆస్తుల జాబితా విజయవంతంగా పొందండి.",
              "ASSET_CODE_ALREDAY_EXIST": "\tఆస్తి కోడ్ ఇప్పటికే ఉంది.",
              "ASSET_COUNT_SUCCESSFULLY": "\tఆస్తి కోడ్ ఇప్పటికే ఉంది.",
              "INSOCK_ASSET_COUNT_SUCCESSFULLY":
                  "మొత్తం ఇన్‌స్టాక్ అసెట్ రకం విజయవంతంగా పొందండి."
            },
            "CLASS": {
              "NOT_FOUND": "\tక్లాస్ కనుగొనబడలేదు.",
              "NOT_DELETED": "\tతరగతి తొలగించబడని సంబంధం ఉంది.",
              "SOME_DELETED":
                  "\tకొన్ని రికార్డ్‌లు విజయవంతంగా తొలగించబడ్డాయి, మరికొన్ని తొలగించబడలేదు.",
              "ALREADY_EXIST":
                  "\tతరగతి పేరు ఇప్పటికే ఉంది, దయచేసి మరొక తరగతి పేరుతో ప్రయత్నించండి",
              "GET_SUCCESSFULLY": "తరగతి విజయవంతంగా పొందండి.",
              "CREATED_SUCCESSFULLY": "తరగతి విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY": "తరగతి విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY": "\tతరగతి విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY": "\tతరగతి జాబితా విజయవంతంగా పొందండి."
            },
            "LEAVE": {
              "LEAVE_GET": "\tసెలవును విజయవంతంగా పొందండి.",
              "LEAVE_DUPLICATE": "\tఇప్పటికే ఉనికిని వదిలివేయండి.",
              "LEAVE_NOT_ADDED": "\tఈ రోజు షిఫ్ట్‌లో చేర్చవద్దు.",
              "LEAVE_NOT_FOUND": "\tవదిలిపెట్టలేదు.",
              "ADD_LEAVE_SUCCESS": "\tవదిలివేయడం విజయవంతంగా జోడించబడింది.\t",
              "EDIT_LEAVE_SUCCESS": "విజయవంతంగా సవరించబడింది వదిలివేయండి.",
              "LEAVE_CANNOT_DELET": "ఇప్పుడు మీరు సెలవును తొలగించలేరు.",
              "MAKE_SEPARATE_LEAVE":
                  "\tఈ రోజు షిఫ్ట్‌లో లీవ్ జోడించకుండా విడిగా సెలవు పెట్టండి.",
              "UPDATE_LEAVE_STATUS": "\tనిష్క్రమించు స్థితి నవీకరించబడింది.",
              "DELETE_LEAVE_SUCCESS": "వదిలివేయడం విజయవంతంగా తొలగించబడింది.",
              "START_GRETERTHEN_END": "ప్రారంభ తేదీ ముగింపు తేదీ కంటే ఎక్కువ.",
              "GET_ALL_LEAVE_SUCCESS": "అన్ని ఆకులను విజయవంతంగా పొందండి.",
              "START_END_DATE_IS_HOLIDAY":
                  "ప్రారంభ తేదీ లేదా ముగింపు తేదీ సెలవుదినం మరొక తేదీని ఎంచుకోండి.",
              "LEAVE_DETAILS_NOT_AVAILABLE": "\tసెలవు వివరాలు అందుబాటులో లేవు."
            },
            "ROLES": {"ADDED": "పాత్ర విజయవంతంగా జోడించబడింది."},
            "ROOMS": {
              "GET_ROOM": "\tగది వివరాలు విజయవంతంగా పొందబడ్డాయి.",
              "NOT_FOUND": "\tగది దొరకలేదు",
              "NOT_DELETED": "గది తొలగించబడని సంబంధం ఉంది.",
              "GET_ALL_ROOM": "\tగది జాబితా విజయవంతంగా పొందండి..",
              "SOME_DELETED":
                  "\tకొన్ని రికార్డ్‌లు విజయవంతంగా తొలగించబడ్డాయి, మరికొన్ని తొలగించబడలేదు.",
              "ALREADY_EXIST":
                  "ROOMS పేరు ఇప్పటికే ఉంది, దయచేసి మరొక ROOMS పేరుతో ప్రయత్నించండి",
              "ROOM_NOT_EXIST": "\tగది లేదు.",
              "ROOM_ALREADY_EXIST": "\tగది ఇప్పటికే ఉంది.",
              "CREATED_SUCCESSFULLY": "\tగది విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY": "\tగది విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY": "\tగది విజయవంతంగా నవీకరించబడింది."
            },
            "SHEET": {"FETCH": "excel షీట్ url విజయవంతంగా పొందబడింది."},
            "USERS": {
              "INVALID_PM": "\tవినియోగదారు ప్రాజెక్ట్ మేనేజర్ కాదు.",
              "INVALID_TL": "వినియోగదారు జట్టు నాయకుడు కాదు.",
              "LEAVE_TODAY": "ఈరోజు ఉద్యోగులకు సెలవు.",
              "LOGOUT_FAIL": "ఈరోజు ఉద్యోగులకు సెలవు.",
              "NOT_ALLOWED": "ఈ పాత్రను యాక్సెస్ చేయడానికి మీకు అనుమతి లేదు.",
              "URL_EXPIRED": "ఈ URL గడువు ముగిసింది లేదా చెల్లదు.",
              "GET_ALL_USER": "వినియోగదారులందరినీ విజయవంతంగా పొందండి.",
              "INVALID_USER":
                  "\tకొత్త వినియోగదారుని సృష్టించడానికి మీకు అనుమతి లేదు.",
              "USER_CREATED": "\tవినియోగదారు విజయవంతంగా సృష్టించబడ్డారు.",
              "USER_DELETED": "\tవినియోగదారు విజయవంతంగా తొలగించబడ్డారు.",
              "GET_USER_LIST": "\tవినియోగదారు జాబితా విజయవంతంగా పొందండి.",
              "LOGIN_SUCCESS": "\tమీరు విజయవంతంగా లాగిన్ అయ్యారు.",
              "LOGOUT_SUCCESS": "విజయవంతంగా లాగ్ అవుట్.",
              "SIGNUP_SUCCESS": "\tవినియోగదారు విజయవంతంగా సృష్టించబడ్డారు.",
              "USERTYPE_EXIST": "వినియోగదారు రకం ఇప్పటికే ఉంది.",
              "USER_NOT_FOUND": "వినియోగదారు ఉనికిలో లేరు.",
              "EMAIL_NOT_FOUND": "ఇమెయిల్ ఉనికిలో లేదు.",
              "FETCH_USER_LIST": "\tడేటాను విజయవంతంగా పొందడం.",
              "ADDED_BULK_USERS":
                  "\tబల్క్ వినియోగదారులు విజయవంతంగా జోడించబడ్డారు.",
              "CREATED_USERTYPE": "వినియోగదారు రకం విజయవంతంగా సృష్టించబడింది.",
              "DEACTIVE_ACCOUNT":
                  "\tమీ ఖాతా నిష్క్రియం చేయబడింది, దయచేసి నిర్వాహకుడిని సంప్రదించండి.",
              "GET_USER_PROFILE": "\tవినియోగదారు ప్రొఫైల్ విజయవంతంగా పొందండి.",
              "INVALID_PASSWORD": "చెల్లని ఇమెయిల్ లేదా పాస్వర్డ్.",
              "USERTYPE_DELETED": "వినియోగదారు రకం విజయవంతంగా తొలగించబడింది.",
              "USERTYPE_UPDATED": "వినియోగదారు రకం విజయవంతంగా నవీకరించబడింది.",
              "GET_USERTYPE_LIST": "వినియోగదారు రకం జాబితా విజయవంతంగా పొందండి.",
              "PASSWORDMINLENGTH":
                  "మీ పాస్‌వర్డ్ తప్పనిసరిగా కనీసం 6 అక్షరాలను కలిగి ఉండాలి.",
              "PASSWORD_MISMATCH":
                  "కొత్త పాస్‌వర్డ్ మరియు కన్ఫర్మ్ పాస్‌వర్డ్ సరిపోలలేదు.",
              "EMAIL_CHANGE_ERROR":
                  "\tఇమెయిల్ మార్చబడలేదు, ఇమెయిల్ పంపడంలో లోపం. అన్ని ఇతర వివరాలు విజయవంతంగా నవీకరించబడ్డాయి",
              "INVALIDOLDPASSWORD":
                  "దయచేసి చెల్లుబాటు అయ్యే ప్రస్తుత పాస్‌వర్డ్‌ను నమోదు చేయండి.",
              "NOT_VERIFY_ACCOUNT": "దయచేసి మీ ఖాతాను ధృవీకరించండి.",
              "USERTYPE_NOT_FOUND": "వినియోగదారు రకం ఉనికిలో లేదు.",
              "EMAIL_ALREDAY_EXIST": "ఈ ఇమెయిల్ ఇప్పటికే ఈ యాప్‌లో ఉంది.",
              "GET_USER_AUTH_TOKEN":
                  "\tకొత్త ప్రమాణీకరణ టోకెన్‌లను విజయవంతంగా పొందండి.",
              "ADMIN_PROFILE_UPDATE": "\tప్రొఫైల్ నవీకరణ విజయవంతంగా.",
              "GET_USERTYPE_PROFILE": "\tవినియోగదారు రకం విజయవంతంగా పొందండి.",
              "LOCATION_DEACTIVATED":
                  "\tఉద్యోగ స్థానం నిష్క్రియం చేయబడింది, దయచేసి నిర్వాహకుడిని సంప్రదించండి.",
              "ORGANIZATION_DELETED":
                  "మీ సంస్థ తొలగించబడింది. సమస్య పరిష్కారం కోసం దయచేసి నిర్వాహకులను సంప్రదించండి",
              "PROFILE_FETCH_SUCCESS": "\tప్రొఫైల్ పొందడం విజయవంతమైంది.",
              "RESETPASSWORD_SUCCESS":
                  "\tమీ పాస్‌వర్డ్ విజయవంతంగా నవీకరించబడింది.",
              "FORGOTPASSWORD_SUCCESS":
                  "\tమీ పాస్‌వర్డ్ విజయవంతంగా నవీకరించబడింది.",
              "PASSWORDUPDATE_SUCCESS":
                  "\tమీ పాస్‌వర్డ్ విజయవంతంగా మార్చబడింది.",
              "PROFILE_DELETE_SUCCESS": "ప్రొఫైల్ విజయవంతంగా తొలగించబడింది.",
              "PROFILE_UPDATE_SUCCESS": "ప్రొఫైల్ విజయవంతంగా నవీకరించబడింది.",
              "MAX_USERS_LIMIT_REACHED":
                  "\tఈ ప్లాన్ కోసం గరిష్ట వినియోగదారుల పరిమితిని చేరుకున్నారు",
              "USERDETAIL_NOT_AVAILABLE": "\tవినియోగదారు వివరాలు కనుగొనబడలేదు.",
              "CONTRACTOR_STATUS_PENDING":
                  "\tమీ ఖాతా ధృవీకరణ కోసం పెండింగ్‌లో ఉంది. దయచేసి సహాయం కోసం విక్రేతను సంప్రదించండి.",
              "CONTRACTOR_STATUS_REJECTED":
                  "\tమీ ఖాతా నిలిపివేయబడింది. దయచేసి మీ ఖాతాను మళ్లీ సక్రియం చేయడానికి విక్రేతను సంప్రదించండి.",
              "USER_DETAILS_NOT_AVAILABLE":
                  "\tవినియోగదారు వివరాలు అందుబాటులో లేవు.",
              "MOBILE_NUMBER_ALREADY_EXIST":
                  "\tవినియోగదారు వివరాలు అందుబాటులో లేవు.",
              "ORGANIZATION_BRANCH_DELETED":
                  "మీ సంస్థ బ్రాంచ్ తొలగించబడింది. సమస్య పరిష్కారం కోసం దయచేసి నిర్వాహకులను సంప్రదించండి",
              "FORGOTPASSWORD_EMAIL_SUCCESS":
                  "ఇమెయిల్ పంపబడింది దయచేసి మీ ఇన్‌బాక్స్‌ని తనిఖీ చేసి, మీ పాస్‌వర్డ్‌ని రీసెట్ చేయడానికి అందుకున్న లింక్‌పై క్లిక్ చేయండి.",
              "OLDPASSWORD_NEWPASSWORD_SAME":
                  "ప్రస్తుత పాస్‌వర్డ్ మరియు కొత్త పాస్‌వర్డ్ ఒకేలా ఉండకూడదు.",
              "ORGANIZATION_STATUS_INACTIVE":
                  "\tకొన్ని కారణాల వల్ల మీ సంస్థ ఇన్‌యాక్టివ్‌గా ఉంది. సమస్య పరిష్కారం కోసం దయచేసి నిర్వాహకులను సంప్రదించండి",
              "PROFILE_UPDATE_WITH_EMAIL_SUCCESS":
                  "\tప్రొఫైల్ విజయవంతంగా నవీకరించబడింది. దయచేసి మీ కొత్త ఇమెయిల్‌ను ధృవీకరించండి.",
              "ORGANIZATION_BRANCH_STATUS_INACTIVE":
                  "కొన్ని కారణాల వల్ల మీ సంస్థ బ్రాంచ్ క్రియారహితంగా ఉంది. సమస్య పరిష్కారం కోసం దయచేసి నిర్వాహకులను సంప్రదించండి"
            },
            "AUTHOR": {
              "NOT_FOUND": "\tరచయిత దొరకలేదు",
              "ALREADY_EXIST": "రచయిత ఇప్పటికే ఉన్నారు",
              "EXCEL_NOT_FOUND": "రచయిత Excel కనుగొనబడలేదు",
              "GET_SUCCESSFULLY": "\tరచయిత విజయం సాధించారు.",
              "NAME_ALREADY_EXIST":
                  "రచయిత పేరు ఇప్పటికే ఉంది, దయచేసి మరొక రచయిత పేరుతో ప్రయత్నించండి",
              "CREATED_SUCCESSFULLY": "రచయిత విజయవంతంగా సృష్టించబడ్డారు.",
              "DELETED_SUCCESSFULLY": "రచయిత విజయవంతంగా తొలగించబడ్డారు.",
              "UPDATED_SUCCESSFULLY": "\tరచయిత విజయవంతంగా నవీకరించబడ్డారు.",
              "GET_LIST_SUCCESSFULLY": "\tరచయిత జాబితా విజయవంతంగా పొందండి.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "రచయిత excel యొక్క json ఫైల్ విజయవంతంగా సృష్టించబడింది"
            },
            "CLIENT": {
              "CREATED": "\tక్లయింట్ సృష్టించబడింది.",
              "NOT_FOUND": "\tక్లయింట్ ఉనికిలో లేదు.",
              "GET_CLIENT_LIST": "\tక్లయింట్ జాబితా విజయవంతంగా పొందండి.",
              "GET_CLIENT_PROFILE":
                  "\tక్లయింట్ ప్రొఫైల్ విజయవంతంగా పొందుతుంది.",
              "EMAIL_ALREDAY_EXIST": "\tక్లయింట్ ఇమెయిల్ ఇప్పటికే ఉంది.",
              "PROFILE_UPDATE_SUCCESS":
                  "\tక్లయింట్ ప్రొఫైల్ విజయవంతంగా నవీకరించబడింది.",
              "CLIENT_DETAILS_NOT_AVAILABLE": "క్లయింట్ వివరాలు కనుగొనబడలేదు."
            },
            "COURSE": {
              "NOT_FOUND": "కోర్సు కనుగొనబడలేదు",
              "NOT_DELETED":
                  "\tఇతర మాడ్యూళ్లపై ఆధారపడటం వలన కోర్సు తొలగించబడలేదు",
              "RATING_LIST": "కోర్సు రేటింగ్ విజయవంతంగా పొందండి",
              "RATING_ADDED": "\tకోర్సు రేటింగ్ జోడించబడింది.",
              "SOME_DELETED": "\tకొంత పుస్తకం తొలగించబడింది",
              "ALREADY_EXIST": "\tకోర్సు ఇప్పటికే ఉంది",
              "GET_SUCCESSFULLY": "కోర్సు విజయవంతంగా సాగుతుంది.",
              "NAME_ALREADY_EXIST":
                  "కోర్సు పేరు ఇప్పటికే ఉంది, దయచేసి మరొక కోర్సు పేరుతో ప్రయత్నించండి",
              "CREATED_SUCCESSFULLY": "కోర్సు విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY": "\tకోర్సు విజయవంతంగా తొలగించబడింది.",
              "RATING_ALREADY_EXIST": "కోర్సు రేటింగ్ ఇప్పటికే ఉంది",
              "UPDATED_SUCCESSFULLY": "\tకోర్సు విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY": "\tకోర్సు జాబితా విజయవంతమైంది.",
              "GET_DETAIL_SUCCESSFULLY": "కోర్సు వివరాలు విజయవంతంగా అందుతాయి."
            },
            "EMAILS": {
              "EMAIL_SEND_SUCCESS": "ఒకే ఇమెయిల్ విజయవంతంగా పంపబడింది."
            },
            "LESSON": {
              "NOT_FOUND": "పాఠం కనుగొనబడలేదు",
              "NOT_DELETED": "పాఠం తొలగించబడని సంబంధం ఉంది.",
              "SOME_DELETED":
                  "కొన్ని రికార్డ్‌లు విజయవంతంగా తొలగించబడ్డాయి, మరికొన్ని తొలగించబడలేదు.",
              "ALREADY_EXIST":
                  "పాఠం పేరు ఇప్పటికే ఉంది, దయచేసి మరొక పాఠం పేరుతో ప్రయత్నించండి",
              "GET_SUCCESSFULLY": "పాఠం విజయవంతం అవుతుంది.",
              "CREATED_SUCCESSFULLY": "పాఠం విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY": "\tపాఠం విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY": "\tపాఠం విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY": "పాఠం జాబితా విజయవంతంగా పొందండి."
            },
            "MODULE": {
              "NOT_FOUND": "\tమాడ్యూల్ కనుగొనబడలేదు",
              "NOT_DELETED": "మాడ్యూల్ తొలగించబడని సంబంధం ఉంది.",
              "SOME_DELETED":
                  "\tకొన్ని రికార్డ్‌లు విజయవంతంగా తొలగించబడ్డాయి, మరికొన్ని తొలగించబడలేదు.",
              "ALREADY_EXIST":
                  "మాడ్యూల్ పేరు ఇప్పటికే ఉంది, దయచేసి మరొక మాడ్యూల్ పేరుతో ప్రయత్నించండి",
              "GET_SUCCESSFULLY": "మాడ్యూల్ విజయవంతంగా పొందండి.",
              "CREATED_SUCCESSFULLY": "మాడ్యూల్ విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY": "\tమాడ్యూల్ విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY": "మాడ్యూల్ విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY": "\tమాడ్యూల్ జాబితా విజయవంతంగా పొందండి."
            },
            "PARENT": {
              "NOT_FOUND": "పేరెంట్ దొరకలేదు",
              "NOT_CREATED":
                  "తల్లిదండ్రులు సృష్టించబడలేదు. కొన్ని సమస్యలు ఉన్నాయి",
              "EXCEL_NOT_FOUND": "పేరెంట్ ఎక్సెల్ కనుగొనబడలేదు",
              "GET_SUCCESSFULLY": "తల్లిదండ్రులు విజయవంతంగా పొందుతారు.",
              "IMPORT_SUCESSFULLY": "పేరెంట్ విజయవంతంగా దిగుమతి చేయబడింది.",
              "CREATED_SUCCESSFULLY": "\tతల్లిదండ్రులు విజయవంతంగా సృష్టించారు.",
              "DELETED_SUCCESSFULLY":
                  "తల్లిదండ్రులు విజయవంతంగా తొలగించబడ్డారు.",
              "UPDATED_SUCCESSFULLY": "పేరెంట్ విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY":
                  "తల్లిదండ్రుల జాబితా విజయవంతంగా పొందండి.",
              "EXCEL_PARENT_ALREADY_EXIST":
                  "\tఎక్సెల్ షీట్‌లో పేరెంట్ ఇప్పటికే ఉన్నారు"
            },
            "STRIPE": {
              "NOT_FOUND": "\tగీత కీ కనుగొనబడలేదు",
              "ALREADY_EXIST":
                  "గీత కీ ఇప్పటికే ఉంది, దయచేసి దాన్ని నవీకరించండి",
              "GET_SUCCESSFULLY": "\tగీత కీ విజయవంతంగా పొందండి.",
              "CREATED_SUCCESSFULLY": "S3 కీ విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY": "\tstrpe కీ విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY":
                  "\tS3 వివరాలు విజయవంతంగా నవీకరించబడ్డాయి.",
              "GET_LIST_SUCCESSFULLY": "\tగీత కీ జాబితా విజయవంతంగా పొందండి."
            },
            "TICKET": {
              "CREATED": "\tటికెట్ విజయవంతంగా సృష్టించబడింది.",
              "FETCHED": "\tటికెట్ విజయవంతంగా పొందబడింది.",
              "NOT_FOUND": "\tటిక్కెట్ మీకు కేటాయించబడలేదు.",
              "COMMENT_ADDED": "\tవ్యాఖ్య విజయవంతంగా జోడించబడింది.",
              "STATUS_UPDATE": "\tటిక్కెట్ స్థితి విజయవంతంగా నవీకరించబడింది.",
              "COMMENT_FETCHED": "వ్యాఖ్య విజయవంతంగా పొందబడింది."
            },
            "VENDOR": {
              "NAME_EXIST": "\tవిక్రేత పేరు ఇప్పటికే ఉంది.",
              "VENDOR_NOT_EXIST": "\tవిక్రేత ఉనికిలో లేదు.",
              "GET_VENDOR_LISTING": "\tవిక్రేత వివరాలను విజయవంతంగా పొందండి.",
              "EDIT_VENDOR_SUCCESSFULLY": "విక్రేతను విజయవంతంగా సవరించండి.",
              "VENDOR_CREATED_SUCCESSFULLY":
                  "విక్రేత విజయవంతంగా సృష్టించబడింది."
            },
            "COMPANY": {
              "NAME_EXIST": "\tకంపెనీ పేరు ఇప్పటికే ఉంది.",
              "COMPANY_ADDED": "\tకంపెనీ విజయవంతంగా జోడించబడింది",
              "COMPANY_NOT_ADDED": "\tకంపెనీని జోడించడం సాధ్యపడలేదు",
              "COMPANY_NOT_EXIST": "\tకంపెనీ ఉనికిలో లేదు.",
              "GET_COMPANY_LISTING": "కంపెనీ వివరాలను విజయవంతంగా పొందండి.",
              "EDIT_COMPANY_SUCCESSFULLY": "\tకంపెనీని విజయవంతంగా సవరించండి.",
              "COMPANY_CREATED_SUCCESSFULLY":
                  "\tకంపెనీ విజయవంతంగా సృష్టించబడింది."
            },
            "FE_USER": {
              "PARENTS": "\tతల్లిదండ్రులు",
              "STUDENT": "\tవిద్యార్థి",
              "TEACHER": "\tటీచర్",
              "BIO_DATA": "\tబయో డేటా",
              "LIBRARIAN": "\tలైబ్రేరియన్",
              "STUDENT_ID": "\tవిద్యార్థి ID",
              "ADD_STUDENT": "విద్యార్థిని జోడించండి",
              "ADD_TEACHER": "టీచర్‌ని జోడించండి",
              "BLOOD_GROUP": "\tరక్తపు గ్రూపు",
              "NATIONALITY": "\tజాతీయత",
              "SELECT_DATE": "\tతేదీని ఎంచుకోండి",
              "UPLOAD_LOGO": "ప్రొఫైల్ చిత్రాన్ని అప్‌లోడ్ చేయండి",
              "EDIT_PARENTS": "\tతల్లిదండ్రులను సవరించండి",
              "EDIT_STUDENT": "\tతల్లిదండ్రులను సవరించండి",
              "EDIT_TEACHER": "\tగురువును సవరించండి",
              "SELECT_CLASS": "\tతరగతిని ఎంచుకోండి",
              "VIEW_PARENTS": "\tతల్లిదండ్రులను వీక్షించండి",
              "VIEW_STUDENT": "\tవిద్యార్థిని వీక్షించండి",
              "VIEW_TEACHER": "\tటీచర్ చూడండి",
              "DATE_OF_BIRTH": "పుట్టిన తేది",
              "PROFILE_IMAGE": "\tప్రొఫైల్ చిత్రం",
              "DELETE_PARENTS": "తల్లిదండ్రులను తొలగించండి",
              "DELETE_STUDENT": "\tవిద్యార్థిని తొలగించండి",
              "DELETE_TEACHER": "\tఉపాధ్యాయుడిని తొలగించండి",
              "SELECT_SECTION": "\tవిభాగాన్ని ఎంచుకోండి",
              "DATE_OF_JOINING": "\tచేరిన తేదీ",
              "STREET_ADDRESS_LINE_1": "\tవీధి చిరునామా లైన్ 1",
              "STREET_ADDRESS_LINE_2": "వీధి చిరునామా లైన్ 2",
              "ARE_YOU_DELETE_PARENTS":
                  "మీరు ఈ తల్లిదండ్రులను ఖచ్చితంగా తొలగించాలనుకుంటున్నారా?.",
              "ARE_YOU_DELETE_STUDENT":
                  "మీరు ఖచ్చితంగా ఈ విద్యార్థిని తొలగించాలనుకుంటున్నారా?.",
              "ARE_YOU_DELETE_TEACHER":
                  "మీరు ఖచ్చితంగా ఈ టీచర్‌ని తొలగించాలనుకుంటున్నారా?."
            },
            "GENERAL": {
              "GET_LIST": "\tజాబితాను విజయవంతంగా పొందండి.",
              "NOT_FOUND": "\tAPI కనుగొనబడలేదు.",
              "NOT_TOKEN": "టోకెన్ దొరకలేదు.",
              "INVALID_ID": "\tదయచేసి చెల్లుబాటు అయ్యే ఐడిని నమోదు చేయండి.",
              "INVALID_DOC": "\tదయచేసి పత్రాన్ని అప్‌లోడ్ చేయండి.",
              "JWT_EXPIRED":
                  "\tJWT గడువు ముగిసింది, దయచేసి మళ్లీ లాగిన్ చేయండి.",
              "INVALID_IMAGE":
                  "దయచేసి చెల్లుబాటు అయ్యే చిత్రాన్ని అప్‌లోడ్ చేయండి.",
              "INVALID_LOGIN": "మీకు అధికారం లేదు.",
              "BLACKLIST_MAIL":
                  "దయచేసి చెల్లుబాటు అయ్యే ఇమెయిల్‌ను నమోదు చేయండి, మేము నకిలీ ఇమెయిల్‌లను అనుమతించము.",
              "RESTRICTED_USER": "\tఈ ఆపరేషన్ చేయడానికి మీకు అధికారం లేదు.",
              "UNAUTHORIZED_USER": "\tఅనధికారమైనది, దయచేసి లాగిన్ చేయండి.",
              "INVALID_SECRET_KEY": "\tచెల్లని రహస్య కీ.",
              "PASSWORD_NOT_ALLOW": "పాస్‌వర్డ్‌ని వినియోగదారు సవరించలేరు.",
              "EMAIL_ALREADY_EXIST":
                  "\tఇమెయిల్ ఇప్పటికే నమోదు చేయబడింది, దయచేసి వేరే మెయిల్‌ని ఉపయోగించండి.",
              "GENERAL_ERROR_CONTENT":
                  "\tఎక్కడో తేడ జరిగింది. దయచేసి తర్వాత మళ్లీ ప్రయత్నించండి."
            },
            "PROJECT": {
              "PROJECT_GET": "\tప్రాజెక్ట్‌ని విజయవంతంగా పొందండి.",
              "FILE_REQUIRED": "\tఫైళ్లు అందడం లేదు.",
              "FILE_NOT_FOUND": "\tఫైల్‌లు కనుగొనబడలేదు.",
              "PROJECT_DUPLICATE": "ప్రాజెక్ట్ ఇప్పటికే ఉంది.",
              "PROJECT_NOT_FOUND": "ప్రాజెక్ట్ కనుగొనబడలేదు.",
              "ADD_PROJECT_SUCCESS": "\tప్రాజెక్ట్ విజయవంతంగా జోడించబడింది.",
              "FILE_UPLOAD_SUCCESS": "ఫైల్‌లు విజయవంతంగా అప్‌లోడ్ చేయబడ్డాయి.",
              "EDIT_PROJECT_SUCCESS": "\tప్రాజెక్ట్ విజయవంతంగా సవరించబడింది.",
              "FILE_GET_SUCCESSFULLY":
                  "\tప్రాజెక్ట్ డాక్యుమెంట్ విజయవంతంగా పొందండి.",
              "DELETE_PROJECT_SUCCESS": "ప్రాజెక్ట్ విజయవంతంగా తొలగించబడింది.",
              "GET_ALL_PROJECT_SUCCESS":
                  "\tఅన్ని ప్రాజెక్ట్‌లను విజయవంతంగా పొందండి.",
              "PROJECT_DETAILS_NOT_AVAILABLE":
                  "\tప్రాజెక్ట్ వివరాలు అందుబాటులో లేవు."
            },
            "REQUEST": {
              "FAIL": "\tచర్య కనుగొనబడలేదు.",
              "ADDED": "డేటా విజయవంతంగా జోడించబడింది.",
              "FETCH": "\tడేటా విజయవంతంగా పొందబడింది",
              "EDITED": "\tడేటా విజయవంతంగా సవరించబడింది.",
              "DELETED": "డేటా విజయవంతంగా తొలగించబడింది."
            },
            "SECTION": {
              "NOT_FOUND": "\tవిభాగం కనుగొనబడలేదు",
              "NOT_DELETED": "విభాగం తొలగించబడని సంబంధం ఉంది.",
              "SOME_DELETED":
                  "కొన్ని రికార్డ్‌లు విజయవంతంగా తొలగించబడ్డాయి, మరికొన్ని తొలగించబడలేదు.",
              "ALREADY_EXIST": "విభాగం ఇప్పటికే ఉంది",
              "GET_SUCCESSFULLY": "\tవిభాగం విజయవంతం అవుతుంది.",
              "NAME_ALREADY_EXIST":
                  "విభాగం పేరు ఇప్పటికే ఉంది, దయచేసి మరొక విభాగం పేరుతో ప్రయత్నించండి",
              "CREATED_SUCCESSFULLY":
                  "విభాగం విజయవిభాగం విజయవంతంగా సృష్టించబడింది.\tSection created successfully.వంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY":
                  "\tవిభాగంSectiవిభాగం విజయవంతంగా తొలగించబడింది.on deleted successfully. విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY":
                  "\tవిభా\tవిభాగం విజయవంతంగా నవీకరించబడింది.గం వి\tSection updated successfully.జయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY":
                  "\tవిభాగం జాబివిభాగం జాబితా విజయవంతంగా పొందండి.తా విజయవంతంగా పొందండి.",
              "SUBJECT_ASSIGN_SUCCESS":
                  "\tవిషయం\tవిషయం విజయవంతంగా అప్పగించబడింది విజయవంతంగా అప్పగించబడింది",
              "TEACHER_ASSIGN_SUCCESS":
                  "ఉపాధ్యా\tఉపాధ్యాయుడు విజయవంతంగా అప్పగించారుయుడు విజయవంతంగా అప్పగించారు"
            },
            "STUDENT": {
              "NOT_FOUND": "విద్యార్థి \tవిద్యార్థి దొరకలేదుదొరకలేదు",
              "EXCEL_NOT_FOUND":
                  "విద్యార్థి ఎ\tవిద్యార్థి ఎక్సెల్ కనుగొనబడలేదుక్సెల్ కనుగొనబడలేదు",
              "GET_SUCCESSFULLY":
                  "  విద్యార్థి విజ\tవిద్యార్థి విజయం సాధిస్తారు.యం సాధిస్తారు.",
              "EXCEL_CLASS_ISSUE": "అందించబడిన తరగతి ఉనికిలో లేదు",
              "IMPORT_SUCESSFULLY": "విద్యార్థి విజయవంతంగా దిగుమతి చేయబడ్డాడు.",
              "EXCEL_SECTION_ISSUE": "అందించిన విభాగం ఉనికిలో లేదు",
              "CREATED_SUCCESSFULLY": "\tవిద్యార్థి విజయవంతంగా సృష్టించారు.",
              "DELETED_SUCCESSFULLY": "\tవిద్యార్థి విజయవంతంగా తొలగించబడ్డారు.",
              "UPDATED_SUCCESSFULLY": "విద్యార్థి విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY": "\tవిద్యార్థుల జాబితా విజయవంతమైంది.",
              "EXCEL_STUDENT_ALREADY_EXIST":
                  "\tఎక్సెల్ షీట్‌లో విద్యార్థి ఇప్పటికే ఉన్నారు"
            },
            "TEACHER": {
              "NOT_FOUND": "\tటీచర్ \tటీచర్ దొరకలేదుదొరకలేదు",
              "NOT_DELETED":
                  "\tటీచర్ \tఉపాధ్యాయుడు తొలగించబడని సంబంధం ఉనికిలో ఉంది.దొరకలేదు",
              "SOME_DELETED":
                  "\tకొన్ని రికార్డ్‌లు విజ\tకొన్ని రికార్డ్‌లు విజయవంతంగా తొలగించబడ్డాయి, మరికొన్ని తొలగించబడలేదు.యవంతంగా తొలగించబడ్డాయి, మరికొన్ని తొలగించబడలేదు.",
              "EXCEL_NOT_FOUND":
                  "టీచర్ ఎక్సెల్ క\tటీచర్ ఎక్సెల్ కనుగొనబడలేదునుగొనబడలేదు",
              "GET_SUCCESSFULLY":
                  "\tఉపాధ్యాయుఉపాధ్యాయుడు విజయవంతం అవుతాడు.డు విజయవంతం అవుతాడు.",
              "IMPORT_SUCESSFULLY":
                  "\tఉపాధ్యాఉపాధ్యాయుడు విజయవంతంగా దిగుమతి చేయబడ్డాడు.యుడు విజయవంతంగా దిగుమతి చేయబడ్డాడు.",
              "CREATED_SUCCESSFULLY":
                  "\tఉపాధ్యా\tఉపాధ్యాయుడు విజయవంతంగా సృష్టించారు.యుడు విజయవంతంగా సృష్టించారు.",
              "DELETED_SUCCESSFULLY":
                  "\tఉపాధ్యా\tఉపాధ్యాయుడు విజయవంతంగా తొలగించబడ్డాడు.యుడు విజయవంతంగా తొలగించబడ్డాడు.",
              "UPDATED_SUCCESSFULLY": "\tటీచర్ విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY": "ఉపాధ్యాయుల జాబితా విజయవంతమైంది.",
              "EXCEL_DEPARTMENT_ISSUE": "అందించిన శాఖ ఉనికిలో లేదు",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "\tఎక్సెల్ షీట్‌లో ఉపాధ్యాయుడు ఇప్పటికే ఉన్నారు"
            },
            "FEEDBACK": {
              "GET": "టికెట్ విజయవంతంగా పొందండి.",
              "DATA": "\tడాష్‌బోర్డ్ డేటా విజయవంతంగా పొందబడుతుంది",
              "GET_SINGLE": "టికెట్ విజయవంతంగా పొందండి.",
              "INVALID_ID": "\tదయచేసి చెల్లుబాటు అయ్యే ఐడిని నమోదు చేయండి.",
              "CAN_NOT_EDIT": "\tమీరు ఈ ఫీల్డ్‌ని సవరించలేరు.",
              "FEEDBACK_CHAT": "టికెట్ సందేశం విజయవంతంగా పంపబడింది.",
              "FEEDBACK_CHAT_GET": "విజయవంతంగా చాట్ చేయండి.",
              "GET_FEEDBACK_LIST": "టిక్కెట్ జాబితా విజయవంతంగా పొందండి.",
              "FEEDBACK_NOT_FOUND": "\tటిక్కెట్టు దొరకలేదు.",
              "GET_REMARK_SUCCESS": "టిక్కెట్ రిమార్క్‌లు విజయవంతమయ్యాయి.",
              "EDITED_SUCCESSFULLY": "టిక్కెట్ విజయవంతంగా నవీకరించబడింది.",
              "CREATED_SUCCESSFULLY": "టికెట్ రూపొందించబడింది.",
              "FEEDBACK_TYPE_CREATED": "టిక్కెట్ రకం సృష్టించబడింది.",
              "FEEDBACK_IS_NOT_CLOSED": "\tటికెట్ ఇంకా మూసివేయబడలేదు.",
              "FORBIDDEN_REASSIGNMENT":
                  "\tమీకు తిరిగి అప్పగించడానికి అధికారం లేదు.",
              "ASSIGNEE_ALREADY_EXISTS": "అసైనీ ఇప్పటికే ఉన్నారు.",
              "FEEDBACK_CAN_NOT_DELETE": "\tమీరు ఈ టిక్కెట్‌ను తొలగించలేరు.",
              "REASSIGNED_SUCCESSFULLY":
                  "కొత్త అసైనీ విజయవంతంగా కేటాయించబడింది.",
              "REMARK_ADDED_SUCCESSFULLY":
                  "\tటిక్కెట్ రిమార్క్ విజయవంతంగా జోడించబడింది.",
              "USER_VALIDATION_SUCCESSFUL":
                  "టిక్కెట్ విజయవంతంగా నవీకరించబడింది.",
              "FEEDBACK_DELETED_SUCCESSFULLY":
                  "\tటికెట్ విజయవంతంగా తొలగించబడింది.",
              "FEEDBACK_DETAILS_NOT_AVAILABLE": "టిక్కెట్టు అందుబాటులో లేదు."
            },
            "LANGUAGE": {
              "NOT_FOUND": "భాష దొరకలేదు.",
              "ALREADY_EXIST": "భాష ఇప్పటికే ఉంది.",
              "GET_SUCCESSFULLY": "భాష విజయవంతం అవుతుంది.",
              "DELETE_SUCCESSFULLY": "భాష విజయవంతంగా తొలగించబడింది.",
              "CREATED_SUCCESSFULLY": "\tభాష విజయవంతంగా సృష్టించబడింది.",
              "UPDATED_SUCCESSFULLY": "భాష విజయవంతంగా నవీకరించబడింది."
            },
            "REGIONAL": {
              "CITIES_FETCH": "నగరాలు విజయవంతంగా పొందబడ్డాయి",
              "STATES_FETCH": "రాష్ట్రాలు విజయవంతంగా సాధించబడ్డాయి",
              "TIMEZONE_FETCH": "టైమ్-జోన్ విజయవంతంగా పొందబడింది",
              "COUNTRIES_FETCH": "\tదేశాలు విజయవంతంగా పొందబడ్డాయి",
              "CITIES_NOT_FOUND": "\tనగరాలు కనుగొనబడలేదు",
              "STATES_NOT_FOUND": "రాష్ట్రాలు కనుగొనబడలేదు",
              "TIMEZONE_NOT_FOUND": "\tటైమ్-జోన్ కనుగొనబడలేదు",
              "COUNTRIES_NOT_FOUND": "\tదేశాలు కనుగొనబడలేదు"
            },
            "DASHBOARD": {
              "SUPER_ADMIN": "సూపర్-అడ్మిన్ డాష్‌బోర్డ్ విజయవంతంగా పొందబడింది."
            },
            "FE_BRANCH": {
              "BRANCH": "\tశాఖ",
              "ADD_BRANCH": "శాఖను జోడించండి",
              "BRANCH_NAME": "\tశాఖ పేరు",
              "EDIT_BRANCH": "\tశాఖను సవరించండి",
              "LIST_BRANCH": "\tజాబితా శాఖ",
              "VIEW_BRANCH": "శాఖను వీక్షించండి",
              "BRANCH_EMAIL": "\tబ్రాంచ్ ఇమెయిల్",
              "DELETE_BRANCH": "శాఖను తొలగించండి",
              "UPDATE_BRANCH": "\tశాఖను నవీకరించండి",
              "BRANCH_ADDRESS": "\tశాఖ చిరునామా",
              "ADD_BRANCH_ADMIN": "బ్రాంచ్ అడ్మిన్‌ని జోడించండి",
              "EDIT_BRANCH_ADMIN": "బ్రాంచ్ అడ్మిన్‌ని సవరించండి",
              "BRANCH_INFORMATION": "శాఖ సమాచారం",
              "UPLOAD_BRANCH_LOGO": "బ్రాంచ్ లోగోను అప్‌లోడ్ చేయండి",
              "ARE_YOU_SURE_WANT_TO_DELETE":
                  "మీరు ఖచ్చితంగా ఈ శాఖను తొలగించాలనుకుంటున్నారా?"
            },
            "FE_COMMON": {
              "NO": "#",
              "ADD": "జోడించు",
              "NOO": "\tనం",
              "YES": "\tఅవును",
              "ZIP": "పిన్ కోడ్",
              "ltr": "\tltr",
              "rtl": "rtl",
              "CITY": "నగరం",
              "DATE": "\tతేదీ",
              "MODE": "మోడ్",
              "NAME": "పేరు",
              "NEXT": "తరువాత",
              "SAVE": "\tసేవ్ చేయండి",
              "SEND": "పంపండి",
              "USER": "\tవినియోగదారు",
              "CLASS": "\tతరగతి",
              "CLEAR": "\tక్లియర్",
              "EMAIL": "ఇమెయిల్",
              "STATE": "రాష్ట్రం",
              "TOTAL": "మొత్తం",
              "UP_TO": "\tవరకు",
              "USERS": "\tవినియోగదారులు",
              "ACTION": "\tచర్య",
              "CANCEL": "రద్దు చేయండి",
              "CREATE": "సృష్టించు",
              "EXPORT": "\tఎగుమతి చేయండి",
              "FILTER": "ఫిల్టర్ చేయండి",
              "FRIDAY": "శుక్రవారం",
              "GENDER": "లింగం",
              "IMPORT": "దిగుమతి",
              "MONDAY": "సోమవారం",
              "SEARCH": "వెతకండి",
              "SELECT": "\tఎంచుకోండి",
              "STEP_1": "\tదశ 1",
              "STEP_2": "దశ 2",
              "STEP_3": "దశ 3",
              "SUBMIT": "సమర్పించండి",
              "SUNDAY": "ఆదివారం",
              "ADDRESS": "\tచిరునామా",
              "CHECKED": "తనిఖీ చేయబడింది",
              "COUNTRY": "దేశం",
              "NO_DATA": "\tసమాచారం లేదు",
              "PAY_NOW": "\tఇప్పుడు చెల్లించండి",
              "PREVIEW": "\tప్రివ్యూ",
              "SECTION": "విభాగం",
              "TUESDAY": "మంగళవారం",
              "DOWNLOAD": "\tడౌన్‌లోడ్ చేయండి",
              "END_TIME": "\tముగింపు సమయం",
              "PASSOWRD": "పాస్వర్డ్",
              "PREVIOUS": "\tమునుపటి",
              "SATURDAY": "\tశనివారం",
              "THURSDAY": "గురువారం",
              "TIMEZONE": "సమయమండలం",
              "ADMIN_DOB": "అడ్మిన్ పుట్టిన తేదీ",
              "DIRECTION": "దిశ",
              "LAST_NAME": "\tచివరి పేరు",
              "LOAD_LESS": "తక్కువ లోడ్ చేయండి",
              "LOAD_MORE": "మరింత లోడ్ చేయండి",
              "SHOW_LESS": "\tతక్కువ చూపించు",
              "SHOW_MORE": "\tఇంకా చూపించు",
              "WEDNESDAY": "\tబుధవారం",
              "CREATED_AT": "వద్ద సృష్టించబడింది",
              "CREATED_BY": "సృష్టికర్త",
              "FIRST_NAME": "మొదటి పేరు",
              "SELECT_ALL": "\tఅన్ని ఎంచుకోండి",
              "START_DATE": "\tప్రారంబపు తేది",
              "START_TIME": "ప్రారంభ సమయం",
              "ADD_SECTION": "\tవిభాగాన్ని జోడించండి",
              "ATTACHEMENT": "\tఅటాచ్మెంట్",
              "DESCRIPTION": "\tవివరణణ",
              "DROP_SELECT": "\tఫైల్‌ను వదలండి లేదా ఎంచుకోండి",
              "MIDDLE_NAME": "మధ్య పేరు",
              "SEARCH_HERE": "\tఇక్కడ వెతకండి",
              "SELECT_CITY": "\tనగరాన్ని ఎంచుకోండి",
              "SELECT_DATE": "\tతేదీని ఎంచుకోండి",
              "UPLOAD_FILE": "\tఫైల్‌ని అప్‌లోడ్ చేయండి",
              "CREATED_DATE": "\tతేదీని సృష్టించండి",
              "EDIT_SECTION": "విభాగాన్ని సవరించండి",
              "PHONE_NUMBER": "\tఫోను నంబరు",
              "SECTION_NAME": "\tవిభాగం పేరు",
              "SELECT_STATE": "\tరాష్ట్రాన్ని ఎంచుకోండి",
              "VIEW_SECTION": "విభాగాన్ని వీక్షించండి",
              "MOBILE_NUMBER": "\tమొబైల్ నంబర్",
              "DELETE_SECTION": "\tవిభాగాన్ని తొలగించండి",
              "SELECT_COUNTRY": "\tవిభాగాన్ని తొలగించండి",
              "SELECT_SUBJECT": "సబ్జెక్ట్ ఎంచుకోండి",
              "TOGGLE_COLUMNS": "నిలువు వరుసలను టోగుల్ చేయండి",
              "BILLING_ADDRESS": "\tరశీదు చిరునామా",
              "MULTIPLE_SELECT": "\tబహుళ ఎంపిక",
              "SELECT_TIMEZONE": "\tసమయ మండలిని ఎంచుకోండి",
              "UNLIMITED_USERS": "\tఅపరిమిత వినియోగదారులు",
              "LABEL_START_DATE": "ప్రారంబపు తేది*",
              "QUICK_PAGE_LINKS": "\tత్వరిత పేజీ లింక్‌లు",
              "SEARCH_YOUR_PAGE": "మీ పేజీని శోధించండి",
              "LABEL_DESCRIPTION": "\tవివరణ*",
              "PERMENENT_ADDRESS": "శాశ్వత చిరునామా",
              "UNLIMITED_BRANCHES": "\tఅపరిమిత శాఖలు",
              "NO_TICKETS_AVAILABLE": "\tటిక్కెట్లు అందుబాటులో లేవు.!!",
              "SAMPLE_FILE_DOWNLOAD": "\tనమూనా ఫైల్ డౌన్‌లోడ్",
              "EMERGENCY_PHONE_NUMBER": "\tఅత్యవసర ఫోన్ నంబర్",
              "WHITE_SPACE_NOT_INCLUDE": "\tవైట్‌స్పేస్ చేర్చకూడదు.",
              "NO_CONVERSATIONS_SELECTED": "సంభాషణలు ఏవీ ఎంచుకోబడలేదు.",
              "ARE_YOU_SURE_WANT_DELETE_SECTION":
                  "మీరు ఖచ్చితంగా ఈ విభాగాన్ని తొలగించాలనుకుంటున్నారా?"
            },
            "FE_COURSE": {
              "LEVEL": "\tస్థాయి",
              "COURSE": "\tకోర్సు",
              "RATING": "రేటింగ్",
              "REVIEW": "\tసమీక్ష",
              "LESSONS": "\tసమీక్ష",
              "ADD_USER": "\tవినియోగదారుని జోడించండి",
              "CATEGORY": "వర్గం",
              "END_DATE": "ఆఖరి తేది",
              "NO_LESSON": "\tపాఠం అందుబాటులో లేదు",
              "RATE_THIS": "\tదీన్ని రేట్ చేయండి",
              "ADD_COURSE": "\tకోర్సును జోడించండి",
              "BASIC_INFO": "\tప్రాథమిక సమాచారం",
              "CREATED_AT": "వద్ద సృష్టించబడింది",
              "NO_SECTION": "\tవిభాగాలు ఏవీ అందుబాటులో లేవు",
              "VISIBILITY": "\tదృశ్యమానత",
              "COURSE_INFO": "\tకోర్సు సమాచారం",
              "COURSE_NAME": "\tకోర్సు పేరు*",
              "COURSE_TYPE": "\tకోర్సు రకం",
              "EDIT_COURSE": "\tకోర్సును సవరించండి",
              "ENROLLEMENT": "\tనమోదు",
              "LABEL_LEVEL": "\tస్థాయి*",
              "VIEW_COURSE": "\tవీక్షణ కోర్సు",
              "ADD_CATEGORY": "\tవర్గం జోడించండి",
              "ADD_MULTIPLE": "బహుళ జోడించండి",
              "COURSE_IMAGE": "కోర్సు చిత్రం",
              "START_LESSON": "\tపాఠాన్ని ప్రారంభించండి",
              "CATEGORY_NAME": "\tవర్గం పేరు*",
              "DELETE_COURSE": "\tకోర్సును తొలగించండి",
              "EDIT_CATEGORY": "\tవర్గాన్ని సవరించండి",
              "MANAGE_COURSE": "\tకోర్సును నిర్వహించండి",
              "VIEW_CATEGORY": "వర్గం చూడండి",
              "LABEL_CATEGORY": "\tవర్గం*",
              "LABEL_END_DATE": "ఆఖరి తేది*",
              "COURSE_OVERVIEW": "కోర్సు అవలోకనం",
              "DELETE_CATEGORY": "\tవర్గాన్ని తొలగించండి",
              "PARENT_CATEGORY": "\tమాతృ వర్గం",
              "COURSE_FULL_NAME": "\tకోర్సు పూర్తి పేరు",
              "COURSE_VISIBILITY": "కోర్సు దృశ్యమానత",
              "SHORT_DESCRIPTION": "చిన్న వివరణ",
              "DETAIL_DESCRIPTION": "\tవివరాల వివరణ",
              "COURSE_OVERVIEW_URL": "\tకోర్సు స్థూలదృష్టి URL",
              "MINIMUM_REQUIREMENT": "\tకనీస అవసరం",
              "COURSE_OVERVIEW_LIST": "\tకోర్సు అవలోకనం",
              "PARENT_CATEGORY_NAME": "\tమాతృ వర్గం పేరు",
              "DELETE_COURSE_WARNING":
                  "\tమీరు ఖచ్చితంగా ఈ కోర్సును తొలగించాలనుకుంటున్నారా?",
              "UPLOAD_CATEGORY_IMAGE": "\tవర్గం చిత్రాన్ని అప్‌లోడ్ చేయండి",
              "NO_COURSES_ARE_AVAILABLE": "\tకోర్సులు అందుబాటులో లేవు.",
              "LABEL_MINIMUM_REQUIREMENT": "కనీస అవసరం",
              "ARE_YOU_SURE_DELETE_CATEGORY":
                  "\tమీరు ఖచ్చితంగా ఈ వర్గాన్ని తొలగించాలనుకుంటున్నారా?"
            },
            "FE_STATUS": {
              "OPEN": "\tతెరవండి",
              "ACTIVE": "\tచురుకుగా",
              "CLOSED": "\tమూసివేయబడింది",
              "FINISH": "ముగించు",
              "NEWEST": "\tసరికొత్త",
              "OLDEST": "\tపురాతన",
              "STATUS": "\tస్థితి",
              "PENDING": "పెండింగ్‌లో ఉంది",
              "RESOLVED": "\tపరిష్కరించబడింది",
              "COMPLETED": "\tపూర్తయింది",
              "IN_ACTIVE": "\tక్రియారహితం",
              "IN_PROGRESS": "\tపురోగతిలో ఉంది",
              "LABEL_STATUS": "స్థితి*",
              "IN_ACTIVE_SMALL": "\tనిష్క్రియ"
            },
            "FE_TICKET": {
              "INBOX": "\tఇన్బాక్స్",
              "TICKET": "\tటిక్కెట్టు",
              "CREATED": "\tసృష్టించబడింది",
              "REGARDS": "\tగౌరవంతో",
              "ALL_TICKET": "\tఅన్ని టిక్కెట్లు",
              "ISSUE_TYPE": "సమస్య రకం",
              "CREATE_TICKE": "\tటికెట్ సృష్టించండి",
              "CREATE_TICKET": "టికెట్ సృష్టించండి"
            },
            "LIBRARIAN": {
              "NOT_FOUND": "లైబ్రేరియన్ దొరకలేదు",
              "EXCEL_NOT_FOUND": "లైబ్రేరియన్ ఎక్సెల్ కనుగొనబడలేదు",
              "GET_SUCCESSFULLY": "\tలైబ్రేరియన్ విజయవంతంగా పొందండి.",
              "IMPORT_SUCESSFULLY":
                  "\tలైబ్రేరియన్ విజయవంతంగా దిగుమతి చేయబడింది.",
              "CREATED_SUCCESSFULLY": "లైబ్రేరియన్ విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY":
                  "\tలైబ్రేరియన్ విజయవంతంగా తొలగించబడ్డారు.",
              "UPDATED_SUCCESSFULLY":
                  "\tలైబ్రేరియన్ విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY":
                  "\tలైబ్రేరియన్ జాబితా విజయవంతంగా పొందింది.",
              "EXCEL_DEPARTMENT_ISSUE": "అందించిన శాఖ ఉనికిలో లేదు",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "ఎక్సెల్ షీట్‌లో లైబ్రేరియన్ ఇప్పటికే ఉన్నారు"
            },
            "TIMESHEET": {
              "TIMESHEET_NOT_FOUND": "టైమ్‌షీట్ కనుగొనబడలేదు.",
              "CREATED_SUCCESSFULLY": "టైమ్‌షీట్ విజయవంతంగా సృష్టించబడింది.",
              "GET_TIMESHHET_SUCCESS": "\tటైమ్‌షీట్ జాబితా విజయవంతంగా పొందండి.",
              "EDIT_TIMESHEET_SUCCESS": "\tటైమ్‌షీట్‌ని విజయవంతంగా సవరించండి.",
              "DELETE_TIMESHEET_SUCCESS": "టైమ్‌షీట్‌ను విజయవంతంగా తొలగించండి."
            },
            "ASSET_TYPE": {
              "NOT_EXIST": "ఆస్తి రకం ఉనికిలో లేదు.",
              "NAME_EXIST": "\tఆస్తి రకం పేరు ఇప్పటికే ఉంది.",
              "GET_LISTING": "\tఅసెట్ రకం వివరాలను విజయవంతంగా పొందండి.",
              "EDIT_SUCCESSFULLY": "ఆస్తి రకాన్ని విజయవంతంగా సవరించండి.",
              "CREATED_SUCCESSFULLY": "\tఆస్తి రకం విజయవంతంగా సృష్టించబడింది."
            },
            "ATTACHMENT": {"IMAGE_UPLOAD_ERROR": "చిత్రం అప్‌లోడ్ లోపం."},
            "ATTENDANCE": {
              "GET_ALL": "హాజరు జాబితా విజయవంతంగా..",
              "NOT_EXIST": "\tహాజరు లేదు.",
              "NOT_FOUND": "హాజరు దొరకలేదు.",
              "GET_DETAILS": "\tహాజరు వివరాలు విజయవంతంగా వచ్చాయి.\t",
              "ALREADY_EXIST": "హాజరు ఇప్పటికే ఉంది.",
              "CREATED_SUCCESSFULLY": "హాజరు విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY": "హాజరు విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY": "హాజరు విజయవంతంగా నవీకరించబడింది."
            },
            "BOOK_ISSUE": {
              "LOST": "పుస్తకం పోయినట్లు గుర్తు పెట్టబడింది.",
              "DAMAGED":
                  "\tతిరిగి వచ్చిన పుస్తకం పాడైపోయినట్లు నివేదించబడింది.",
              "REJECTED": "\tఅభ్యర్థించిన పుస్తకం తిరస్కరించబడింది.",
              "NOT_FOUND": "\tపుస్తక సమస్య కనుగొనబడలేదు",
              "NOT_DELETED":
                  "\tఇతర మాడ్యూల్స్‌పై ఆధారపడటం వలన పుస్తకం సమస్య తొలగించబడలేదు",
              "SOME_DELETED": "\tకొంత పుస్తకం తొలగించబడింది",
              "ALREADY_EXIST": "\tపుస్తక సమస్య ఇప్పటికే ఉంది",
              "EXCEL_NOT_FOUND": "\tపుస్తక సమస్య Excel కనుగొనబడలేదు",
              "PENDING_CREATED":
                  "\tపుస్తక సమస్య పెండింగ్‌లో ఉన్న అభ్యర్థన సృష్టించబడింది",
              "GET_SUCCESSFULLY": "\tపుస్తక సంచిక విజయవంతంగా జరుగుతుంది.",
              "AlREADY_REQUESTED": "పుస్తకం ఇప్పటికే విడుదలైంది",
              "QUANTITY_FINISHED":
                  "\tపుస్తకాన్ని జారీ చేయడానికి స్టాక్‌లో తగినంత పుస్తక కాపీలు లేవు.",
              "NAME_ALREADY_EXIST":
                  "పుస్తక సంచిక పేరు ఇప్పటికే ఉంది, దయచేసి మరొక పుస్తక సంచిక పేరుతో ప్రయత్నించండి",
              "CREATED_SUCCESSFULLY":
                  "\tపుస్తక సంచిక విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY":
                  "\tపుస్తకం సమస్య విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY":
                  "\tపుస్తక సమస్య విజయవంతంగా నవీకరించబడింది.",
              "APPROVED_SUCCESSFULLY": "పుస్తకం విజయవంతంగా ఆమోదించబడింది.",
              "GET_LIST_SUCCESSFULLY":
                  "\tపుస్తక సంచిక జాబితా విజయవంతంగా పొందింది.",
              "LIBRARY_CARD_REQUIRED":
                  "\tపుస్తకాన్ని జారీ చేయడానికి లైబ్రరీ కార్డ్ అవసరం.",
              "RETURNED_SUCCESSFULLY": "పుస్తకం విజయవంతంగా తిరిగి వచ్చింది.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "పుస్తక సమస్య ఎక్సెల్ యొక్క json ఫైల్ విజయవంతంగా సృష్టించబడింది"
            },
            "CATEGORIES": {
              "NOT_FOUND": "\tవర్గాలు కనుగొనబడలేదు",
              "NOT_DELETED": "వర్గం తొలగించబడని సంబంధం ఉంది.",
              "SOME_DELETED":
                  "కొన్ని రికార్డ్‌లు విజయవంతంగా తొలగించబడ్డాయి, మరికొన్ని తొలగించబడలేదు.",
              "ALREADY_EXIST": "\tవర్గం ఇప్పటికే ఉంది",
              "EXCEL_NOT_FOUND": "\tవర్గం Excel కనుగొనబడలేదు",
              "GET_SUCCESSFULLY": "వర్గాలు విజయవంతంగా అందుతాయి.",
              "NAME_ALREADY_EXIST":
                  "వర్గం పేరు ఇప్పటికే ఉంది, దయచేసి మరొక వర్గం పేరుతో ప్రయత్నించండి",
              "CREATED_SUCCESSFULLY": "వర్గాలు విజయవంతంగా సృష్టించబడ్డాయి.",
              "DELETED_SUCCESSFULLY": "వర్గాలు విజయవంతంగా తొలగించబడ్డాయి.",
              "UPDATED_SUCCESSFULLY": "వర్గాలు విజయవంతంగా నవీకరించబడ్డాయి.",
              "GET_LIST_SUCCESSFULLY": "వర్గాల జాబితా విజయవంతంగా అందుతుంది.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "ఎక్సెల్ యొక్క json ఫైల్ విజయవంతంగా సృష్టించబడిన వర్గాలు"
            },
            "DEPARTMENT": {
              "NOT_FOUND": "శాఖ దొరకలేదు",
              "ALREADY_EXIST":
                  "\tవిభాగం పేరు ఇప్పటికే ఉంది, దయచేసి మరొక విభాగం పేరుతో ప్రయత్నించండి",
              "GET_DEPARTMENT": "డిపార్ట్‌మెంట్ వివరాలు విజయవంతమయ్యాయి.",
              "GET_ALL_DEPARTMENT": "డిపార్ట్‌మెంట్ జాబితా విజయవంతమైంది..",
              "CREATED_SUCCESSFULLY": "\tవిభాగం విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY": "\tవిభాగం విజయవంతంగా తొలగించబడింది.",
              "DEPARTMENT_NOT_EXIST": "\tవిభాగం ఉనికిలో లేదు.",
              "UPDATED_SUCCESSFULLY": "\tవిభాగం విజయవంతంగా నవీకరించబడింది.",
              "ALREADY_EXIST_WITH_CODE":
                  "డిపార్ట్‌మెంట్ కోడ్ ఇప్పటికే ఉంది, దయచేసి మరొక డిపార్ట్‌మెంట్ కోడ్‌తో ప్రయత్నించండి",
              "DEPARTMENT_ALREADY_EXIST": "విభాగం ఇప్పటికే ఉంది."
            },
            "ISSUE_TYPE": {
              "CREATED": "సమస్య రకం విజయవంతంగా సృష్టించబడింది.",
              "FETCHED": "సమస్య రకాలు విజయవంతంగా పొందబడ్డాయి.",
              "NOT_FOUND": "సమస్య రకాలు కనుగొనబడలేదు.",
              "NOT_DELETED": "సమస్య రకం తొలగించబడని సంబంధం ఉంది.",
              "SOME_DELETED":
                  "కొన్ని రికార్డ్‌లు విజయవంతంగా తొలగించబడ్డాయి, మరికొన్ని తొలగించబడలేదు.",
              "ALREADY_EXIST": "\tసమస్య రకం ఇప్పటికే ఉంది.",
              "DELETED_SUCCESSFULLY": "\tసమస్య రకం విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY": "సమస్య రకం నవీకరణ విజయవంతంగా."
            },
            "LIVE_CLASS": {
              "GET_ALL": "ప్రత్యక్ష తరగతి జాబితా విజయవంతంగా పొందండి..",
              "NOT_EXIST": "ప్రత్యక్ష తరగతి ఉనికిలో లేదు.",
              "NOT_FOUND": "ప్రత్యక్ష తరగతి కనుగొనబడలేదు.",
              "GET_DETAILS":
                  "ప్రత్యక్ష తరగతి వివరాలు విజయవంతంగా పొందబడ్డాయి.\t",
              "ALREADY_EXIST": "\tప్రత్యక్ష తరగతి ఇప్పటికే ఉంది.",
              "ALREADY_EXIST_TIME": "ప్రస్తుతానికి లైవ్ క్లాస్ ఇప్పటికే ఉంది.",
              "TOPIC_ALREADY_EXIST":
                  "లైవ్ టాపిక్ ఇప్పటికే ఉంది, దయచేసి మరొక లైవ్ టాపిక్‌తో ప్రయత్నించండి",
              "CREATED_SUCCESSFULLY":
                  "\tప్రత్యక్ష తరగతి విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY":
                  "ప్రత్యక్ష తరగతి విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY":
                  "\tప్రత్యక్ష తరగతి విజయవంతంగా నవీకరించబడింది.",
              "ZOOM_CREDENTIALS_NOT_ADDED":
                  "\tజూమ్ ఆధారాలు జోడించబడలేదు, దయచేసి ముందుగా జోడించండి."
            },
            "PERMISSION": {
              "ADDED": "అనుమతి విజయవంతంగా జోడించబడింది.",
              "FETCH": "అనుమతి విజయవంతంగా పొందబడింది",
              "EDITED": "\tఅనుమతి విజయవంతంగా సవరించబడింది.",
              "DELETED": "అనుమతి విజయవంతంగా తొలగించబడింది.",
              "UPDATED": "\tఅనుమతి విజయవంతంగా నవీకరించబడింది.",
              "NOT_FOUND": "అనుమతి దొరకలేదు",
              "ALREADY_EXIST": "\tఅనుమతి ఇప్పటికే ఉంది."
            },
            "COURSE_USER": {
              "NOT_FOUND": "\tకోర్సు వినియోగదారు కనుగొనబడలేదు",
              "NOT_DELETED":
                  "\tఇతర మాడ్యూళ్లపై ఆధారపడటం వలన కోర్సు వినియోగదారు తొలగించబడలేదు",
              "SOME_DELETED": "కొంతమంది కోర్సు వినియోగదారు తొలగించబడ్డారు",
              "GET_SUCCESSFULLY": "కోర్సు వినియోగదారు విజయవంతంగా పొందండి",
              "COURSE_USER_ASSIGNED":
                  "\tవినియోగదారు విజయవంతంగా కోర్సుకు కేటాయించబడ్డారు",
              "CREATED_SUCCESSFULLY":
                  "కోర్సు వినియోగదారు విజయవంతంగా సృష్టించబడ్డారు",
              "DELETED_SUCCESSFULLY":
                  "\tకోర్సు వినియోగదారు విజయవంతంగా తొలగించబడ్డారు",
              "UPDATED_SUCCESSFULLY":
                  "కోర్సు వినియోగదారు విజయవంతంగా నవీకరించబడ్డారు",
              "GET_LIST_SUCCESSFULLY":
                  "కోర్సు వినియోగదారు జాబితా విజయవంతంగా పొందండి",
              "USER_ASSIGNED_ALREADY":
                  "వినియోగదారులు ఇప్పటికే ఈ కోర్సుకు కేటాయించబడ్డారు",
              "COURSE_USER_GET_SUCCESSFULLY":
                  "\tకోర్సు వినియోగదారు విజయవంతంగా పొందండి",
              "UPDATED_COURSE_USER_ASSIGNED":
                  "\tకోర్సు వినియోగదారు విజయవంతంగా పొందండి"
            },
            "FE_REQUIRED": {
              "DAY": "\tరోజు అవసరం*.",
              "MAX": "\tమించకూడదు",
              "BODY": "\tశరీరం అవసరం*.",
              "CITY": "నగరం అవసరం*.",
              "CODE": "కోడ్ అవసరం*.",
              "NAME": "\tపేరు అవసరం*.",
              "ROOM": "\tగది అవసరం*.",
              "SLUG": "\tస్లగ్ అవసరం*.",
              "TYPE": "\tరకం అవసరం*.",
              "ZERO":
                  "ఇన్‌పుట్ 0 కాకూడదు. దయచేసి సున్నా కాని విలువను నమోదు చేయండి.",
              "CLASS": "తరగతి అవసరం*.",
              "EMAIL": "SMTP ఇమెయిల్ అవసరం*.",
              "LEVEL": "\tస్థాయి అవసరం*.",
              "PRICE":
                  "\tదయచేసి చెల్లుబాటు అయ్యే ధరను నమోదు చేయండి. ఇది ఒక సంఖ్య అయి ఉండాలి (ఉదా, 10 లేదా 10.99)",
              "STATE": "రాష్ట్రం అవసరం*.",
              "TITLE": "\tశీర్షిక అవసరం*.",
              "VALID": "చెల్లుబాటు అయ్యేదాన్ని నమోదు చేయండి",
              "GENDER": "\tలింగం అవసరం*.",
              "RATING": "\tరేటింగ్ అవసరం*.",
              "STATUS": "స్థితి అవసరం*.",
              "COUNTRY": "దేశం అవసరం*.",
              "LETTERS":
                  "అక్షరాలు మాత్రమే ఉండాలి. సంఖ్యలు మరియు ప్రత్యేక అక్షరాలు అనుమతించబడవు",
              "SECTION": "\tదయచేసి విభాగాన్ని ఎంచుకోండి*.",
              "SUBJECT": "దయచేసి సబ్జెక్ట్*ని ఎంచుకోండి.",
              "TEACHER": "ఉపాధ్యాయుడు అవసరం*.",
              "BIO_DATA": "\tబయో డేటా అవసరం*.",
              "CAPACITY": "\tసామర్థ్యం అవసరం*.",
              "CATEGORY": "\tవర్గం పేరు అవసరం*.",
              "END_DATE": "\tదయచేసి ముగింపు తేదీని ఎంచుకోండి*.",
              "FACILITY": "సౌకర్యం అవసరం*.",
              "LOCATION": "\tస్థానం అవసరం*.",
              "MINI_REQ": "కనీస ఆవశ్యకత అవసరం*.",
              "NEGATIVE":
                  "ప్రతికూల సంఖ్య కాకూడదు. దయచేసి ప్రతికూల విలువలు లేకుండా చెల్లుబాటు అయ్యే స్ట్రింగ్‌ను నమోదు చేయండి.",
              "PASSWORD":
                  "ప్రతికూల సంఖ్య కాకూడదు. దయచేసి ప్రతికూల విలువలు లేకుండా చెల్లుబాటు అయ్యే స్ట్రింగ్‌ను నమోదు చేయండి.",
              "ROOM_MAX":
                  "\tగది సంఖ్య తప్పనిసరిగా 5 అంకెల కంటే తక్కువ సానుకూల సంఖ్యా విలువను కలిగి ఉండాలి",
              "SEMESTER": "\tసెమిస్టర్ అవసరం*.",
              "TIMEZONE": "\tటైమ్‌జోన్ అవసరం*.",
              "TYPE_MAX": "\tరకం 25 అక్షరాలను మించకూడదు.",
              "USERNAME": "SMTP వినియోగదారు పేరు అవసరం*.",
              "LAST_NAME": "\tఇంటిపేరు అవసరం*.",
              "NO_NUMBER": "\tసంఖ్యలను కలిగి ఉండకూడదు.*",
              "SMTP_HOST": "\tSMTP హోస్ట్ అవసరం*.",
              "SMTP_PORT": "\tSMTP పోర్ట్ అవసరం*.",
              "BOOK_TITLE": "పుస్తకం శీర్షిక అవసరం*.",
              "CLASS_NAME": "\tతరగతి పేరు అవసరం*.",
              "DEPARTMENT": "\tవిభాగం అవసరం*.",
              "DETAIL_REQ": "వివరణాత్మక వివరణ అవసరం*.",
              "FIRST_NAME": "మొదటి పేరు అవసరం*.",
              "INPUT_ZERO":
                  "ఇన్‌పుట్ 0 కాకూడదు. దయచేసి సున్నా కాని విలువను నమోదు చేయండి.",
              "MORE_SPECE":
                  "\tఅక్షరాల మధ్య ఒకటి కంటే ఎక్కువ ఖాళీలు అనుమతించబడవు.",
              "RATING_MAX": "సమీక్ష 450 అక్షరాలకు మించకూడదు.",
              "START_DATE": "\tదయచేసి ప్రారంభ తేదీని ఎంచుకోండి*.",
              "BLOOD_GROUP": "\tబ్లడ్ గ్రూప్ అవసరం*.",
              "BOOK_NUMBER": "బుక్ నంబర్ అవసరం*.",
              "DESCRIPTION": "వివరణ అవసరం*.",
              "IS_Required": "అవసరం*.",
              "MIDDLE_NAME": "\tమధ్య పేరు అవసరం*.",
              "NATIONALITY": "జాతీయత అవసరం*.",
              "ROOM_NUMBER": "\tగది సంఖ్య అవసరం*.",
              "SELECT_DATE": "దయచేసి తేదీని ఎంచుకోండి*.",
              "FACILITY_MAX": "\tసౌకర్యం 100 అక్షరాలకు మించకూడదు.",
              "INPUT_COMMON":
                  "ఇన్‌పుట్ ప్రతికూల సంఖ్యగా ఉండకూడదు. దయచేసి ప్రతికూల విలువలు లేకుండా చెల్లుబాటు అయ్యే స్ట్రింగ్‌ను నమోదు చేయండి.",
              "LOCATION_MAX": "\tస్థానం 25 అక్షరాలను మించకూడదు.",
              "PASSWORD_ACC":
                  "పాస్‌వర్డ్ తప్పనిసరిగా 8 లేదా అంతకంటే ఎక్కువ అక్షరాల పొడవు ఉండాలి",
              "PASSWORD_MAX":
                  "\tపాస్‌వర్డ్ తప్పనిసరిగా గరిష్టంగా 32 అక్షరాల పొడవు ఉండాలి",
              "PHONE_NUMBER": "\tఫోన్ నంబర్ అవసరం*.",
              "ROOM_NUMERIC":
                  "\tగది సంఖ్య సంఖ్యా విలువలను మాత్రమే కలిగి ఉండాలి.",
              "SECTION_NAME": "\tవిభాగం పేరు అవసరం*.",
              "SELECT_CLASS": "దయచేసి తరగతిని ఎంచుకోండి*.",
              "SEMESTER_VAL": "సెమిస్టర్ 12 అక్షరాలకు మించకూడదు.",
              "SUBJECT_CODE": "\tసబ్జెక్ట్ కోడ్ అవసరం*.",
              "SUBJECT_NAME": "విషయం పేరు అవసరం*.",
              "BOOK_CATEGORY": "\tపుస్తక వర్గం అవసరం.*",
              "INVALID_EMAIL": "చెల్లని ఇమెయిల్.",
              "BOOK_TITLE_MAX":
                  "\tపుస్తకం శీర్షిక 25 అక్షరాల కంటే ఎక్కువ ఉండకూడదు.*",
              "DEPARTMENT_MAX": "విభాగం పేరు 25 అక్షరాలకు మించకూడదు.",
              "SELECT_TEACHER": "దయచేసి గురువును ఎంపిక చేసుకోండి*.",
              "TOTAL_QUANTITY": "మొత్తం పరిమాణం అవసరం*.",
              "ZIP_VALIDATION": "జిప్ కోడ్ తప్పనిసరిగా అంకెల సంఖ్య అయి ఉండాలి",
              "BOOK_NUMBER_VAL":
                  "\tబుక్ నంబర్ తప్పనిసరిగా నెగిటివ్ కాని నంబర్ అయి ఉండాలి*.",
              "DEPARTMENT_NAME": "\tవిభాగం పేరు అవసరం*.",
              "IMPORT_VALIDATE":
                  "\tXLSX ఫైల్‌లు మాత్రమే అనుమతించబడతాయి. దయచేసి చెల్లుబాటు అయ్యే ఫైల్‌లను అప్‌లోడ్ చేయండి.",
              "UPLOAD_SYLLABUS": "\tదయచేసి సిలబస్‌ని అప్‌లోడ్ చేయండి*.",
              "BOOK_COMBINATION": "\tదయచేసి సిలబస్‌ని అప్‌లోడ్ చేయండి*.",
              "BOOK_QUANTIY_VAL":
                  "\tమొత్తం పరిమాణం తప్పనిసరిగా పూర్ణాంకం అయి ఉండాలి.",
              "EMAIL_VALIDATION": "ఇమెయిల్ అవసరం*.",
              "SUBJECT_CODE_VAL": "సబ్జెక్ట్ కోడ్ 5 అక్షరాలను మించకూడదు.",
              "SUBJECT_NAME_MAX": "\tవిషయం పేరు 25 అక్షరాలకు మించకూడదు.",
              "BOOK_CATEGORY_MAX":
                  "పుస్తక వర్గం 255 అక్షరాల కంటే ఎక్కువ ఉండకూడదు.*",
              "CAPACITY_NEGATIVE":
                  "\tకెపాసిటీ తప్పనిసరిగా ధనాత్మక సంఖ్య అయి ఉండాలి.",
              "HYPHEN_UNDERSCORE":
                  "\tఒకే హైఫన్ లేదా అండర్ స్కోర్‌తో ముగించకూడదు.",
              "SELECT_ISSUE_DATE": "\tజారీ తేదీని ఎంచుకోండి*.",
              "SPECIAL_CHARACTER":
                  "\tప్రత్యేక అక్షరాన్ని కలిగి ఉండకూడదు మరియు ప్రారంభించకూడదు లేదా ముగించకూడదు మరియు ప్రతికూల మరియు దశాంశ సంఖ్యగా ఉండకూడదు.",
              "MATCH_NEW_PASSWORD":
                  "పాస్‌వర్డ్‌లు సరిపోలడం లేదు. దయచేసి పాస్‌వర్డ్‌లు సరిగ్గా సరిపోలినట్లు నిర్ధారించుకోండి.",
              "SECTION_VALIDATION": "విభాగం అవసరం*.",
              "SELECT_RETURN_DATE": "\tతిరిగి వచ్చే తేదీని ఎంచుకోండి*.",
              "SUBJECT_VALIDATION": "\tసబ్జెక్ట్ అవసరం*.",
              "ZIP_MAX_VALIDATION":
                  "\tపిన్ కోడ్ తప్పనిసరిగా గరిష్టంగా 10 అంకెలు ఉండాలి.",
              "ZIP_MIN_VALIDATION":
                  "పిన్ కోడ్ తప్పనిసరిగా కనీసం 6 అంకెలు ఉండాలి.*",
              "CATEGORY_VALIDATION": "\tవర్గం అవసరం.*",
              "DEPARTMENT_NAME_VAL":
                  "విభాగం పేరు తప్పనిసరిగా అక్షరాలు మరియు సంఖ్యలను మాత్రమే కలిగి ఉండాలి",
              "LIBRARY_CARD_NUMBER": "\tలైబ్రరీ కార్డ్ నంబర్ అవసరం*.",
              "PASSOWRD_LOWER_CASE": "\tకనీసం ఒక చిన్న అక్షరం",
              "PASSOWRD_ONE_NUMBER": "\tకనీసం ఒక సంఖ్య",
              "PASSOWRD_UPPER_CASE": "\tకనీసం ఒక పెద్ద అక్షరం",
              "PASSWORD_VALIDATION": "\tపాస్‌వర్డ్ అవసరం*.",
              "RELATION_VALIDATION": "సంబంధం అవసరం*.",
              "SELECT_DATE_OF_BIRTH": "దయచేసి పుట్టిన తేదీని ఎంచుకోండి.",
              "STREET_ADDRESS_LINE_1": "\tవీధి చిరునామా లైన్ 1 అవసరం*.",
              "STREET_ADDRESS_LINE_2": "వీధి చిరునామా లైన్ 2 అవసరం*.",
              "SUBJECT_NAME_NEGATIVE": "\tవిషయం పేరు ప్రతికూలంగా ఉండకూడదు",
              "SUBJECT_NAME_REQUIRED": "\tసబ్జెక్ట్ అవసరం*.",
              "ZIP_SIX_TEN_VALIDATION":
                  "'జిప్ కోడ్ తప్పనిసరిగా అంకె అయి ఉండాలి మరియు దానికి 6-10 అక్షరాలు ఉండాలి.",
              "NEW_PASSWORD_VALIDATION":
                  "\tకొత్త పాస్‌వర్డ్ పాత పాస్‌వర్డ్‌తో సమానంగా ఉండకూడదు",
              "PASSWORD_MAX_VALIDATION":
                  "పాస్‌వర్డ్ తప్పనిసరిగా 8-12 అక్షరాలు ఉండాలి, కనీసం ఒక చిన్న అక్షరం, ఒక పెద్ద అక్షరం, ఒక సంఖ్య మరియు ఒక ప్రత్యేక అక్షరం (@\$!%*?&) ఉండాలి.",
              "SUBJECT_NAME_COMBINATION":
                  "విషయం పేరు తప్పనిసరిగా అక్షరాలు మరియు సంఖ్యలను మాత్రమే కలిగి ఉండాలి.",
              "SUBJEST_SEMESTER_NEGATIVE":
                  "సెమిస్టర్ తప్పనిసరిగా నాన్-నెగటివ్* అయి ఉండాలి.",
              "LAST_NAME_NUMBER_VALIDATION":
                  "\tచివరి పేరులో సంఖ్యలు ఉండకూడదు*.",
              "FIRST_NAME_NUMBER_VALIDATION":
                  "మొదటి పేరు సంఖ్యలను కలిగి ఉండకూడదు*.",
              "SUBJEST_SEMESTER_COMBINATION":
                  "సెమిస్టర్ తప్పనిసరిగా అక్షరాలు మరియు సంఖ్యలను మాత్రమే కలిగి ఉండాలి.",
              "MIDDLE_NAME_NUMBER_VALIDATION":
                  "\tమధ్య పేరు సంఖ్యలను కలిగి ఉండకూడదు*."
            },
            "FE_SYLLABUS": {
              "SYLLABUS": "\tసిలబస్",
              "ADD_SYLLABUS": "సిలబస్ జోడించండి",
              "EDIT_SYLLABUS": "\tసిలబస్‌ని సవరించండి",
              "SYLLABUS_LIST": "\tసిలబస్ జాబితా",
              "DELETE_SYLLABUS": "\tసిలబస్‌ని తొలగించండి",
              "UPLOAD_SYLLABUS": "\tసిలబస్‌ని అప్‌లోడ్ చేయండి",
              "ARE_YOU_SURE_WANT_TO_DELETE_THIS_SYLLABUS":
                  "మీరు ఖచ్చితంగా ఈ సిలబస్‌ని తొలగించాలనుకుంటున్నారా?"
            },
            "TASK_STATUS": {
              "TASK_STATUS_EXISTS": "\tపని ఇప్పటికే ఉంది.",
              "GET_ALL_TASK_SUCCESS": "\tఅన్ని పనులను విజయవంతంగా పొందండి.",
              "TASK_STATUS_NOT_FOUND": "\tవిధి స్థితి కనుగొనబడలేదు.",
              "ADD_TASK_STATUS_SUCCESS":
                  "టాస్క్ స్థితి విజయవంతంగా జోడించబడింది.",
              "TASK_STATUS_NOT_DELETED":
                  "\tటాస్క్ స్థితి లేదు/తొలగించలేకపోయింది.",
              "TASK_STATUS_NOT_UPDATED":
                  "\tటాస్క్ స్టేటస్ అప్‌డేట్ కాలేదు/సాధ్యపడలేదు",
              "FETCH_TASK_STATUS_SUCCESS":
                  "టాస్క్ స్థితి విజయవంతంగా పొందబడింది.",
              "DELETE_TASK_STATUS_SUCCESS":
                  "\tటాస్క్ స్థితి విజయవంతంగా తొలగించబడింది.",
              "UPDATE_TASK_STATUS_SUCCESS":
                  "\tటాస్క్ స్థితి విజయవంతంగా నవీకరించబడింది."
            },
            "FE_DASHBOARD": {"DASHBOARD": "\tడాష్బోర్డ్"},
            "FE_LIBRARIAN": {
              "LIBRARIAN": "\tలైబ్రేరియన్",
              "ADD_LIBRARIAN": "\tలైబ్రేరియన్‌ని జోడించండి",
              "EDIT_LIBRARIAN": "\tలైబ్రేరియన్‌ని సవరించండి",
              "VIEW_LIBRARIAN": "\tలైబ్రేరియన్ చూడండి",
              "DELETE_LIBRARIAN": "లైబ్రేరియన్‌ను తొలగించండి",
              "ARE_YOU_DELETE_LIBRARIAN":
                  "మీరు ఖచ్చితంగా ఈ లైబ్రేరియన్‌ని తొలగించాలనుకుంటున్నారా ?."
            },
            "LIBRARY_CARD": {
              "NOT_FOUND": "\tలైబ్రరీ కార్డ్ కనుగొనబడలేదు",
              "ALREADY_EXIST": "లైబ్రరీ కార్డ్ ఇప్పటికే ఉంది",
              "CREATED_SUCCESSFULLY":
                  "\tలైబ్రరీ కార్డ్ విజయవంతంగా సృష్టించబడింది.",
              "UPDATED_SUCCESSFULLY":
                  "\tలైబ్రరీ కార్డ్ విజయవంతంగా నవీకరించబడింది.",
              "CARD_NUMBER_ALREADY_EXIST":
                  "\tలైబ్రరీ కార్డ్ నంబర్ ఇప్పటికే ఉంది లేదా వినియోగదారు ఇప్పటికే లైబ్రరీ కార్డ్‌ని కలిగి ఉన్నారు"
            },
            "ORGANIZATION": {
              "NOT_FOUND": "\tసంస్థ కనుగొనబడలేదు",
              "NOT_DELETED": "సంస్థ తొలగించబడని సంబంధం ఉంది.\t",
              "SOME_DELETED":
                  "కొన్ని రికార్డ్‌లు విజయవంతంగా తొలగించబడ్డాయి, మరికొన్ని తొలగించబడలేదు.",
              "ALREADY_EXIST":
                  "\tసంస్థ పేరు ఇప్పటికే ఉంది, దయచేసి మరొక సంస్థ పేరుతో ప్రయత్నించండి",
              "GET_SUCCESSFULLY": "\tసంస్థ విజయవంతం అవుతుంది.",
              "CREATED_SUCCESSFULLY": "\tసంస్థ విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY": "సంస్థ విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY": "\tసంస్థ విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY": "\tసంస్థ జాబితా విజయవంతమైంది."
            },
            "SUBSCRIPTION": {
              "SUBSCRIPTION_SUCCESSFULLY":
                  "\tసబ్‌స్క్రిప్షన్ వివరాలు విజయవంతంగా అందుతాయి."
            },
            "BOOK_CATEGORY": {
              "NOT_DELETED": "పుస్తక వర్గం తొలగించబడని సంబంధం ఉంది.",
              "SOME_DELETED":
                  "\tకొన్ని రికార్డ్‌లు విజయవంతంగా తొలగించబడ్డాయి, మరికొన్ని తొలగించబడలేదు.",
              "ALREADY_EXIST": "\tపుస్తక వర్గం ఇప్పటికే ఉంది",
              "EXCEL_NOT_FOUND": "పుస్తక వర్గం Excel కనుగొనబడలేదు",
              "GET_SUCCESSFULLY": "\tబుక్ కేటగిరీ విజయవంతంగా పొందండి.",
              "NAME_ALREADY_EXIST":
                  "\tపుస్తక వర్గం పేరు ఇప్పటికే ఉంది, దయచేసి మరొక పుస్తక వర్గం పేరుతో ప్రయత్నించండి",
              "CREATED_SUCCESSFULLY":
                  "\tపుస్తక వర్గం విజయవంతంగా సృష్టించబడింది",
              "DELETED_SUCCESSFULLY":
                  "\tపుస్తక వర్గం విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY":
                  "\tపుస్తక వర్గం విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY":
                  "బుక్ కేటగిరీ జాబితా విజయవంతంగా పొందండి.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "బుక్ కేటగిరీ ఎక్సెల్ యొక్క json ఫైల్ విజయవంతంగా సృష్టించబడింది"
            },
            "CR_VALIDATION": {
              "VALID_STATUS": "దయచేసి చెల్లుబాటు అయ్యే స్థితిని నమోదు చేయండి",
              "INVALID_CR_ID": "దయచేసి చెల్లుబాటు అయ్యే CR IDని నమోదు చేయండి",
              "CR_DESC_REQUIRED": "అభ్యర్థన వివరణను మార్చడం అవసరం",
              "CR_NAME_REQUIRED": "అభ్యర్థన పేరు మార్చడం అవసరం.",
              "CR_HOURS_REQUIRED": "\tఅభ్యర్థన వేళలను మార్చడం అవసరం",
              "CR_STATUS_REQUIRED":
                  "దయచేసి మార్పు అభ్యర్థన స్థితిని నమోదు చేయండి",
              "INVALID_PROJECT_ID":
                  "దయచేసి చెల్లుబాటు అయ్యే ప్రాజెక్ట్ IDని నమోదు చేయండి",
              "PROJECT_ID_REQUIRED": "\tప్రాజెక్ట్ ఐడి అవసరం."
            },
            "FE_ASSIGNMENT": {
              "ASSIGNMENT": "\tఅ\tఅప్పగింతప్పగింత",
              "ADD_ASSIGNMENT": "\tఅసైన్‌మెంట్‌ని జోడించండి",
              "ASSIGNMENT_DATE": "అసైన్‌మెంట్ తేదీ",
              "ASSIGNMENT_LIST": "\tఅసైన్‌మెంట్ జాబితా",
              "ASSIGNMENT_TIME": "అసైన్‌మెంట్ సమయం",
              "EDIT_ASSIGNMENT": "\tఅసైన్‌మెంట్‌ని సవరించండి",
              "ASSIGNMENT_TITLE": "\tఅసైన్‌మెంట్ శీర్షిక",
              "DELETE_ASSIGNMENT": "\tఅసైన్‌మెంట్‌ను తొలగించండి",
              "ADD_ASSIGNMENT_TITLE": "అసైన్‌మెంట్ శీర్షికను జోడించండి",
              "ASSIGNMENT_DESCRIPTION": "\tఅసైన్‌మెంట్ వివరణ",
              "ARE_YOU_DELETE_ASSIGNMENT":
                  "\tమీరు ఖచ్చితంగా ఈ అసైన్‌మెంట్‌ని తొలగించాలనుకుంటున్నారా?",
              "ARE_YOU_DELETE_ASSIGNMENT_LIST":
                  "\tమీరు ఖచ్చితంగా ఈ అసైన్‌మెంట్‌ని తొలగించాలనుకుంటున్నారా?"
            },
            "FE_ATTENDANCE": {
              "A": "ఎ",
              "L": "\tఎల్",
              "P": "\tపి",
              "HL": "\tHL",
              "OF": "\tయొక్క",
              "ON": "\tపై",
              "WK": "WK\t",
              "LATE": "\tఆలస్యం",
              "ROLL": "\tరోల్ చేయండి",
              "LEAVE": "\tవదిలేయండి",
              "ABSENT": "\tగైర్హాజరు",
              "REG_NO": "\tరిజిస్టర్ నెం",
              "HALFDAY": "సగం రోజు",
              "PRESENT": "\tవర్తమానం",
              "REMARKS": "వ్యాఖ్యలు",
              "EMPLOYEE": "ఉద్యోగి",
              "STAFF_ID": "సిబ్బంది ID\t",
              "STUDENTS": "\tవిద్యార్థులు",
              "EMPLOYEES": "\tఉద్యోగులు",
              "ATTENDANCE": "హాజరు",
              "YOUR_CHILD": "\tమీ బిడ్డ",
              "SELECT_ROLE": "పాత్రను ఎంచుకోండి\t",
              "LAST_UPDATED": "చివరిగా నవీకరించబడింది\t",
              "SELECT_CLASS": "\tతరగతిని ఎంచుకోండి",
              "SELECT_MONTH": "నెలను ఎంచుకోండి",
              "STUDENT_LIST": "విద్యార్థుల జాబితా",
              "EMPLOYEE_LIST": "ఉద్యోగుల జాబితా",
              "MY_ATTENDANCE": "\tనా హాజరు",
              "YOUR_CHILDREN": "\tమీ పిల్లలు",
              "SELECT_STUDENT": "\tవిద్యార్థిని ఎంచుకోండి",
              "SELECT_EMPLOYEE": "ఉద్యోగిని ఎంచుకోండి",
              "SELECT_SECTIONS": "విభాగాలను ఎంచుకోండి",
              "TAKE_ATTENDANCE": "హాజరు తీసుకోండి",
              "ATTENDANCE_REPORT": "\tహాజరు నివేదిక"
            },
            "FE_PLACHOLDER": {
              "ZIP": "\tజిప్ కోడ్‌ని నమోదు చేయండి",
              "NAME": "పేరు నమోదు చేయండి",
              "TYPE": "రకాన్ని నమోదు చేయండి",
              "EMAIL": "ఇమెయిల్‌ని నమోదు చేయండి",
              "LEVEL": "స్థాయిని ఎంచుకోండి",
              "TITLE": "శీర్షికను నమోదు చేయండి",
              "COURSE": "\tజాబితా నుండి కోర్సును ఎంచుకోండి",
              "GENDER": "\tలింగాన్ని ఎంచుకోండి",
              "STATUS": "స్థితిని ఎంచుకోండి",
              "ADDRESS": "\tచిరునామాను నమోదు చేయండి",
              "CAPCITY": "సామర్థ్యాన్ని నమోదు చేయండి",
              "MINUTES": "\tనిమిషాలు",
              "SECTION": "విభాగాన్ని ఎంచుకోండి",
              "SUBJECT": "\tవిషయాన్ని నమోదు చేయండి",
              "CATEGORY": "వర్గం ఎంచుకోండి",
              "FACILITY": "\tసౌకర్యాన్ని నమోదు చేయండి",
              "LANGUAGE": "\tభాషను ఎంచుకోండి",
              "LOCATION": "స్థానాన్ని నమోదు చేయండి",
              "PASSWORD": "\tరహస్య సంకేతం తెలపండి",
              "SEMESTER": "\tసెమిస్టర్‌ని నమోదు చేయండి",
              "DEPARMENT": "విభాగాన్ని ఎంచుకోండి",
              "LAST_NAME": "చివరి పేరును నమోదు చేయండి\t",
              "SMTP_HOST": "SMTP హోస్ట్‌ని నమోదు చేయండి\t",
              "SMTP_PORT": "SMTP పోర్ట్‌ను నమోదు చేయండి\t",
              "CLASS_NAME": "తరగతి పేరును నమోదు చేయండి\t",
              "FIRST_NAME": "మొదటి పేరును నమోదు చేయండి\t",
              "SMTP_EMAIL": "SMTP ఇమెయిల్‌ను నమోదు చేయండి\t",
              "START_DATE": "\tప్రారంభ తేదీని ఎంచుకోండి",
              "TITLE_TEXT": "శీర్షిక వచనాన్ని నమోదు చేయండి",
              "BLOOD_GROUP": "రక్త సమూహాన్ని ఎంచుకోండి",
              "BRANCH_NAME": "శాఖ పేరును నమోదు చేయండి",
              "FOOTER_TEXT": "\tఫుటరు వచనాన్ని నమోదు చేయండి",
              "LESSON_NAME": "మీ పాఠం పేరును నమోదు చేయండి",
              "LESSON_TYPE": "పాఠ్య రకాన్ని ఎంచుకోండి",
              "MIDDLE_NAME": "మధ్య పేరును నమోదు చేయండి",
              "NATIONALITY": "\tజాతీయతను నమోదు చేయండి",
              "RETURN_FINE": "\tఇక్కడ ఫైన్‌ని నమోదు చేయండి",
              "ROOM_NUMBER": "గది సంఖ్యను నమోదు చేయండి\t",
              "SELECT_DATE": "\tతేదీని ఎంచుకోండి",
              "SELECT_ROLE": "పాత్రను ఎంచుకోండి",
              "SELECT_ROOM": "\tగదిని ఎంచుకోండి",
              "SELECT_USER": "\tఇక్కడ వినియోగదారుని ఎంచుకోండి",
              "BRANCH_EMAIL": "\tబ్రాంచ్ ఇమెయిల్‌ను నమోదు చేయండి",
              "ENTER_REMARK": "\tవ్యాఖ్యను ఇక్కడ నమోదు చేయండి",
              "SECTION_NAME": "\tవిభాగం పేరును నమోదు చేయండి",
              "SELECT_CLASS": "\tతరగతిని ఎంచుకోండి",
              "SELECT_USERS": "\tవినియోగదారులను ఎంచుకోండి",
              "SUBJECT_CODE": "\tసబ్జెక్ట్ కోడ్‌ని నమోదు చేయండి",
              "SUBJECT_NAME": "\tవిషయం పేరు నమోదు చేయండి",
              "BOOK_CATEGORY": "పుస్తకం వర్గం పేరును నమోదు చేయండి",
              "CATEGORY_NAME": "\tవర్గం పేరును నమోదు చేయండి",
              "SMTP_HOSTNAME": "SMTP హోస్ట్ పేరును నమోదు చేయండి",
              "SMTP_PASSWORD": "SMTP పాస్‌వర్డ్‌ను నమోదు చేయండి",
              "SMTP_USERNAME": "\tSMTP వినియోగదారు పేరును నమోదు చేయండి",
              "BRANCH_ADDRESS": "బ్రాంచ్ చిరునామాను నమోదు చేయండి",
              "SECTION_NUMBER": "మీ విభాగం సంఖ్యను నమోదు చేయండి",
              "SELECT_SECTION": "విభాగాన్ని ఎంచుకోండి\t",
              "SELECT_SUBJECT": "విషయం ఎంచుకోండి\t",
              "SELECT_TEACHER": "ఉపాధ్యాయుడిని ఎంచుకోండి\t",
              "ZOOM_CLIENT_ID": "జూమ్ క్లయింట్ ఐడిని నమోదు చేయండి\t",
              "DEPARTMENT_NAME": "విభాగం పేరు నమోదు చేయండి\t",
              "LESSON_DURATION": "వ్యవధిని నమోదు చేయండి\t",
              "SECTION_DETAILS": "విభాగం వివరాలను నమోదు చేయండి\t",
              "SELECT_END_TIME": "ముగింపు సమయాన్ని ఎంచుకోండి\t",
              "SMTP_FROM_EMAIL": "ఇమెయిల్ నుండి నమోదు చేయండి\t",
              "ZOOM_ACCOUNT_ID": "జూమ్ ఖాతా ఐడిని నమోదు చేయండి\t",
              "COURSE_FULL_NAME": "కోర్సు పేరు నమోదు చేయండి\t",
              "DEPARTMNENT_CODE": "డిపార్ట్‌మెంట్ కోడ్‌ని నమోదు చేయండి\t",
              "SELECT_ROLE_HERE": "ఇక్కడ పాత్రను ఎంచుకోండి\t",
              "CLASS_DESCRIPTION": "తరగతి వివరణను నమోదు చేయండి\t",
              "SELECT_ISSUE_DATE": "జారీ తేదీని ఎంచుకోండి",
              "SELECT_START_TIME": "ప్రారంభ సమయాన్ని ఎంచుకోండి",
              "BRANCH_INFORMATION": "శాఖ సమాచారాన్ని నమోదు చేయండి",
              "SELECT_RETURN_DATE": "శాఖ సమాచారాన్ని నమోదు చేయండి",
              "ZOOM_CLIENT_SECRET": "\tజూమ్ క్లయింట్ రహస్యాన్ని నమోదు చేయండి",
              "LIBRARY_CARD_NUMBER": "\tలైబ్రరీ కార్డ్ నంబర్‌ను నమోదు చేయండి",
              "SECTION_DESCRIPTION": "విభాగం వివరణను నమోదు చేయండి\t",
              "SELECT_CLASS_METHOD": "\tతరగతి పద్ధతిని ఎంచుకోండి",
              "SELECT_FOR_EVERYONE": "ప్రతి ఒక్కరి కోసం ఎంచుకోండి",
              "SUBJECT_DESCRIPTION": "విషయ వివరణను నమోదు చేయండి",
              "CATEGORY_DESCRIPTION": "\tవర్గం వివరణను నమోదు చేయండి",
              "PARENT_CATEGORY_NAME": "మాతృ వర్గం పేరును నమోదు చేయండి",
              "SELECT_BOOK_CATEGORY": "\tపుస్తక వర్గాన్ని ఎంచుకోండి",
              "DEPARTMENT_DESCRIPTION": "\tవిభాగం వివరణను నమోదు చేయండి"
            },
            "CPU_VALIDATION": {
              "VALID_STATUS": "దయచేసి చెల్లుబాటు అయ్యే స్థితిని నమోదు చేయండి.",
              "NAME_REQUIRED": "\tCpu అవసరం.",
              "STATUS_REQUIRED": "\tcpu స్థితి అవసరం."
            },
            "EMAIL_TEMPLATE": {
              "EDITED": "ఇమెయిల్ టెంప్లేట్ విజయవంతంగా సవరించబడింది.",
              "CREATED": "\tఇమెయిల్ టెంప్లేట్ విజయవంతంగా జోడించబడింది.",
              "DELETED": "\tఇమెయిల్ టెంప్లేట్ విజయవంతంగా తొలగించబడింది.",
              "DETAILS": "\tఇమెయిల్ టెంప్లేట్ విజయవంతంగా పొందబడింది.",
              "NOT_EXISTS": "\tఇమెయిల్ టెంప్లేట్ కనుగొనబడలేదు.",
              "TITLE_EXISTS": "\tఈ ఇమెయిల్ టెంప్లేట్ శీర్షిక ఇప్పటికే ఉంది.",
              "ALL_EMAIL_TEMPLATE":
                  "\tఅన్ని ఇమెయిల్ టెంప్లేట్‌లను విజయవంతంగా పొందండి."
            },
            "PLAN_VALIDATOR": {
              "MODULES": "మాడ్యూల్స్ ఐడి అవసరం",
              "PLAN_TYPE": "\tప్లాన్ రకం అవసరం",
              "PLAN_TENURE": "\tప్రణాళిక పదవీకాలం అవసరం",
              "NAME_REQUIRED": "\tప్లాన్ పేరు అవసరం",
              "PRICE_REQUIRED": "\tప్లాన్ ధర అవసరం.",
              "CURRENCY_REQUIRED": "\tప్లాన్ కరెన్సీ అవసరం"
            },
            "PUBLIC_HOLIDAY": {
              "LEAVE_GET": "\tపబ్లిక్ హాలిడేని విజయవంతంగా పొందండి.",
              "LEAVE_NOT_FOUND": "\tప్రభుత్వ సెలవుదినం కనుగొనబడలేదు.",
              "ADD_LEAVE_SUCCESS": "\tపబ్లిక్ హాలిడే విజయవంతంగా జోడించబడింది.",
              "EDIT_LEAVE_SUCCESS": "పబ్లిక్ హాలిడే విజయవంతంగా సవరించబడింది.",
              "DELETE_LEAVE_SUCCESS":
                  "పబ్లిక్ హాలిడే విజయవంతంగా తొలగించబడింది.\t",
              "GET_ALL_LEAVE_SUCCESS":
                  "\tఅన్ని ప్రభుత్వ సెలవులను విజయవంతంగా పొందండి."
            },
            "RAM_VALIDATION": {
              "VALID_STATUS": "దయచేసి చెల్లుబాటు అయ్యే స్థితిని నమోదు చేయండి.",
              "NAME_REQUIRED": "\tరామ్ అవసరం..",
              "STATUS_REQUIRED": "రామ్ స్థితి అవసరం."
            },
            "ZOOM_VALIDATOR": {
              "ZOOM_CLIENT_ID": "\tజూమ్ క్లయింట్ ఐడి పేరు అవసరం",
              "ZOOM_ACCOUNT_ID": "జూమ్ అకౌట్న్ ఐడి అవసరం",
              "ZOOM_CLIENT_SECRET": "\tజూమ్ క్లయింట్ రహస్యం అవసరం"
            },
            "ACKNOWLEDGEMENT": {
              "NOT_FOUND": "\tరసీదు కనుగొనబడలేదు",
              "ALREADY_EXIST": "అక్నాలెడ్జ్‌మెంట్ ఇప్పటికే ఉంది",
              "EXCEL_NOT_FOUND": "ఎక్సెల్ రసీదు కనుగొనబడలేదు",
              "GET_SUCCESSFULLY": "\tగుర్తింపు విజయవంతంగా లభిస్తుంది.",
              "NAME_ALREADY_EXIST":
                  "రసీదు పేరు ఇప్పటికే ఉంది, దయచేసి మరొక రసీదు పేరుతో ప్రయత్నించండి",
              "CREATED_SUCCESSFULLY": "\tరసీదు విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY": "రసీదు విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY": "రసీదు విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY": "\tరసీదు జాబితా విజయవంతంగా పొందుతుంది.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "అక్నాలెడ్జ్‌మెంట్ ఎక్సెల్ యొక్క json ఫైల్ విజయవంతంగా సృష్టించబడింది"
            },
            "BOOK_VALIDATION": {
              "TITLE_REQUIRED": "పుస్తకం శీర్షిక అవసరం",
              "PRICE_NUMERIC_ONLY": "\tపుస్తకం ధర సంఖ్య మాత్రమే ఉండాలి",
              "TOTAL_QUANTITY_REQUIRED": "\tపుస్తకం పరిమాణం అవసరం"
            },
            "CLASS_VALIDATOR": {
              "CLASS_NAME": "\tతరగతి పేరు అవసరం.",
              "DESCRIPTION": "\tతరగతి వివరణ అవసరం."
            },
            "EMPLOYEE_STATUS": {
              "GET_DEPARTMENT":
                  "\tఉద్యోగి స్థితి వివరాలు విజయవంతంగా పొందబడ్డాయి.",
              "GET_ALL_DEPARTMENT": "అన్ని ఉద్యోగుల హోదా విజయవంతంగా పొందింది.",
              "CREATED_SUCCESSFULLY":
                  "\tఉద్యోగి స్థితి విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY":
                  "\tఉద్యోగి స్థితి విజయవంతంగా తొలగించబడింది.",
              "DEPARTMENT_NOT_EXIST": "\tఉద్యోగి స్థితి లేదు.",
              "UPDATED_SUCCESSFULLY":
                  "\tఉద్యోగి స్థితి విజయవంతంగా నవీకరించబడింది.",
              "EMPLOYEE_STATUS_ALREADY_EXIST": "ఉద్యోగి స్థితి ఇప్పటికే ఉంది."
            },
            "FE_LIVE_CLASSES": {
              "LIVE_CLASSES": "\tప్రత్యక్ష తరగతులు",
              "LIVE_CLASS_LIST": "\tప్రత్యక్ష తరగతి జాబితా"
            },
            "FE_SMTP_SETTING": {
              "SMTP_AUTH": "\tSMTP ప్రమాణీకరణ",
              "SMTP_PORT": "\tSMTP పోర్ట్",
              "FROM_EMAIL": "\tఇమెయిల్ నుండి",
              "SMTP_SECURE": "\tSMTP సెక్యూర్",
              "SMTP_HOSTNANE": "\tSMTP హోస్ట్ పేరు",
              "SMTP_PASSWORD": "SMTP పాస్‌వర్డ్",
              "SMTP_USERNAME": "\tSMTP వినియోగదారు పేరు"
            },
            "FE_SUBSCRIPTION": {
              "PAID": "\tచెల్లించారు",
              "PLAN": "ప్లాన్ చేయండి",
              "SR_NO": "\tSR నం",
              "AMOUNT": "\tమొత్తం",
              "BILLED": "బిల్లు పెట్టారు",
              "METHOD": "\tపద్ధతి",
              "STATUS": "\tస్థితి*",
              "YEARLY": "సంవత్సరానికి",
              "INVOICE": "\tఇన్వాయిస్",
              "MONTHLY": "\tనెలవారీ",
              "PACKAGE": "ప్యాకేజీ",
              "UPGRADE": "అప్‌గ్రేడ్ చేయండి",
              "QUARTELY": "\tత్రైమాసిక",
              "SUBSCRIBE": "\tసభ్యత్వం పొందండి",
              "START_DATE": "\tప్రారంబపు తేది",
              "DESCRIPTION": "\tవివరణ",
              "EXPIRY_DATE": "\tగడువు తీరు తేదీ",
              "MODULE_NAME": "మాడ్యూల్ పేరు",
              "CURRENT_PLAN": "\tప్రస్తుత ప్రణాళిక",
              "LAST_UPGRADE": "చివరి అప్‌గ్రేడ్",
              "PACKAGE_NAME": "ప్యాకేజీ పేరు",
              "PLAN_UPGRADE": "\tప్లాన్ అప్‌గ్రేడ్",
              "SUBSCRIPTION": "\tచందా",
              "ORDER_SUMMARY": "\tకొనుగోలు వివరణ",
              "PLAN_PURCHASE": "\tప్రణాళిక కొనుగోలు",
              "PURCHASE_DATE": "\tకొనిన తేదీ",
              "BILLING_PERIOD": "బిల్లింగ్ వ్యవధి",
              "PAYMENT_METHOD": "\tచెల్లింపు పద్ధతి",
              "PAYMENT_DETAILS": "చెల్లింపు వివరాలు",
              "PAYMENT_HISTORY": "చెల్లింపు చరిత్ర",
              "CURRENT_PLAN_LIST": "\tప్రస్తుత ప్రణాళిక జాబితా",
              "SUBSCRIPTION_LIST": "చందా జాబితా",
              "MODULE_PERMISSIONS": "మాడ్యూల్ అనుమతులు",
              "YOY_ILL_BE_CHARGED": "\tమీకు ఛార్జీ విధించబడుతుంది",
              "CURRENT_PLAN_DETAILS": "ప్రస్తుత ప్లాన్ వివరాలు",
              "PLAN_INTERVAL_PERIOD": "ప్లాన్ ఇంటర్వెల్ పీరియడ్\t",
              "SUBSCRIPTION_DETAILS": "చందా వివరాలు",
              "CHOOSE_PAYMENT_METHOD": "చెల్లింపు విధానం ఎంచుకో",
              "NO_PLANS_ARE_AVAILABLE": "\tప్రణాళికలు అందుబాటులో లేవు.",
              "UNTIL_YOU_CANCEL_THE_SUBSCRIPTION":
                  "\tమీరు సభ్యత్వాన్ని రద్దు చేసే వరకు.",
              "PAYMENT_SUCCESSFULL_SUBSCRIPTION_ACTIVE":
                  "\tచెల్లింపు విజయవంతమైంది! సభ్యత్వం సక్రియంగా ఉంది."
            },
            "MAKE_VALIDATION": {
              "VALID_STATUS":
                  "\tదయచేసి చెల్లుబాటు అయ్యే స్థితిని నమోదు చేయండి.",
              "NAME_REQUIRED": "\tపేరు పెట్టడం అవసరం.",
              "STATUS_REQUIRED": "\tపేరు యొక్క స్థితి అవసరం."
            },
            "ROLE_PERMISSION": {
              "ADDED": "\tపాత్ర అనుమతి విజయవంతంగా జోడించబడింది.",
              "FETCH": "\tపాత్ర అనుమతి విజయవంతంగా పొందబడింది",
              "EDITED": "పాత్ర అనుమతి విజయవంతంగా సవరించబడింది.",
              "DELETED": "పాత్ర అనుమతి విజయవంతంగా తొలగించబడింది.",
              "UPDATED": "\tపాత్ర అనుమతి విజయవంతంగా నవీకరించబడింది.",
              "NOT_FOUND": "\tపాత్ర అనుమతి కనుగొనబడలేదు",
              "ALREADY_EXIST": "\tపాత్ర అనుమతి ఇప్పటికే ఉంది."
            },
            "ROOMS_VALIDATOR": {
              "Type_REQUIRED": "\tగది రకం అవసరం.",
              "CAPACITY_REQUIRED": "\tగది సామర్థ్యం అవసరం.",
              "FACILITY_REQUIRED": "గది సౌకర్యం అవసరం.",
              "LOCATION_REQUIRED": "\tగది స్థానం అవసరం.",
              "ROOM_NUMBER_REQUIRED": "\tగది సంఖ్య అవసరం."
            },
            "TASK_VALIDATION": {
              "INVALID_CR_ID":
                  "\tదయచేసి చెల్లుబాటు అయ్యే CR IDని నమోదు చేయండి.",
              "INVALID_PM_ID": "దయచేసి చెల్లుబాటు అయ్యే PM IDని నమోదు చేయండి.",
              "INVALID_PROJECT_ID":
                  "\tదయచేసి చెల్లుబాటు అయ్యే ప్రాజెక్ట్ IDని నమోదు చేయండి.",
              "TASK_DESC_REQUIRED": "విధి వివరణ అవసరం.",
              "TASK_NAME_REQUIRED": "\tటాస్క్ పేరు అవసరం.",
              "TASK_TYPE_REQUIRED": "టాస్క్ రకం అవసరం.",
              "INVALID_TASK_STATUS":
                  "దయచేసి చెల్లుబాటు అయ్యే పని స్థితి IDని నమోదు చేయండి.",
              "PROJECT_ID_REQUIRED": "\tప్రాజెక్ట్ ఐడి అవసరం.",
              "TASK_HOURS_REQUIRED": "పని గంటలు అవసరం.",
              "TASK_STATUS_REQUIRED": "\tవిధి స్థితి అవసరం.",
              "TASK_ENDDATE_REQUIRED": "\tటాస్క్ ముగింపు తేదీ అవసరం.",
              "TASK_STARTDATE_REQUIRED": "టాస్క్ ప్రారంభ తేదీ అవసరం.",
              "TASK_ASSIGNED_USER_REQUIRED":
                  "\tటాస్క్ కేటాయించిన వినియోగదారులు అవసరం."
            },
            "USER_VALIDATION": {
              "VALID_ID": "దయచేసి చెల్లుబాటు అయ్యే Idని నమోదు చేయండి.",
              "EMAIL_VALID":
                  "\tదయచేసి చెల్లుబాటు అయ్యే ఇమెయిల్‌ని నమోదు చేయండి",
              "ID_REQUIRED": "\tId అవసరం.",
              "VALID_EMAIL": "దయచేసి చెల్లుబాటు అయ్యే ఇమెయిల్‌ని నమోదు చేయండి.",
              "VALID_STATUS": "దయచేసి చెల్లుబాటు అయ్యే స్థితిని నమోదు చేయండి.",
              "ZIP_REQUIRED": "\tపిన్ కోడ్ అవసరం*.",
              "CITY_REQUIRED": "\tనగరం అవసరం",
              "PASSWORD_SIZE": "పాస్‌వర్డ్‌లో కనీసం 6 అక్షరాలు ఉండాలి.",
              "EMAIL_REQUIRED": "\tఇమెయిల్ అవసరం.",
              "STATE_REQUIRED": "\tరాష్ట్రం అవసరం",
              "LAST_NAME_VALID":
                  "\tదయచేసి చెల్లుబాటు అయ్యే చివరి పేరును నమోదు చేయండి.",
              "STATUS_REQUIRED": "స్థితి అవసరం.",
              "VALID_USER_TYPE":
                  "\tదయచేసి చెల్లుబాటు అయ్యే వినియోగదారు రకాన్ని నమోదు చేయండి.",
              "gender_REQUIRED": "లింగం అవసరం",
              "ADDRESS_REQUIRED": "\tచిరునామా అవసరం.",
              "COUNTRY_REQUIRED": "\tదేశం అవసరం",
              "FIRST_NAME_VALID":
                  "దయచేసి చెల్లుబాటు అయ్యే మొదటి పేరును నమోదు చేయండి",
              "VALID_DEPARTMENT":
                  "దయచేసి చెల్లుబాటు అయ్యే విభాగాన్ని నమోదు చేయండి.\t",
              "LASTNAME_REQUIRED": "\tచివరి పేరు అవసరం.",
              "NEW_PASSWORD_SIZE":
                  "\tకొత్త పాస్‌వర్డ్‌లో కనీసం 6 అక్షరాలు ఉండాలి.",
              "OLD_PASSWORD_SIZE":
                  "\tపాత పాస్‌వర్డ్‌లో కనీసం 6 అక్షరాలు ఉండాలి.",
              "PASSWORD_REQUIRED": "\tపాస్‌వర్డ్ అవసరం.",
              "USERTYPE_REQUIRED":
                  "దయచేసి చెల్లుబాటు అయ్యే వినియోగదారు_రకాన్ని నమోదు చేయండి.\t",
              "VALID_PLATFORM_OS":
                  "ప్లాట్‌ఫారమ్ OS తప్పనిసరిగా Android కోసం 1, ios కోసం 2 ఉండాలి.",
              "FIRSTNAME_REQUIRED": "\tమొదటి పేరు అవసరం.",
              "LAST_NAME_REQUIRED": "చివరి పేరు అవసరం.",
              "USER_TYPE_REQUIRED": "\tవినియోగదారు రకం అవసరం.",
              "CONTACT_NUMBER_SIZE":
                  "\tసంప్రదింపు నంబర్‌లో తప్పనిసరిగా 10 అక్షరాలు ఉండాలి.",
              "DEPARTMENT_REQUIRED": "\tవిభాగం అవసరం.",
              "FIRST_NAME_REQUIRED": "మొదటి పేరు అవసరం.",
              "PASSWORD_VALIDATION":
                  "పాస్‌వర్డ్ ఒక పెద్ద అక్షరం, ఒక చిన్న అక్షరం, ఒక ప్రత్యేక అక్షరం, ఒక అంకె మరియు కనిష్టంగా 6 కలిపి ఉండాలి.",
              "CONTACT_NUMBER_VALID":
                  "దయచేసి చెల్లుబాటు అయ్యే సంప్రదింపు నంబర్‌ను నమోదు చేయండి.",
              "VALID_EMPOYEE_STATUS":
                  "దయచేసి చెల్లుబాటు అయ్యే ఉద్యోగి స్థితిని నమోదు చేయండి.",
              "CONFIRM_PASSWORD_SIZE":
                  "\tపాస్‌వర్డ్‌లో కనీసం 6 అక్షరాలు ఉండాలి అని నిర్ధారించండి.",
              "NEW_PASSWORD_REQUIRED": "\tకొత్త పాస్‌వర్డ్ అవసరం.",
              "OLD_PASSWORD_REQUIRED": "పాత పాస్‌వర్డ్ అవసరం.",
              "USERTYPE_NAME_REQUIRED":
                  "దయచేసి వినియోగదారు రకం పేరును నమోదు చేయండి.",
              "VALID_REPORTING_PERSON":
                  "\tదయచేసి చెల్లుబాటు అయ్యే రిపోర్టింగ్ వ్యక్తిని నమోదు చేయండి.",
              "REFRESH_TOKENS_REQUIRED": "రిఫ్రెష్ టోకెన్ అవసరం.",
              "EMPLOYEE_STATUS_REQUIRED": "\tఉద్యోగి స్థితి అవసరం.",
              "CONFIRM_PASSWORD_REQUIRED":
                  "\tపాస్‌వర్డ్‌ని నిర్ధారించడం అవసరం.",
              "REPORTING_PERSON_REQUIRED": "\tరిపోర్టింగ్ వ్యక్తి అవసరం."
            },
            "WEBSITE_SETTING": {
              "NOT_FOUND": "\tవెబ్‌సైట్ సెట్టింగ్ కనుగొనబడలేదు.",
              "GET_SUCCESSFULLY": "\tవెబ్‌సైట్ సెట్టింగ్ విజయవంతమైంది.",
              "CREATED_SUCCESSFULLY":
                  "వెబ్‌సైట్ సెట్టింగ్ విజయవంతంగా సృష్టించబడింది.",
              "UPDATED_SUCCESSFULLY":
                  "వెబ్‌సైట్ సెట్టింగ్ విజయవంతంగా నవీకరించబడింది."
            },
            "ASSET_VALIDATION": {
              "CPU_REQUIRED": "Cpu అవసరం.",
              "RAM_REQUIRED": "రామ్ అవసరం.",
              "DATE_REQUIRED": "తేదీ అవసరం.",
              "VALID_ASSETTYPE":
                  "దయచేసి చెల్లుబాటు అయ్యే ఆస్తి రకాన్ని నమోదు చేయండి.",
              "INVALID_MAKE_NAME":
                  "దయచేసి చెల్లుబాటు అయ్యే మేక్ ఐడిని నమోదు చేయండి.\t",
              "INVALID_USER_NAME":
                  "దయచేసి చెల్లుబాటు అయ్యే వినియోగదారు ఐడిని నమోదు చేయండి.\t",
              "INVALID_ASSET_NAME":
                  "దయచేసి చెల్లుబాటు అయ్యే ఆస్తి ఐడిని నమోదు చేయండి.\t",
              "MAKE_NAME_REQUIRED": "పేరు పెట్టడం అవసరం.\t",
              "USER_NAME_REQUIRED": "వినియోగదారు పేరు అవసరం.\t",
              "ASSET_CODE_REQUIRED": "ఆస్తి కోడ్ అవసరం.\t",
              "ASSET_TYPE_REQUIRED": "ఆస్తి రకం అవసరం.\t",
              "INVALID_VENDOR_NAME":
                  "దయచేసి చెల్లుబాటు అయ్యే విక్రేత IDని నమోదు చేయండి.\t",
              "INVOICE_NO_REQUIRED": "\tఇన్‌వాయిస్ నంబర్ అవసరం.",
              "MAC_ADRESS_REQUIRED": "Mac చిరునామా అవసరం.",
              "MODEL_NAME_REQUIRED": "మోడల్ పేరు అవసరం.",
              "VENDOR_NAME_REQUIRED": "\tవిక్రేత పేరు అవసరం.",
              "COMPANY_NAME_REQUIRED": "\tకంపెనీ పేరు అవసరం."
            },
            "CLASS_TIME_TABLE": {
              "GET_ALL": "తరగతి టైమ్ టేబుల్ జాబితా విజయవంతంగా పొందండి.",
              "NOT_EXIST": "క్లాస్ టైమ్ టేబుల్ ఉనికిలో లేదు.",
              "NOT_FOUND": "క్లాస్ టైమ్ టేబుల్ కనుగొనబడలేదు.",
              "GET_DETAILS":
                  "క్లాస్ టైమ్ టేబుల్ వివరాలు విజయవంతంగా పొందబడ్డాయి.",
              "ALREADY_EXIST": "\tక్లాస్ టైమ్ టేబుల్ ఇప్పటికే ఉంది.",
              "ROOM_NOT_AVAILABLE": "\tగది అందుబాటులో లేదు.",
              "CREATED_SUCCESSFULLY":
                  "తరగతి టైమ్ టేబుల్ విజయవంతంగా సృష్టించబడింది.\t",
              "DELETED_SUCCESSFULLY":
                  "క్లాస్ టైమ్ టేబుల్ విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY":
                  "\tక్లాస్ టైమ్ టేబుల్ విజయవంతంగా అప్‌డేట్ చేయబడింది.",
              "SECTION_ALREADY_OCCUPIED":
                  "\tవిభాగం ఇప్పటికే తరగతి కేటాయించబడింది.",
              "TEACHER_ALREADY_OCCUPIED":
                  "ఉపాధ్యాయుడికి ఇప్పటికే తరగతి కేటాయించబడింది."
            },
            "COURSE_VALIDATOR": {
              "VISIBILITY": "\tకోర్సు దృశ్యమానత అవసరం",
              "NAME_REQUIRED": "కోర్సు పేరు అవసరం",
              "STATUS_REQUIRED": "\tCOURSE స్థితి అవసరం",
              "COURSE_IMAGE_REQUIRED": "కోర్సు చిత్రం అవసరం"
            },
            "FE_CLASS_ROUTINE": {
              "CLASS_ROUTINE": "\tతరగతి దినచర్య",
              "MY_CLASS_ROUTINE": "\tనా క్లాస్ రొటీన్",
              "ADD_CLASS_ROUTINE": "\tతరగతి దినచర్యను జోడించండి",
              "CLASS_ROUTIN_LIST": "తరగతి దినచర్య జాబితా",
              "END_TIME_REQUIRED": "\tముగింపు సమయం అవసరం*.",
              "CLASS_ROUTINE_LIST": "\tతరగతి దినచర్య జాబితా",
              "EDIT_CLASS_ROUTINE": "\tతరగతి దినచర్యను సవరించండి",
              "SELECT_DAY_OF_WEEK": "వారంలోని రోజును ఎంచుకోండి",
              "START_TIME_REQUIRED": "ప్రారంభ సమయం అవసరం*.",
              "DELETE_CLASS_ROUTINE": "\tతరగతి దినచర్యను తొలగించండి",
              "SELECT_PLAC_DAY_OF_WEEK": "వారంలోని రోజును ఎంచుకోండి",
              "NO_CLASS_ROUTINE_AVAILABLE":
                  "\tక్లాస్ రొటీన్ అందుబాటులో లేదు !!!",
              "ARE_YOU_SURE_WANT_TO_DELETE_THIS_CLASSROUTINE":
                  "\tమీరు ఖచ్చితంగా ఈ తరగతి దినచర్యను తొలగించాలనుకుంటున్నారా?"
            },
            "LEAVE_VALIDATION": {
              "DATE_SIZE": "\t13 అంకెల తేదీ స్ట్రింగ్‌ను నమోదు చేయండి.",
              "REASON_SIZE": "సెలవు కారణం కనిష్టంగా 6 అక్షరాలు ఉంటుంది",
              "REASON_REQUIRED": "సెలవు కారణం అవసరం.",
              "STATUS_REQUIRED": "\tసెలవు స్థితి అవసరం.",
              "END_DATE_REQUIRED": "\tముగింపు తేదీ అవసరం.",
              "INVALID_DAY_SHIFT":
                  "\tదయచేసి చెల్లుబాటు అయ్యే రోజు షిఫ్ట్‌ని నమోదు చేయండి.",
              "DAY_SHIFT_REQUIRED": "డే షిఫ్ట్ అవసరం.",
              "START_DATE_REQUIRED": "ప్రారంభ తేదీ అవసరం.",
              "INVALID_LEAVE_STATUS": "\tచెల్లని సెలవు స్థితి."
            },
            "STRIPE_VALIDATOR": {
              "PUBLIC_KEY_REQUIRED": "పబ్లిక్ కీ పేరు అవసరం",
              "SECRET_KEY_REQUIRED": "\tరహస్య కీ పేరు అవసరం",
              "PUBLIC_LIVE_KEY_REQUIRED": "\tపబ్లిక్ లైవ్ కీ పేరు అవసరం",
              "SECRET_LIVE_KEY_REQUIRED": "\tరహస్య ప్రత్యక్ష కీ పేరు అవసరం"
            },
            "CLIENT_VALIDATION": {
              "NUMBER_SIZE":
                  "\tసంప్రదింపు నంబర్ తప్పనిసరిగా 10 డిజిట్‌లను కలిగి ఉండాలి",
              "VALID_EMAIL": "దయచేసి చెల్లుబాటు అయ్యే ఇమెయిల్‌ని నమోదు చేయండి.",
              "PASSWORD_SIZE": "పాస్‌వర్డ్‌లో కనీసం 6 అక్షరాలు ఉండాలి.",
              "EMAIL_REQUIRED": "ఇమెయిల్ అవసరం.",
              "NUMBER_REQUIRED": "\tసంప్రదింపు నంబర్ అవసరం.",
              "COUNTRY_REQUIRED": "\tదేశం పేరు అవసరం.",
              "PASSWORD_REQUIRED": "పాస్‌వర్డ్ అవసరం.",
              "PASSWORD_VALIDATION":
                  "\tపాస్‌వర్డ్ ఒక పెద్ద అక్షరం, ఒక చిన్న అక్షరం, ఒక ప్రత్యేక అక్షరం, ఒక అంకె మరియు కనిష్టంగా 6 కలిపి ఉండాలి.",
              "COMMUNICATION_TOOLS_REQUIRED":
                  "కనీసం ఒక కమ్యూనికేషన్ టూల్ పేరు & ఐడి అవసరం."
            },
            "FE_EMAIL_TEMPLATE": {
              "BODY": "\tశరీరం",
              "DYAMIC_VALUES": "\tడై\tడైనమిక్ విలువలునమిక్ విలువలు",
              "EMAIL_TEMPLATE": "\tఇమెయిల్ టెంప్లేట్"
            },
            "PERMISSION_ENTITY": {
              "ADDED": "\tఅనుమతి ఎంటిటీ విజయవంతంగా జోడించబడింది.",
              "FETCH": "అనుమతి ఎంటిటీ విజయవంతంగా పొందబడింది",
              "EDITED": "అనుమతి ఎంటిటీ విజయవంతంగా సవరించబడింది.",
              "DELETED": "\tఅనుమతి ఎంటిటీ విజయవంతంగా తొలగించబడింది.",
              "UPDATED": "అనుమతి ఎంటిటీ విజయవంతంగా నవీకరించబడింది.",
              "NOT_FOUND": "\tఅనుమతి ఎంటిటీ కనుగొనబడలేదు",
              "ALREADY_EXIST": "అనుమతి ఎంటిటీ ఇప్పటికే ఉనికిలో ఉంది."
            },
            "SUPER_ADMIN_STAFF": {
              "NOT_FOUND": "\tసూపర్ అడ్మిన్ స్టాఫ్ దొరకలేదు",
              "EXCEL_NOT_FOUND": "\tసూపర్ అడ్మిన్ స్టాఫ్ ఎక్సెల్ కనుగొనబడలేదు",
              "GET_SUCCESSFULLY":
                  "\tసూపర్ అడ్మిన్ సిబ్బంది విజయవంతంగా పొందుతారు.",
              "IMPORT_SUCESSFULLY":
                  "\tసూపర్ అడ్మిన్ స్టాఫ్ విజయవంతంగా దిగుమతి చేయబడింది.",
              "CREATED_SUCCESSFULLY":
                  "\tసూపర్ అడ్మిన్ స్టాఫ్ విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY":
                  "సూపర్ అడ్మిన్ సిబ్బంది విజయవంతంగా తొలగించబడ్డారు.",
              "UPDATED_SUCCESSFULLY":
                  "\tసూపర్ అడ్మిన్ స్టాఫ్ విజయవంతంగా అప్‌డేట్ చేయబడింది.",
              "GET_LIST_SUCCESSFULLY":
                  "\tసూపర్ అడ్మిన్ స్టాఫ్ జాబితా విజయవంతంగా పొందండి.",
              "EXCEL_DEPARTMENT_ISSUE": "\tఅందించిన శాఖ ఉనికిలో లేదు",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "\tఎక్సెల్ షీట్‌లో సూపర్ అడ్మిన్ స్టాఫ్ ఇప్పటికే ఉన్నారు"
            },
            "TICKET_VALIDATION": {
              "STATUS_REQUIRED": "\tటిక్కెట్ స్థితి అవసరం",
              "DESRIPTION_REQUIRED": "టిక్కెట్ వివరణ అవసరం.",
              "ISSUE_TYPE_REQUIRED": "\tసమస్య రకం అవసరం."
            },
            "VENDOR_VALIDATION": {
              "VALID_STATUS":
                  "\tదయచేసి చెల్లుబాటు అయ్యే స్థితిని నమోదు చేయండి.",
              "NAME_REQUIRED": "\tమేక్ విక్రేత అవసరం.",
              "STATUS_REQUIRED": "\tవిక్రేత పేరు యొక్క స్థితి అవసరం."
            },
            "COMMENT_VALIDATION": {
              "Ticket_ID_REQUIRED": "\tటిక్కెట్ వివరణ అవసరం."
            },
            "COMPANY_VALIDATION": {
              "VALID_STATUS":
                  "\tదయచేసి చెల్లుబాటు అయ్యే స్థితిని నమోదు చేయండి.",
              "NAME_REQUIRED": "\tకంపెనీ పేరు అవసరం.",
              "STATUS_REQUIRED": "\tకంపెనీ స్థితి అవసరం."
            },
            "FE_SYSTEM_SETTINGS": {
              "SR_NO": "\tSR నం",
              "TITLE": "\tశీర్షిక",
              "TOPIC": "అంశం",
              "SETTINGS": "\tసెట్టింగ్‌లు",
              "SMTP_HOST": "\tహోస్ట్*",
              "SMTP_PORT": "పోర్ట్*",
              "HOST_VIDEO":
                  "\tహోస్ట్ వీడియో (పాల్గొనేవారు సమావేశంలో చేరినప్పుడు వీడియోను ప్రారంభించండి).",
              "MEETING_ID": "\tమీటింగ్ Id",
              "SMTP_EMAIL": "\tఇమెయిల్*",
              "JOIN_METTING":
                  "హోస్ట్ మీటింగ్‌ను ప్రారంభించడానికి ముందు మీటింగ్‌లో చేరండి.\t",
              "LIVE_CLASSES": "ప్రత్యక్ష తరగతులు",
              "SMTP_SETTING": "SMTP సెట్టింగ్ ",
              "ZOOM_SETTING": "జూమ్ సెట్టింగ్\t",
              "SMTP_PASSWORD": "పాస్వర్డ్*",
              "SMTP_USERNAME": "\tUSERNAME*",
              "ADD_LIVE_CLASS": "\tప్రత్యక్ష తరగతిని జోడించండి",
              "ZOOM_CLIENT_ID": "జూమ్ క్లయింట్ Id",
              "LIVE_CLASS_LIST": "\tప్రత్యక్ష తరగతి జాబితా",
              "SYSTEM_SETTINGS": "\tసిస్టమ్ అమరికలను",
              "ZOOM_ACCOUNT_ID": "\tజూమ్ ఖాతా ఐడి",
              "MUTE_PARTICIPATS":
                  "\tప్రవేశించిన తర్వాత పాల్గొనేవారిని మ్యూట్ చేయండి.",
              "ZOOM_ADD_OWN_API": "\tజూమ్ యాడ్ ఓన్ API",
              "EDIT_LIVE_CLASSES": "\tప్రత్యక్ష తరగతిని సవరించండి",
              "LIVE_CLASS_METHOD": "\tప్రత్యక్ష తరగతి పద్ధతి",
              "PARTICIPATE_VIDEO":
                  "\tపాల్గొనేవారి వీడియో (పాల్గొనేవారు సమావేశంలో చేరినప్పుడు వీడియోను ప్రారంభించండి).",
              "LIVE_CLASS_SETTING": "\tప్రత్యక్ష తరగతి సెట్టింగ్",
              "ZOOM_CLIENT_SECRET": "జూమ్ క్లయింట్ రహస్యం",
              "DELETE_LIVE_CLASSES": "\tప్రత్యక్ష తరగతిని తొలగించండి",
              "ARE_YOU_SURE_DELETE_CLASS":
                  "మీరు ఈ ప్రత్యక్ష తరగతిని ఖచ్చితంగా తొలగించాలనుకుంటున్నారా?."
            },
            "PROJECT_VALIDATION": {
              "FILE_REQUIRED": "\tప్రాజెక్ట్ పత్రాలు అవసరం.",
              "INVALID_TL_ID":
                  "\tదయచేసి చెల్లుబాటు అయ్యే టీమ్ లీడర్ ఐడిని నమోదు చేయండి.",
              "PM_ID_REQUIRED": "ప్రాజెక్ట్ మేనేజర్ ఐడి అవసరం.",
              "TL_ID_REQUIRED": "\tటీమ్ లీడర్ ఐడి అవసరం.",
              "INVALID_CLIENT_ID":
                  "\tదయచేసి చెల్లుబాటు అయ్యే క్లయింట్ ఐడిని నమోదు చేయండి.",
              "CLIENT_ID_REQUIRED": "\tక్లయింట్ ఐడి అవసరం.",
              "PROJECT_NAME_VALID":
                  "\tదయచేసి చెల్లుబాటు అయ్యే ప్రాజెక్ట్ పేరును నమోదు చేయండి.",
              "PROJECT_NAME_REQUIRED": "\tప్రాజెక్ట్ పేరు అవసరం.",
              "PROJECT_TYPE_REQUIRED": "ప్రాజెక్ట్ రకం అవసరం.",
              "PROJECT_HOURS_REQUIRED": "ప్రాజెక్ట్ గంటలు అవసరం.",
              "PROJECT_DESCRIPTION_VALID":
                  "దయచేసి చెల్లుబాటు అయ్యే ప్రాజెక్ట్ వివరణను నమోదు చేయండి.\t",
              "PROJECT_DESCRIPTION_REQUIRED": "ప్రాజెక్ట్ వివరణ అవసరం."
            },
            "FEEDBACK_VALIDATION": {
              "STATUS_INVALID":
                  "దయచేసి చెల్లుబాటు అయ్యే స్థితిని నమోదు చేయండి.",
              "TITLE_REQUIRED": "టికెట్ టైటిల్ అవసరం.",
              "DESCRIPTION_REQUIRED": "\tటిక్కెట్ వివరణ అవసరం.",
              "INVALID_FEEDBACK_TYPE":
                  "\tదయచేసి చెల్లుబాటు అయ్యే రకాన్ని నమోదు చేయండి.",
              "FEEDBACK_TYPE_REQUIRED": "టికెట్ రకం అవసరం.\t"
            },
            "FE_ACCOUNT_SETTINGS": {
              "EMAIL": "ఇమెయిల్",
              "PROFILE": "\tవ్యక్తిగత సమాచారం",
              "PASSWORD": "\tపాస్వర్డ్",
              "MY_PROFILE": "నా జీవన వివరణ",
              "YOUR_PHOTO": "\tమీ ఫోటో",
              "NEW_PASSWORD": "\tకొత్త పాస్వర్డ్",
              "SAVE_PROFILE": "ప్రొఫైల్ సేవ్\t",
              "UPDATE_PASSWORD": "పాస్‌వర్డ్‌ని నవీకరించండి",
              "ACCOUNT_SETTINGS": "ఖాతా సెట్టింగ్‌లు",
              "CONFIRM_PASSWORD": "\tకొత్త పాస్‌వర్డ్‌ని నిర్ధారించండి",
              "CURRENT_PASSWORD": "\tప్రస్తుత పాస్వర్డ్",
              "PHOTO_DESCRIPTION": "\tఇది మీ ప్రొఫైల్‌లో ప్రదర్శించబడుతుంది."
            },
            "FE_WEBSITE_SETTINGS": {
              "FAVICON": "\tఫేవికాన్",
              "DARK_LOGO": "\tచీకటి లోగో",
              "ENABLE_RTL": "\tRTLని ప్రారంభించండి",
              "LIGHT_LOGO": "\tలైట్ లోగో",
              "TITLE_TEXT": "శీర్షిక వచనం",
              "DARK_LAYOUT": "\tచీకటి లేఅవుట్",
              "FOOTER_TEXT": "\tఫుటర్ టెక్స్ట్",
              "LAYOUT_SETTONGS": "లేఅవుట్ సెట్టింగ్‌లు",
              "CHOOSE_FILE_HERE": "\tఇక్కడ ఫైల్‌ని ఎంచుకోండి",
              "DEFAULT_LANGUAGE": "\tడిఫాల్ట్ భాష",
              "WEBSITE_SETTINGS": "\tవెబ్‌సైట్ సెట్టింగ్‌లు"
            },
            "ORGANIZATION_BRANCH": {
              "GET_ALL": "\tసంస్థ బ్రాంచ్ జాబితా విజయవంతంగా పొందింది..",
              "NOT_EXIST": "\tసంస్థ శాఖ ఉనికిలో లేదు.",
              "NOT_FOUND": "సంస్థ శాఖ కనుగొనబడలేదు.",
              "GET_DETAILS": "\tసంస్థ శాఖ వివరాలు విజయవంతంగా పొందబడ్డాయి.",
              "ALREADY_EXIST": "సంస్థ శాఖ ఇప్పటికే ఉంది.",
              "NAME_ALREADY_EXIST":
                  "సంస్థ బ్రాంచ్ పేరు ఇప్పటికే ఉంది, దయచేసి మరొక సంస్థ బ్రాంచ్ పేరుతో ప్రయత్నించండి\t",
              "CREATED_SUCCESSFULLY": "సంస్థ శాఖ విజయవంతంగా సృష్టించబడింది.\t",
              "DELETED_SUCCESSFULLY": "సంస్థ శాఖ విజయవంతంగా సృష్టించబడింది.\t",
              "UPDATED_SUCCESSFULLY": "\tసంస్థ శాఖ విజయవంతంగా నవీకరించబడింది.",
              "ORG_EMAIL_ALREADY_EXIST":
                  "సంస్థ ఇమెయిల్ ఇప్పటికే ఉంది, దయచేసి వేరే ఇమెయిల్‌ని ఉపయోగించండి",
              "MAX_BRANCH_LIMIT_REACHED":
                  "\tఈ ప్లాన్ కోసం గరిష్ట బ్రాంచ్ పరిమితిని చేరుకుంది"
            },
            "S3_BUCKET_VALIDATOR": {
              "ACCESS_KEY_REQUIRED": "యాక్సెస్ కీ అవసరం.",
              "SECRET_KEY_REQUIRED": "రహస్య కీ అవసరం.",
              "BUCKET_NAME_REQUIRED": "\tబకెట్ పేరు అవసరం.",
              "REGION_NAME_REQUIRED": "\tప్రాంతం పేరు అవసరం."
            },
            "CATEGORIES_VALIDATOR": {
              "NAME_REQUIRED": "వర్గాల పేరు అవసరం",
              "STATUS_REQUIRED": "\tవర్గాల స్థితి అవసరం",
              "CATEGORIES_IMAGE": "\tవర్గాల చిత్రం అవసరం"
            },
            "DEPARTMENT_VALIDATOR": {
              "HOD_REQUIRED": "\tవిభాగాధిపతి అవసరం.",
              "NAME_REQUIRED": "\tపేరు అవసరం.",
              "COURSE_REQUIRED": "కోర్సు అవసరం.",
              "STATUS_REQUIRED": "\tస్థితి అవసరం.",
              "DESCRIPTION_REQUIRED": "\tవివరణ అవసరం."
            },
            "ORGANIZATION_SECTION": {
              "GET_ALL": "\tసంస్థ విభాగం జాబితా విజయవంతంగా పొందింది..",
              "NOT_EXIST": "\tసంస్థ విభాగం ఉనికిలో లేదు.",
              "NOT_FOUND": "సంస్థ విభాగం కనుగొనబడలేదు.",
              "GET_DETAILS": "సంస్థ విభాగం వివరాలు విజయవంతంగా పొందబడ్డాయి.",
              "NOT_DELETED": "సంస్థ విభాగం తొలగించబడని సంబంధం ఉనికిలో ఉంది.",
              "SOME_DELETED":
                  "కొన్ని రికార్డ్‌లు విజయవంతంగా తొలగించబడ్డాయి, మరికొన్ని తొలగించబడలేదు.",
              "ALREADY_EXIST": "\tసంస్థ విభాగం ఇప్పటికే ఉంది.",
              "CLASS_ID_REQUIRED":
                  "\tఉపాధ్యాయుడిని కేటాయించడానికి క్లాస్ ఐడి అవసరం",
              "NAME_ALREADY_EXIST":
                  "సంస్థ విభాగం పేరు ఇప్పటికే ఉంది, దయచేసి మరొక సంస్థ విభాగం పేరుతో ప్రయత్నించండి",
              "GET_SECTION_SUBJECT": "\tసబ్జెక్టుల వారీగా విజయవంతంగా పొందండి.",
              "GET_SECTION_TEACHER":
                  "ఉపాధ్యాయుల విభాగాల వారీగా విజయం సాధిస్తారు.",
              "CREATED_SUCCESSFULLY": "సంస్థ విభాగం విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY": "సంస్థ విభాగం విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY": "సంస్థ విభాగం విజయవంతంగా నవీకరించబడింది.",
              "GET_SECTION_BY_TEACHER": "విభాగం జాబితా విజయవంతంగా పొందండి.",
              "SUBJECT_ASSIGN_SUCCESS": "\tవిషయం విజయవంతంగా కేటాయించబడింది.",
              "TEACHER_ASSIGN_SUCCESS":
                  "ఉపాధ్యాయుడు విజయవంతంగా నియమించబడ్డాడు.",
              "GET_ALL_SECTION_SUBJECT":
                  "\tసబ్జెక్ట్ జాబితా విభాగాల వారీగా విజయవంతంగా పొందండి.",
              "GET_ALL_SECTION_TEACHER":
                  "\tఉపాధ్యాయుల జాబితా విభాగాల వారీగా విజయవంతంగా పొందండి.",
              "STUDENT_GET_SUCCESSFULLY":
                  "\tవిద్యార్థుల విభాగాల వారీగా విజయం సాధిస్తారు",
              "UPDATE_SUBJECT_ASSIGN_SUCCESS":
                  "విభాగం విషయం విజయవంతంగా నవీకరించబడింది.",
              "UPDATE_TEACHER_ASSIGN_SUCCESS":
                  "విభాగం టీచర్ విజయవంతంగా నవీకరించబడింది.",
              "SECTION_SUBJECT_ALREADY_ASSIGN":
                  "ఈ విభాగం ఇప్పటికే సబ్జెక్ట్‌ని కేటాయించింది.",
              "SECTION_TEACHER_ALREADY_ASSIGN":
                  "\tఈ విభాగం ఇప్పటికే ఉపాధ్యాయుడిని కేటాయించింది.",
              "SECTION_SUBJECT_DELETED_SUCCESSFULLY":
                  "విభాగం యొక్క విషయం విజయవంతంగా తొలగించబడింది.",
              "SECTION_TEACHER_DELETED_SUCCESSFULLY":
                  "విభాగం ఉపాధ్యాయులు విజయవంతంగా తొలగించబడ్డారు."
            },
            "ORGANIZATION_SUBJECT": {
              "GET_ALL": "సంస్థ సబ్జెక్ట్ జాబితా విజయవంతంగా పొందింది..",
              "NOT_EXIST": "సంస్థ విషయం ఉనికిలో లేదు.",
              "NOT_FOUND": "\tసంస్థ విషయం కనుగొనబడలేదు.",
              "GET_DETAILS": "సంస్థ విషయం వివరాలు విజయవంతంగా పొందబడ్డాయి.",
              "NOT_DELETED": "\tసంస్థ విషయం తొలగించబడని సంబంధం ఉంది.",
              "SOME_DELETED":
                  "కొన్ని రికార్డ్‌లు విజయవంతంగా తొలగించబడ్డాయి, మరికొన్ని తొలగించబడలేదు.",
              "ALREADY_EXIST": "\tసంస్థ విషయం ఇప్పటికే ఉంది.",
              "CODE_ALREADY_EXIST": "\tసంస్థ సబ్జెక్ట్ కోడ్ ఇప్పటికే ఉంది.",
              "CREATED_SUCCESSFULLY": "సంస్థ విషయం విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY": "సంస్థ విషయం విజయవంతంగా తొలగించబడింది.",
              "UPDATED_SUCCESSFULLY": "సంస్థ విషయం విజయవంతంగా నవీకరించబడింది."
            },
            "TIMESHEET_VALIDATION": {
              "DATE_REQUIRED": "టైమ్‌షీట్ తేదీ అవసరం.",
              "INVALID_TASK_ID": "\tచెల్లని టాస్క్ ఐడి.",
              "TASK_ID_REQUIRED": "టాస్క్ ఐడి అవసరం.",
              "INVALID_PROJECT_ID": "చెల్లని ప్రాజెక్ట్ ఐడి.",
              "PROJECT_ID_REQUIRED": "\tప్రాజెక్ట్ ఐడి అవసరం.",
              "TIMESHEET_HOURS_REQUIRED": "\tటైమ్‌షీట్ గంటలు అవసరం."
            },
            "ASSET_TYPE_VALIDATION": {
              "VALID_STATUS": "దయచేసి చెల్లుబాటు అయ్యే స్థితిని నమోదు చేయండి.",
              "NAME_REQUIRED": "ఆస్తి రకం పేరు అవసరం.",
              "STATUS_REQUIRED": "\tఆస్తి రకం స్థితి అవసరం."
            },
            "FE_LIBRARY_MANAGEMENT": {
              "DOB": "\tDOB",
              "BOOK": "\tపుస్తకం",
              "FINE": "\tఫైన్",
              "ROLE": "\tపాత్ర",
              "PRICE": "\tధర",
              "SR_NO": "\tశ్రీ నం",
              "AUTHOR": "రచయిత",
              "REMARK": "వ్యాఖ్య",
              "APPROVE": "ఆమోదించడానికి",
              "EDITION": "\tఎడిషన్",
              "ADD_BOOK": "\tపుస్తకాన్ని జోడించండి",
              "CATEGORY": "\tవర్గం",
              "RETURNED": "\tతిరిగి వచ్చారు",
              "EDIT_BOOK": "పుస్తకాన్ని సవరించండి",
              "POST_DATE": "\tపోస్ట్ తేదీ",
              "PUBLISHER": "\tప్రచురణకర్త",
              "USER_NAME": "\tవినియోగదారు పేరు",
              "VIEW_BOOK": "\tపుస్తకాన్ని వీక్షించండి",
              "BOOK_ISSUE": "\tపుస్తక సంచిక",
              "BOOK_TITLE": "\tపుస్తకం పేరు",
              "CREATED_AT": "వద్ద సృష్టించబడింది",
              "ISSUE_BOOK": "ఇష్యూ బుక్",
              "ISSUE_DATE": "జారి చేయు తేది",
              "STAFF_LIST": "\tసిబ్బంది జాబితా",
              "ADD_STUDENT": "\tవిద్యార్థిని జోడించండి",
              "BOOK_NUMBER": "\tబుక్ నంబర్",
              "COVER_IMAGE": "ముఖచిత్రం",
              "DELETE_BOOK": "\tపుస్తకాన్ని తొలగించండి",
              "DESCRIPTION": "\tవివరణ",
              "RETURN_DATE": "\tతిరిగి వచ్చు తేదీ",
              "SELECT_BOOK": "\tపుస్తకాన్ని ఎంచుకోండి",
              "BOOK_DETAILS": "\tబుక్ వివరాలు",
              "BOOK_ISBN_NO": "\tబుక్ ISBN నం",
              "BOOK_REQUEST": "బుక్ అభ్యర్థన",
              "ISSUED_BOOKS": "\tజారీ చేసిన పుస్తకాలు",
              "REQUEST_BOOK": "\tఅభ్యర్థన పుస్తకం",
              "RETURNE_BOOK": "రిటర్న్ బుక్",
              "STUDENT_NAME": "\tపేరు",
              "USER_DETAILS": "వినియోగదారు వివరాలు",
              "BOOK_CATEGORY": "\tపుస్తక వర్గం",
              "CATEGORY_NAME": "\tవర్గం పేరు",
              "ISSUED_COPIES": "\tజారీ చేయబడిన కాపీలు",
              "PURCHASE_DATE": "\tకొనిన తేదీ",
              "STAFF_MEMBERS": "\tసిబ్బంది",
              "LIBRARY_STATUS": "\tలైబ్రరీ-హోదా",
              "TOTAL_QUANTITY": "\tమొత్తం పరిమాణం",
              "ADD_STAFF_MEMBER": "\tమొత్తం పరిమాణం",
              "ISSUED_BOOK_LIST": "జారీ చేసిన పుస్తకాల జాబితా",
              "ADD_BOOK_CATEGORY": "పుస్తక వర్గాన్ని జోడించండి",
              "ADD_LIBRAY_NUMBER": "\tలైబ్రరీ నంబర్‌ని జోడించండి",
              "BOOK_CATEGORY_NAME": "\tపుస్తక వర్గం పేరు",
              "EDIT_BOOK_CATEGORY": "పుస్తక వర్గాన్ని సవరించండి\t",
              "EDIT_LIBRAY_NUMBER": "\tలైబ్రరీ నంబర్‌ని సవరించండి",
              "LIBRARY_MANAGEMENT": "\tలైబ్రరీ నిర్వహణ",
              "VIEW_BOOK_CATEGORY": "పుస్తక వర్గాన్ని వీక్షించండి",
              "LIBRARY_CARD_NUMBER": "\tలైబ్రరీ కార్డ్ నంబర్",
              "DELETE_BOOK_CATEGORY": "పుస్తక వర్గాన్ని తొలగించండి\t",
              "SELECT_BOOK_CATEGORY": "పుస్తక వర్గాన్ని ఎంచుకోండి",
              "ARE_YOU_SURE_WANT_TO_DELETE_THIS_BOOK":
                  "\tమీరు ఖచ్చితంగా ఈ పుస్తకాన్ని తొలగించాలనుకుంటున్నారా?",
              "ARE_YOU_SURE_WANT_TO_DELETE_THIS_CATEGORY":
                  "\tమీరు ఖచ్చితంగా ఈ వర్గాన్ని తొలగించాలనుకుంటున్నారా?"
            },
            "ISSUE_TYPE_VALIDATION": {
              "NAME_REQUIRED": "\tసమస్య రకం శీర్షిక అవసరం."
            },
            "FE_ROLE_AND_PERMISSION": {
              "READ": "\tచదవండి",
              "TOTAL": "\tమొత్తం",
              "USERS": "\tవినియోగదారులు",
              "WRITE": "వ్రాయడానికి\t",
              "CENCEL": "రద్దు చేయండి",
              "DELETE": "\tతొలగించు",
              "UPDATE": "\tనవీకరించు",
              "EDIT_ROLE": "పాత్రను సవరించండి",
              "EDIT_USER": "వినియోగదారు అనుమతిని సవరించండి\t",
              "ROLE_ACCESS": "\tపాత్ర యాక్సెస్",
              "USER_ACCESS": "\tవినియోగదారు యాక్సెస్",
              "NO_ROLE_PERMISSION":
                  "\tఈ పాత్రకు ప్రస్తుతం కేటాయించిన మాడ్యూల్‌లు లేదా అనుమతులు లేవు.",
              "ROLE_AND_PERMISSION": "\tపాత్రలు-అనుమతులు",
              "UPDATE_ROLE_PERMISSION": "పాత్ర అనుమతిని నవీకరించండి",
              "UPDATE_USER_PERMISSION": "\tవినియోగదారు అనుమతిని నవీకరించండి"
            },
            "ORGANIZATION_VALIDATION": {
              "VALID_EMAIL":
                  "\tదయచేసి చెల్లుబాటు అయ్యే ఇమెయిల్‌ని నమోదు చేయండి",
              "NAME_REQUIRED": "\tసంస్థ పేరు అవసరం",
              "EMAIL_REQUIRED": "\tఇమెయిల్ అవసరం.",
              "VALID_PHONE_NO":
                  "దయచేసి చెల్లుబాటు అయ్యే ఫోన్ నంబర్‌ను నమోదు చేయండి"
            },
            "ORGANIZATION_ADMIN_STAFF": {
              "NOT_FOUND": "సంస్థ నిర్వాహక సిబ్బంది కనుగొనబడలేదు",
              "GET_SUCCESSFULLY":
                  "సంస్థ అడ్మిన్ సిబ్బంది విజయవంతంగా పొందుతారు.",
              "IMPORT_SUCESSFULLY":
                  "\tసంస్థ నిర్వాహక సిబ్బంది విజయవంతంగా దిగుమతి అయ్యారు.",
              "CREATED_SUCCESSFULLY":
                  "\tసంస్థ నిర్వాహక సిబ్బంది విజయవంతంగా సృష్టించబడ్డారు.",
              "DELETED_SUCCESSFULLY":
                  "\tసంస్థ నిర్వాహక సిబ్బంది విజయవంతంగా తొలగించబడ్డారు.",
              "UPDATED_SUCCESSFULLY":
                  "\tసంస్థ నిర్వాహక సిబ్బంది విజయవంతంగా నవీకరించబడ్డారు.",
              "GET_LIST_SUCCESSFULLY":
                  "ఆర్గనైజేషన్ అడ్మిన్ స్టాఫ్ జాబితా విజయవంతమైంది.",
              "EXCEL_DEPARTMENT_ISSUE": "\tఅందించిన శాఖ ఉనికిలో లేదు",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "\tఎక్సెల్ షీట్‌లో సంస్థ నిర్వాహక సిబ్బంది ఇప్పటికే ఉన్నారు"
            },
            "ASSIGN_TICKET_TYPE_PERSON": {
              "GET": "\tటికెట్ రకం కేటాయించిన వ్యక్తి విజయవంతంగా పొందండి.",
              "ADDED": "టికెట్ రకానికి వ్యక్తి విజయవంతంగా కేటాయించబడ్డారు.",
              "UPDATE": "కేటాయించిన టిక్కెట్ రకం విజయవంతంగా నవీకరించబడింది."
            },
            "EMAIL_TEMPLATE_VALIDATION": {
              "EMAIL_BODY": "శరీరం అవసరం.",
              "EMAIL_KEYS": "\tకీలు అవసరం.",
              "EMAIL_TITLE": "శీర్షిక అవసరం.",
              "EMAIL_STATUS": "\tస్థితి అవసరం.",
              "EMAIL_SUBJECT": "సబ్జెక్ట్ అవసరం.",
              "EMAIL_BODY_VALUE": "శరీరానికి html విలువ ఉండాలి.",
              "EMAIL_TITLE_LENGTH": "\tశీర్షికలో కనీసం 3 అక్షరాలు ఉండాలి.",
              "EMAIL_STATUS_NUMERIC":
                  "\tదయచేసి చెల్లుబాటు అయ్యే స్థితిని నమోదు చేయండి.",
              "EMAIL_SUBJECT_LENGTH":
                  "\tసబ్జెక్ట్‌లో కనీసం 2 మరియు గరిష్టంగా 50 అక్షరాలు ఉండాలి."
            },
            "FE_ORGANIZATION_STRUCTURE": {
              "CODE": "\tకోడ్",
              "ROOM": "\tగది",
              "TYPE": "\tటైప్ చేయండి",
              "CLASS": "\tతరగతి",
              "SUBJECT": "\tవిషయం",
              "ADD_ROOM": "\tగదిని జోడించండి",
              "CAPACITY": "\tకెపాసిటీ",
              "FACILITY": "\tసౌకర్యం",
              "LOCATION": "\tస్థానం",
              "SEMESTER": "సెమిస్టర్",
              "ADD_CLASS": "తరగతిని జోడించండి\t",
              "EDIT_ROOM": "గదిని సవరించండి",
              "VIEW_ROOM": "వీక్షణ గది",
              "CLASS_NAME": "\tతరగతి పేరు",
              "DEPARTMENT": "శాఖ",
              "EDIT_CLASS": "\tతరగతిని సవరించండి",
              "VIEW_CLASS": "తరగతిని వీక్షించండి",
              "ADD_SUBJECT": "\tసబ్జెక్ట్ జోడించండి",
              "DELETE_ROOM": "గదిని తొలగించండి",
              "DESCRIPTION": "\tవివరణ",
              "ROOM_NUMBER": "\tగది సంఖ్య",
              "SELECT_ROOM": "గదిని ఎంచుకోండి",
              "CREATED DATE": "\tవివరణ",
              "CREATED_DATE": "విభాగం తేదీ",
              "DELETE_CLASS": "\tతరగతిని తొలగించండి",
              "EDIT_SUBJECT": "\tవిషయాన్ని సవరించండి",
              "SUBJECT_CODE": "సబ్జెక్ట్ కోడ్",
              "SUBJECT_NAME": "\tవిషయం పేరు",
              "TEACHER_NAME": "\tటీచర్ పేరు",
              "VIEW_SUBJECT": "విషయాన్ని వీక్షించండి",
              "ADD_DEPARTMENT": "శాఖను జోడించండి",
              "ASSIGN_SUBJECT": "\tసబ్జెక్ట్ కేటాయించండి",
              "DELETE_SUBJECT": "\tవిషయాన్ని తొలగించండి",
              "SELECT_TEACHER": "\tటీచర్‌ని ఎంచుకోండి",
              "DEPARTMENT_CODE": "డిపార్ట్మెంట్ కోడ్",
              "DEPARTMENT_NAME": "శాఖ పేరు",
              "EDIT_DEPARTMENT": "డిపార్ట్‌మెంట్‌ని సవరించండి",
              "VIEW_DEPARTMENT": "విభాగం చూడండి",
              "DELETE_DEPARTMENT": "\tశాఖను తొలగించండి",
              "ASSIGN_SUBJECT_LIST": "\tవిషయ జాబితాను కేటాయించండి",
              "EDIT_ASSIGN_SUBJECT": "అసైన్ సబ్జెక్ట్‌ని సవరించండి",
              "ASSIGN_CLASS_TEACHER": "\tక్లాస్ టీచర్‌ని కేటాయించండి",
              "DELETE_ASSIGN_SUBJECT": "\tఅసైన్ సబ్జెక్ట్‌ని తొలగించండి",
              "LABEL_DEPARTMENT_CODE": "\tడిపార్ట్‌మెంట్ కోడ్*",
              "LABEL_DEPARTMENT_NAME": "\tశాఖ పేరు*",
              "UPDATE_ASSIGN_SUBJECT": "\tఅసైన్ సబ్జెక్ట్‌ని అప్‌డేట్ చేయండి",
              "ORGANIZATION_STRUCTURE": "సంస్థ నిర్మాణం",
              "ASSIGN_CLASS_TEACHER_LIST":
                  "తరగతి ఉపాధ్యాయుల జాబితాను కేటాయించండి",
              "EDIT_ASSIGN_CLASS_TEACHER": "\tక్లాస్ టీచర్‌ని కేటాయించండి",
              "DELETE_ASSIGN_CLASS_TEACHER": "అసైన్ క్లాస్ టీచర్‌ని తొలగించండి",
              "UPDATE_ASSIGN_CLASS_TEACHER": "\tక్లాస్ టీచర్‌ని అప్పగించండి",
              "ARE_YOU_SURE_WANT_DELETE_ROOM":
                  "\tమీరు ఖచ్చితంగా ఈ గదిని తొలగించాలనుకుంటున్నారా?",
              "ARE_YOU_SURE_WANT_DELETE_CLASS":
                  "\tమీరు ఖచ్చితంగా ఈ తరగతిని తొలగించాలనుకుంటున్నారా?",
              "ARE_YOU_SURE_WANT_DELETE_SUBJECT":
                  "\tమీరు తొలగించాలనుకుంటున్నారా ఖచ్చితంగా?",
              "ARE_YOU_SURE_WANT_DELETE_DEPARTMENT":
                  "\tమీరు ఖచ్చితంగా ఈ విభాగాన్ని తొలగించాలనుకుంటున్నారా?",
              "ARE_YOU_SURE_WANT_DELETE_ASSIGN_SUBJECT":
                  "\tమీరు ఈ కేటాయించిన విషయాన్ని ఖచ్చితంగా తొలగించాలనుకుంటున్నారా?",
              "ARE_YOU_SURE_WANT_DELETE_ASSIGN_CLASS_TEACHER":
                  "\tమీరు ఈ కేటాయించిన తరగతి ఉపాధ్యాయుడిని ఖచ్చితంగా తొలగించాలనుకుంటున్నారా?"
            },
            "PUBLIC_HOLIDAY_VALIDATION": {
              "DATE_SIZE": "\t13 అంకెల తేదీ స్ట్రింగ్‌ను నమోదు చేయండి.",
              "YEAR_SIZE": "\tసంవత్సరం పరిమాణం కనీసం 4 అంకెలు.",
              "DAY_REQUIRED": "\tరోజు పేరు అవసరం.",
              "DATE_REQUIRED": "\tతేదీ అవసరం.",
              "YEAR_REQUIRED": "సంవత్సరం అవసరం.",
              "HOLIDAY_REQUIRED": "సెలవు పేరు అవసరం."
            },
            "ACKNOWLEDGEMENT_CATEGORIES": {
              "NOT_FOUND": "రసీదు కేటగిరీలు కనుగొనబడలేదు",
              "NOT_DELETED": "రసీదు తొలగించబడని సంబంధం ఉంది.",
              "SOME_DELETED":
                  "\tకొన్ని రికార్డ్‌లు విజయవంతంగా తొలగించబడ్డాయి, మరికొన్ని తొలగించబడలేదు.",
              "ALREADY_EXIST": "\tవర్గం ఇప్పటికే ఉంది",
              "EXCEL_NOT_FOUND":
                  "\tఅక్నాలెడ్జ్‌మెంట్ కేటగిరీలు ఎక్సెల్ కనుగొనబడలేదు",
              "GET_SUCCESSFULLY":
                  "\tఅక్నాలెడ్జ్‌మెంట్ కేటగిరీలు విజయవంతంగా అందుతాయి.",
              "NAME_ALREADY_EXIST":
                  "\tరసీదు కేటగిరీల పేరు ఇప్పటికే ఉంది దయచేసి మరొక రసీదు కేటగిరీల పేరుతో ప్రయత్నించండి",
              "CREATED_SUCCESSFULLY":
                  "రసీదు వర్గాలు విజయవంతంగా సృష్టించబడ్డాయి.\t",
              "DELETED_SUCCESSFULLY":
                  "రసీదు వర్గాలు విజయవంతంగా తొలగించబడ్డాయి.\t",
              "UPDATED_SUCCESSFULLY":
                  "రసీదు వర్గాలు విజయవంతంగా నవీకరించబడ్డాయి.\t",
              "GET_LIST_SUCCESSFULLY":
                  "అక్నాలెడ్జ్‌మెంట్ కేటగిరీల జాబితా విజయవంతంగా అందుతుంది.\t",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "అక్నాలెడ్జ్‌మెంట్ కేటగిరీలు ఎక్సెల్ యొక్క json ఫైల్ విజయవంతంగా సృష్టించబడింది\t"
            },
            "FE_ORGANIZATION_ADMIN_STAFF": {
              "ORG": "\tసంస్థ సిబ్బంది",
              "ADD_ORG": "\tసంస్థ సిబ్బందిని జోడించండి",
              "ADD_ORG_STAFF": "సంస్థ సిబ్బందిని జోడించండి\t",
              "EDIT_ORG_STAFF": "సంస్థ సిబ్బందిని సవరించండి\t",
              "VIEW_ORG_STAFF": "సంస్థ సిబ్బందిని వీక్షించండి\t",
              "USER_PERMISSION": "వినియోగదారు అనుమతి\t",
              "DELETE_ORG_STAFF": "సంస్థ సిబ్బందిని తొలగించండి\t",
              "UPDATE_ORG_STAFF": "సంస్థ సిబ్బందిని నవీకరించండి",
              "ARE_YOU_ORG_STAFF":
                  "మీరు ఖచ్చితంగా ఈ సంస్థ సిబ్బందిని తొలగించాలనుకుంటున్నారా?.\t",
              "ADD_ORG_PERMISSION": "సంస్థ అనుమతిని జోడించండి\t",
              "EDIT_USER_PERMISSION": "వినియోగదారు అనుమతిని సవరించండి\t",
              "ADD_ORGANIZATION_STAFF": "సంస్థ సిబ్బందిని జోడించండి\t",
              "ORGANIZATION_ADMIN_STAFF": "\tసంస్థ నిర్వాహక సిబ్బంది",
              "ORGANIZATION_ADMIN_STAFF_LIST":
                  "సంస్థ నిర్వాహక సిబ్బంది జాబితా\t"
            },
            "ORGANIZATION_BRANCH_VALIDATION": {
              "VALID_EMAIL": "బ్రాంచ్ ఇమెయిల్ చెల్లదు.",
              "ZIP_REQUIRED": "బ్రాంచ్ జిప్ అవసరం",
              "CITY_REQUIRED": "బ్రాంచ్ సిటీ అవసరం",
              "NAME_REQUIRED": "\tశాఖ పేరు అవసరం.",
              "EMAIL_REQUIRED": "బ్రాంచ్ ఇమెయిల్ అవసరం.",
              "STATE_REQUIRED": "\tశాఖ స్థితి అవసరం",
              "ADDRESS_REQUIRED": "\tబ్రాంచ్ చిరునామా అవసరం.",
              "COUNTRY_REQUIRED": "\tబ్రాంచ్ దేశం అవసరం",
              "TIMEZONE_REQUIRED": "బ్రాంచ్ టైమ్‌జోన్ అవసరం.",
              "DESCRIPTION_REQUIRED": "\tశాఖ సమాచారం అవసరం."
            },
            "ORGANIZATION_BRANCH_ADMIN_STAFF": {
              "NOT_FOUND": "\tసంస్థ బ్రాంచ్ అడ్మిన్ సిబ్బంది కనుగొనబడలేదు",
              "EXCEL_NOT_FOUND":
                  "సంస్థ బ్రాంచ్ అడ్మిన్ స్టాఫ్ ఎక్సెల్ కనుగొనబడలేదు\t",
              "GET_SUCCESSFULLY":
                  "\tసంస్థ బ్రాంచ్ అడ్మిన్ సిబ్బంది విజయవంతంగా పొందుతారు.",
              "IMPORT_SUCESSFULLY":
                  "సంస్థ బ్రాంచ్ అడ్మిన్ స్టాఫ్ విజయవంతంగా దిగుమతి చేయబడింది.\t",
              "CREATED_SUCCESSFULLY":
                  "సంస్థ బ్రాంచ్ అడ్మిన్ స్టాఫ్ విజయవంతంగా సృష్టించబడింది.",
              "DELETED_SUCCESSFULLY":
                  "\tసంస్థ బ్రాంచ్ అడ్మిన్ సిబ్బంది విజయవంతంగా తొలగించబడ్డారు.",
              "UPDATED_SUCCESSFULLY":
                  "సంస్థ బ్రాంచ్ అడ్మిన్ స్టాఫ్ విజయవంతంగా నవీకరించబడింది.",
              "GET_LIST_SUCCESSFULLY":
                  "సంస్థ బ్రాంచ్ అడ్మిన్ స్టాఫ్ జాబితా విజయవంతంగా పొందండి.",
              "EXCEL_DEPARTMENT_ISSUE": "అందించిన శాఖ ఉనికిలో లేదు\t",
              "EXCEL_STUDEN_ALREADY_EXIST":
                  "ఎక్సెల్ షీట్‌లో సంస్థ బ్రాంచ్ అడ్మిన్ సిబ్బంది ఇప్పటికే ఉన్నారు"
            },
            "ORGANIZATION_SECTION_VALIDATION": {
              "ROOM_NUMBER": "గది సంఖ్య అవసరం.\t",
              "NAME_REQUIRED": "\tసంస్థ విభాగం పేరు అవసరం.",
              "DESCRIPTION_REQUIRED": "వివరణ అవసరం."
            },
            "ORGANIZATION_SUBJECT_VALIDATION": {
              "NAME_REQUIRED": "\tసంస్థ విషయం పేరు అవసరం.",
              "CLASS_REQUIRED": "\tతరగతి అవసరం",
              "CREATED_BY_REQUIRED": "ద్వారా సృష్టించబడిన సంస్థ విషయం అవసరం"
            },
            "FE_ORGANIZATION_BRANCH_ADMIN_STAFF": {
              "ORG_BRANCH_STAFF": "\tఆర్గనైజేషన్ బ్రాంచ్ స్టాఫ్",
              "ADD_ORG_PERMISSION": "\tసంస్థ అనుమతిని జోడించండి",
              "ADD_ORG_BRANCH_STAFF": "సంస్థ బ్రాంచ్ సిబ్బందిని జోడించండి",
              "EDIT_ORG_BRANCH_STAFF":
                  "\tఆర్గనైజేషన్ బ్రాంచ్ స్టాఫ్‌ని సవరించండి",
              "VIEW_ORG_BRANCH_STAFF": "సంస్థ బ్రాంచ్ సిబ్బందిని వీక్షించండి",
              "DELETE_ORG_BRANCH_STAFF": "సంస్థ బ్రాంచ్ సిబ్బందిని తొలగించండి",
              "UPDATE_ORG_BRANCH_STAFF": "సంస్థ బ్రాంచ్ సిబ్బందిని నవీకరించండి",
              "ARE_YOU_ORG_BRANCH_STAFF":
                  "\tమీరు ఈ సంస్థ బ్రాంచ్ సిబ్బందిని ఖచ్చితంగా తొలగించాలనుకుంటున్నారా?.\t",
              "ORGANIZATION_BRANCH_ADMIN_STAFF":
                  "ఆర్గనైజేషన్ బ్రాంచ్ అడ్మిన్ స్టాఫ్",
              "ORGANIZATION_BRANCH_ADMIN_STAFF_LIST":
                  "సంస్థ బ్రాంచ్ అడ్మిన్ జాబితా"
            },
            "ACKNOWLEDGEMENTCATEGORIES_VALIDATOR": {
              "NAME_REQUIRED": "\tరసీదు వర్గాల పేరు అవసరం",
              "DESCRIPTION_REQUIRED": "రసీదు వర్గాల వివరణ అవసరం."
            },
            "ACKNOWLEDGEMENT_CATEGORIES_VALIDATOR": {
              "NOT_FOUND": "\tరసీదు కేటగిరీలు కనుగొనబడలేదు",
              "ALREADY_EXIST": "\tవర్గం ఇప్పటికే ఉంది",
              "EXCEL_NOT_FOUND":
                  "\tఅక్నాలెడ్జ్‌మెంట్ కేటగిరీలు ఎక్సెల్ కనుగొనబడలేదు",
              "GET_SUCCESSFULLY":
                  "\tఅక్నాలెడ్జ్‌మెంట్ కేటగిరీలు విజయవంతంగా అందుతాయి.",
              "NAME_ALREADY_EXIST":
                  "\tరసీదు కేటగిరీల పేరు ఇప్పటికే ఉంది దయచేసి మరొక రసీదు కేటగిరీల పేరుతో ప్రయత్నించండి",
              "CREATED_SUCCESSFULLY":
                  "\tరసీదు వర్గాలు విజయవంతంగా సృష్టించబడ్డాయి.",
              "DELETED_SUCCESSFULLY":
                  "రసీదు వర్గాలు విజయవంతంగా తొలగించబడ్డాయి.",
              "UPDATED_SUCCESSFULLY":
                  "రసీదు వర్గాలు విజయవంతంగా నవీకరించబడ్డాయి.",
              "GET_LIST_SUCCESSFULLY":
                  "\tఅక్నాలెడ్జ్‌మెంట్ కేటగిరీల జాబితా విజయవంతంగా అందుతుంది.",
              "EXCEL_JSONFILE_CREATED_SUCCESSFULLY":
                  "అక్నాలెడ్జ్‌మెంట్ కేటగిరీలు ఎక్సెల్ యొక్క json ఫైల్ విజయవంతంగా సృష్టించబడింది"
            },
            "ORGANIZATION_BRANCH_ADMIN_VALIDATION": {
              "VALID_EMAIL": "\tబ్రాంచ్ అడ్మిన్ ఇమెయిల్ చెల్లదు.",
              "ZIP_REQUIRED": "బ్రాంచ్ అడ్మిన్ జిప్ అవసరం",
              "CITY_REQUIRED": "\tబ్రాంచ్ అడ్మిన్ సిటీ అవసరం",
              "PASSWORD_SIZE": "\tపాస్‌వర్డ్‌లో కనీసం 6 అక్షరాలు ఉండాలి.",
              "EMAIL_REQUIRED": "బ్రాంచ్ అడ్మిన్ ఇమెయిల్ అవసరం.",
              "STATE_REQUIRED": "\tబ్రాంచ్ అడ్మిన్ స్థితి అవసరం",
              "ADDRESS_REQUIRED": "\tబ్రాంచ్ చిరునామా అవసరం.",
              "COUNTRY_REQUIRED": "బ్రాంచ్ అడ్మిన్ దేశం అవసరం",
              "LAST_NAME_REQUIRED": "బ్రాంచ్ అడ్మిన్ చివరి పేరు అవసరం.",
              "FIRST_NAME_REQUIRED": "బ్రాంచ్ అడ్మిన్ మొదటి పేరు అవసరం.",
              "PASSWORD_VALIDATION":
                  "\tపాస్‌వర్డ్ ఒక పెద్ద అక్షరం, ఒక చిన్న అక్షరం, ఒక ప్రత్యేక అక్షరం, ఒక అంకె మరియు కనిష్టంగా 6 కలిపి ఉండాలి."
            }
          },
          "createdAt": "2024-04-04T08:17:02.782Z",
          "updatedAt": "2024-05-16T06:33:10.684Z",
          "created_by": "Anantha Super Admin",
          "updated_by": "Anantha Super Admin",
          "created_at_timezone": "2024-04-04T13:47:02.782Z"
        },
        {
          "id": "55edd5be-a55f-40e4-9278-5dbac609971f",
          "language": "German",
          "code": "de_de",
          "status": "1",
          "messages": null,
          "createdAt": "2024-04-04T08:17:33.341Z",
          "updatedAt": "2024-04-04T08:17:33.341Z",
          "created_by": "Anantha Super Admin",
          "updated_by": null,
          "created_at_timezone": "2024-04-04T13:47:33.341Z"
        },
        {
          "id": "290f96e8-3d66-46d6-97c0-767948cb43aa",
          "language": "Frenchs",
          "code": "fr",
          "status": "1",
          "messages": {
            "CR": {"GET_CR": "test"}
          },
          "createdAt": "2024-04-04T08:17:51.950Z",
          "updatedAt": "2024-04-23T05:18:55.649Z",
          "created_by": "Anantha Super Admin",
          "updated_by": "Anantha Super Admin",
          "created_at_timezone": "2024-04-04T13:47:51.950Z"
        },
        {
          "id": "b17f6ab4-98d4-4337-9c19-32170fc87c09",
          "language": "Italian",
          "code": "it",
          "status": "2",
          "messages": {},
          "createdAt": "2024-04-20T11:45:40.895Z",
          "updatedAt": "2024-04-24T13:22:04.951Z",
          "created_by": "Anantha Super Admin",
          "updated_by": "Anantha Super Admin",
          "created_at_timezone": "2024-04-20T17:15:40.895Z"
        },
        {
          "id": "13e44505-db6a-4f78-b729-2c6fe5500463",
          "language": "Greek",
          "code": "el_cy",
          "status": "1",
          "messages": {},
          "createdAt": "2024-04-23T08:54:25.793Z",
          "updatedAt": "2024-04-23T12:15:00.261Z",
          "created_by": "Anantha Super Admin",
          "updated_by": "Anantha Super Admin",
          "created_at_timezone": "2024-04-23T14:24:25.793Z"
        },
        {
          "id": "807d4692-a83d-48d3-aec1-53b05883e369",
          "language": "Oddissi",
          "code": "be",
          "status": "1",
          "messages": {
            "CR": {
              "GET_CR": "\t",
              "PROJECT_CR_NOT_AVAILABLE": "This project has no change request"
            },
            "PLAN": {"NOT_FOUND": "\tPlan not found"}
          },
          "createdAt": "2024-04-23T11:20:48.283Z",
          "updatedAt": "2024-04-24T05:12:14.530Z",
          "created_by": "Anantha Super Admin",
          "updated_by": "Anantha Super Admin",
          "created_at_timezone": "2024-04-23T16:50:48.283Z"
        }
      ],
      "pageSize": 10,
      "page": 1,
      "total": 13
    }
  }.toString();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
