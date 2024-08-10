
class LoginResponse {
  dynamic status;
  String? message;
  LoginResponseData? loginResponseData;

  LoginResponse({this.status, this.message, this.loginResponseData});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    loginResponseData = json['data'] != null
        ? new LoginResponseData.fromJson(json['data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.loginResponseData != null) {
      data['data'] = this.loginResponseData!.toJson();
    }
    return data;
  }
}

class LoginResponseData {
  UserDetailsData? userDetailsData;
  String? token;

  LoginResponseData({this.userDetailsData, this.token});

  LoginResponseData.fromJson(Map<String, dynamic> json) {
    userDetailsData = json['user'] != null
        ? new UserDetailsData.fromJson(json['user'])
        : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.userDetailsData != null) {
      data['user'] = this.userDetailsData!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class UserDetailsData {
  String? objectId;
  String? username;
  String? email;
  String? createdAt;
  String? updatedAt;
  String? firstName;
  String? lastName;
  String? userRole; // Updated to handle user role
  Map<String, dynamic>? acl;

  UserDetailsData({
    this.objectId,
    this.username,
    this.email,
    this.createdAt,
    this.updatedAt,
    this.firstName,
    this.lastName,
    this.userRole,
    this.acl,
  });

  UserDetailsData.fromJson(Map<String, dynamic> json) {
    objectId = json['objectId'];
    username = json['username'];
    email = json['email'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    userRole = json['user_role'] != null
        ? json['user_role']['className']
        : null;
    acl = json['ACL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['objectId'] = this.objectId;
    data['username'] = this.username;
    data['email'] = this.email;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    if (this.userRole != null) {
      data['user_role'] = {'__type': 'Relation', 'className': this.userRole};
    }
    data['ACL'] = this.acl;
    return data;
  }
}
//
// class UserDetailsData {
//   String? id;
//   String? firstName;
//   String? middleName;
//   String? lastName;
//   String? bloodGroup;
//   String? bioData;
//   String? nationality;
//   String? dob;
//   String? email;
//   String? profilePicture;
//   String? gender;
//   String? organizationId;
//   String? organizationBranchId;
//   num? status;
//   String? languageId;
//   String? studentId;
//   String? staffId;
//   String? forgotPasswordToken;
//   String? joiningDate;
//   UserRole? userRole;
//   List<UserContacts>? userContacts;
//   List<UserAddresses>? userAddresses;
//
//   Branch? branch;
//   // List<RolePermission>? rolePermission;
//
//   UserDetailsData(
//       {this.id,
//       this.firstName,
//       this.middleName,
//       this.lastName,
//       this.bloodGroup,
//       this.bioData,
//       this.nationality,
//       this.dob,
//       this.email,
//       this.profilePicture,
//       this.gender,
//       this.organizationId,
//       this.organizationBranchId,
//       this.status,
//       this.languageId,
//       this.studentId,
//       this.staffId,
//       this.forgotPasswordToken,
//       this.joiningDate,
//       this.userRole,
//       this.userContacts,
//       this.userAddresses,
//       this.branch,
//       // this.rolePermission
//       });
//
//   UserDetailsData.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     firstName = json['first_name'];
//     middleName = json['middle_name'];
//     lastName = json['last_name'];
//     bloodGroup = json['blood_group'];
//     bioData = json['bio_data'];
//     nationality = json['nationality'];
//     dob = json['dob'];
//     email = json['email'];
//     profilePicture = json['profile_picture'];
//     gender = json['gender'];
//     organizationId = json['organization_id'];
//     organizationBranchId = json['organization_branch_id'];
//     status = json['status'];
//     languageId = json['language_id'];
//     studentId = json['student_id'];
//     staffId = json['staff_id'];
//     forgotPasswordToken = json['forgot_password_token'];
//     joiningDate = json['joining_date'];
//     userRole = json['user_role'] != null
//         ? new UserRole.fromJson(json['user_role'])
//         : null;
//     if (json['user_contacts'] != null) {
//       userContacts = <UserContacts>[];
//       json['user_contacts'].forEach((v) {
//         userContacts!.add(new UserContacts.fromJson(v));
//       });
//     }
//     if (json['user_addresses'] != null) {
//       userAddresses = <UserAddresses>[];
//       json['user_addresses'].forEach((v) {
//         userAddresses!.add(new UserAddresses.fromJson(v));
//       });
//     }
//
//     branch =
//         json['branch'] != null ? new Branch.fromJson(json['branch']) : null;
//     // if (json['rolePermission'] != null) {
//     //   rolePermission = <RolePermission>[];
//     //   json['rolePermission'].forEach((v) {
//     //     rolePermission!.add(new RolePermission.fromJson(v));
//     //   });
//     // }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['first_name'] = this.firstName;
//     data['middle_name'] = this.middleName;
//     data['last_name'] = this.lastName;
//     data['blood_group'] = this.bloodGroup;
//     data['bio_data'] = this.bioData;
//     data['nationality'] = this.nationality;
//     data['dob'] = this.dob;
//     data['email'] = this.email;
//     data['profile_picture'] = this.profilePicture;
//     data['gender'] = this.gender;
//     data['organization_id'] = this.organizationId;
//     data['organization_branch_id'] = this.organizationBranchId;
//     data['status'] = this.status;
//     data['language_id'] = this.languageId;
//     data['student_id'] = this.studentId;
//     data['staff_id'] = this.staffId;
//     data['forgot_password_token'] = this.forgotPasswordToken;
//     data['joining_date'] = this.joiningDate;
//     if (this.userRole != null) {
//       data['user_role'] = this.userRole!.toJson();
//     }
//     if (this.userContacts != null) {
//       data['user_contacts'] =
//           this.userContacts!.map((v) => v.toJson()).toList();
//     }
//     if (this.userAddresses != null) {
//       data['user_addresses'] =
//           this.userAddresses!.map((v) => v.toJson()).toList();
//     }
//
//     if (this.branch != null) {
//       data['branch'] = this.branch!.toJson();
//     }
//     // if (this.rolePermission != null) {
//     //   data['rolePermission'] =
//     //       this.rolePermission!.map((v) => v.toJson()).toList();
//     // }
//     return data;
//   }
// }

class UserRole {
  String? id;
  Role? role;

  UserRole({this.id, this.role});

  UserRole.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    role = json['role'] != null ? new Role.fromJson(json['role']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.role != null) {
      data['role'] = this.role!.toJson();
    }
    return data;
  }
}

class Role {
  String? id;
  String? name;
  String? slug;
  String? colourCode;

  Role({this.id, this.name, this.slug, this.colourCode});

  Role.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    colourCode = json['colour_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['colour_code'] = this.colourCode;
    return data;
  }
}

class UserContacts {
  String? id;
  Contact? contact;

  UserContacts({this.id, this.contact});

  UserContacts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    contact =
        json['contact'] != null ? new Contact.fromJson(json['contact']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.contact != null) {
      data['contact'] = this.contact!.toJson();
    }
    return data;
  }
}

class UserAddresses {
  String? id;
  Address? address;

  UserAddresses({this.id, this.address});

  UserAddresses.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    address =
        json['address'] != null ? new Address.fromJson(json['address']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    return data;
  }
}

class Address {
  String? id;
  String? addressLine1;
  String? addressLine2;
  String? zip;
  bool? isPrimaryAddress;
  Country? country;
  State? state;
  State? city;
  TimeZone? timeZone;

  Address(
      {this.id,
      this.addressLine1,
      this.addressLine2,
      this.zip,
      this.isPrimaryAddress,
      this.country,
      this.state,
      this.city,
      this.timeZone});

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    addressLine1 = json['address_line_1'];
    addressLine2 = json['address_line_2'];
    zip = json['zip'];
    isPrimaryAddress = json['is_primary_address'];
    country =
        json['country'] != null ? new Country.fromJson(json['country']) : null;
    state = json['state'] != null ? new State.fromJson(json['state']) : null;
    city = json['city'] != null ? new State.fromJson(json['city']) : null;
    timeZone = json['time_zone'] != null
        ? new TimeZone.fromJson(json['time_zone'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['address_line_1'] = this.addressLine1;
    data['address_line_2'] = this.addressLine2;
    data['zip'] = this.zip;
    data['is_primary_address'] = this.isPrimaryAddress;
    if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
    if (this.state != null) {
      data['state'] = this.state!.toJson();
    }
    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
    if (this.timeZone != null) {
      data['time_zone'] = this.timeZone!.toJson();
    }
    return data;
  }
}

class Country {
  String? id;
  String? name;
  String? iso2;

  Country({this.id, this.name, this.iso2});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    iso2 = json['iso2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['iso2'] = this.iso2;
    return data;
  }
}

class State {
  String? id;
  String? name;

  State({this.id, this.name});

  State.fromJson(Map<String, dynamic> json) {
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

class TimeZone {
  String? id;
  String? zoneName;
  String? gmtOffsetName;

  TimeZone({this.id, this.zoneName, this.gmtOffsetName});

  TimeZone.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    zoneName = json['zoneName'];
    gmtOffsetName = json['gmtOffsetName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['zoneName'] = this.zoneName;
    data['gmtOffsetName'] = this.gmtOffsetName;
    return data;
  }
}

class Organization {
  String? id;
  String? name;
  String? info;
  String? address;
  String? email;
  String? phoneCountryCode;
  String? phone;
  String? domainName;
  String? orgCategory;
  String? orgCode;
  String? theme;
  num? status;
  String? ipAddress;
  String? subscriptionId;
  String? createdAt;
  bool? isSubscribed;
  String? countryId;
  String? stateId;
  String? cityId;
  String? languageId;
  String? timezoneId;
  String? footer;
  String? title;
  String? websiteFavicon;
  String? darkThemeLogo;
  String? lightThemeLogo;
  bool? isRTL;
  String? customerId;
  bool? darkMode;
  String? createdAtTimezone;
  Country? country;
  State? state;
  State? city;
  TimeZone? timeZone;
  Language? language;
  List<OrganizationAdmins>? organizationAdmins;
  List<OrganizationPlans>? organizationPlans;

  Organization(
      {this.id,
      this.name,
      this.info,
      this.address,
      this.email,
      this.phoneCountryCode,
      this.phone,
      this.domainName,
      this.orgCategory,
      this.orgCode,
      this.theme,
      this.status,
      this.ipAddress,
      this.subscriptionId,
      this.createdAt,
      this.isSubscribed,
      this.countryId,
      this.stateId,
      this.cityId,
      this.languageId,
      this.timezoneId,
      this.footer,
      this.title,
      this.websiteFavicon,
      this.darkThemeLogo,
      this.lightThemeLogo,
      this.isRTL,
      this.customerId,
      this.darkMode,
      this.createdAtTimezone,
      this.country,
      this.state,
      this.city,
      this.timeZone,
      this.language,
      this.organizationAdmins,
      this.organizationPlans});

  Organization.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    info = json['info'];
    address = json['address'];
    email = json['email'];
    phoneCountryCode = json['phone_country_code'];
    phone = json['phone'];
    domainName = json['domain_name'];
    orgCategory = json['org_category'];
    orgCode = json['org_code'];
    theme = json['theme'];
    status = json['status'];
    ipAddress = json['ip_address'];
    subscriptionId = json['subscription_id'];
    createdAt = json['createdAt'];
    isSubscribed = json['is_subscribed'];
    countryId = json['country_id'];
    stateId = json['state_id'];
    cityId = json['city_id'];
    languageId = json['language_id'];
    timezoneId = json['timezone_id'];
    footer = json['footer'];
    title = json['title'];
    websiteFavicon = json['website_favicon'];
    darkThemeLogo = json['dark_theme_logo'];
    lightThemeLogo = json['light_theme_logo'];
    isRTL = json['is_RTL'];
    customerId = json['customer_id'];
    darkMode = json['dark_mode'];
    createdAtTimezone = json['created_at_timezone'];
    country =
        json['country'] != null ? new Country.fromJson(json['country']) : null;
    state = json['state'] != null ? new State.fromJson(json['state']) : null;
    city = json['city'] != null ? new State.fromJson(json['city']) : null;
    timeZone = json['time_zone'] != null
        ? new TimeZone.fromJson(json['time_zone'])
        : null;
    language = json['language'] != null
        ? new Language.fromJson(json['language'])
        : null;
    if (json['organization_admins'] != null) {
      organizationAdmins = <OrganizationAdmins>[];
      json['organization_admins'].forEach((v) {
        organizationAdmins!.add(new OrganizationAdmins.fromJson(v));
      });
    }
    if (json['organization_plans'] != null) {
      organizationPlans = <OrganizationPlans>[];
      json['organization_plans'].forEach((v) {
        organizationPlans!.add(new OrganizationPlans.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['info'] = this.info;
    data['address'] = this.address;
    data['email'] = this.email;
    data['phone_country_code'] = this.phoneCountryCode;
    data['phone'] = this.phone;
    data['domain_name'] = this.domainName;
    data['org_category'] = this.orgCategory;
    data['org_code'] = this.orgCode;
    data['theme'] = this.theme;
    data['status'] = this.status;
    data['ip_address'] = this.ipAddress;
    data['subscription_id'] = this.subscriptionId;
    data['createdAt'] = this.createdAt;
    data['is_subscribed'] = this.isSubscribed;
    data['country_id'] = this.countryId;
    data['state_id'] = this.stateId;
    data['city_id'] = this.cityId;
    data['language_id'] = this.languageId;
    data['timezone_id'] = this.timezoneId;
    data['footer'] = this.footer;
    data['title'] = this.title;
    data['website_favicon'] = this.websiteFavicon;
    data['dark_theme_logo'] = this.darkThemeLogo;
    data['light_theme_logo'] = this.lightThemeLogo;
    data['is_RTL'] = this.isRTL;
    data['customer_id'] = this.customerId;
    data['dark_mode'] = this.darkMode;
    data['created_at_timezone'] = this.createdAtTimezone;
    if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
    if (this.state != null) {
      data['state'] = this.state!.toJson();
    }
    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
    if (this.timeZone != null) {
      data['time_zone'] = this.timeZone!.toJson();
    }
    if (this.language != null) {
      data['language'] = this.language!.toJson();
    }
    if (this.organizationAdmins != null) {
      data['organization_admins'] =
          this.organizationAdmins!.map((v) => v.toJson()).toList();
    }
    if (this.organizationPlans != null) {
      data['organization_plans'] =
          this.organizationPlans!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Language {
  String? id;
  String? language;
  String? code;

  Language({this.id, this.language, this.code});

  Language.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    language = json['language'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['language'] = this.language;
    data['code'] = this.code;
    return data;
  }
}

class OrganizationAdmins {
  String? id;
  String? organizationId;
  String? userId;
  bool? isDeleted;
  String? deletedOn;
  String? createdAt;
  String? updatedAt;

  OrganizationAdmins(
      {this.id,
      this.organizationId,
      this.userId,
      this.isDeleted,
      this.deletedOn,
      this.createdAt,
      this.updatedAt});

  OrganizationAdmins.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    organizationId = json['organization_id'];
    userId = json['user_id'];
    isDeleted = json['is_deleted'];
    deletedOn = json['deleted_on'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['organization_id'] = this.organizationId;
    data['user_id'] = this.userId;
    data['is_deleted'] = this.isDeleted;
    data['deleted_on'] = this.deletedOn;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class OrganizationPlans {
  String? id;
  String? planId;
  Plan? plan;

  OrganizationPlans({this.id, this.planId, this.plan});

  OrganizationPlans.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    planId = json['plan_id'];
    plan = json['plan'] != null ? new Plan.fromJson(json['plan']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['plan_id'] = this.planId;
    if (this.plan != null) {
      data['plan'] = this.plan!.toJson();
    }
    return data;
  }
}

class Plan {
  String? id;
  String? maxNumberOfUsers;
  String? maxNumberOfBranches;
  num? usersLimit;
  num? branchLimit;
  List<PlanModules>? planModules;

  Plan(
      {this.id,
      this.maxNumberOfUsers,
      this.maxNumberOfBranches,
      this.usersLimit,
      this.branchLimit,
      this.planModules});

  Plan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    maxNumberOfUsers = json['max_number_of_users'];
    maxNumberOfBranches = json['max_number_of_branches'];
    usersLimit = json['users_limit'];
    branchLimit = json['branch_limit'];
    if (json['plan_modules'] != null) {
      planModules = <PlanModules>[];
      json['plan_modules'].forEach((v) {
        planModules!.add(new PlanModules.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['max_number_of_users'] = this.maxNumberOfUsers;
    data['max_number_of_branches'] = this.maxNumberOfBranches;
    data['users_limit'] = this.usersLimit;
    data['branch_limit'] = this.branchLimit;
    if (this.planModules != null) {
      data['plan_modules'] = this.planModules!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PlanModules {
  String? id;
  String? moduleId;
  String? mainModuleId;

  PlanModules({this.id, this.moduleId, this.mainModuleId});

  PlanModules.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    moduleId = json['module_id'];
    mainModuleId = json['main_module_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['module_id'] = this.moduleId;
    data['main_module_id'] = this.mainModuleId;
    return data;
  }
}

class Branch {
  String? id;
  String? orgBranchName;
  String? orgBranchInfo;
  String? orgBranchAddress;
  String? orgBranchEmail;
  String? phoneCountryCode;
  String? orgBranchPhone;
  String? orgBranchCode;
  String? status;
  String? organizationId;
  String? cityId;
  String? stateId;
  String? countryId;
  String? languageId;
  String? timezoneId;
  String? zip;
  String? theme;
  String? lightThemeLogo;
  String? darkThemeLogo;
  String? websiteFavicon;
  String? title;
  String? footer;
  bool? isRTL;
  bool? darkMode;
  bool? isDeleted;
  String? createdBy;
  String? organizationBranchId;
  List<OrganizationBranchAdmins>? organizationBranchAdmins;
  Country? country;
  State? state;
  State? city;
  TimeZone? timeZone;
  List<Admins>? admins;

  Branch(
      {this.id,
      this.orgBranchName,
      this.orgBranchInfo,
      this.orgBranchAddress,
      this.orgBranchEmail,
      this.phoneCountryCode,
      this.orgBranchPhone,
      this.orgBranchCode,
      this.status,
      this.organizationId,
      this.cityId,
      this.stateId,
      this.countryId,
      this.languageId,
      this.timezoneId,
      this.zip,
      this.theme,
      this.lightThemeLogo,
      this.darkThemeLogo,
      this.websiteFavicon,
      this.title,
      this.footer,
      this.isRTL,
      this.darkMode,
      this.isDeleted,
      this.createdBy,
      this.organizationBranchId,
      this.organizationBranchAdmins,
      this.country,
      this.state,
      this.city,
      this.timeZone,
      this.admins});

  Branch.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orgBranchName = json['org_branch_name'];
    orgBranchInfo = json['org_branch_info'];
    orgBranchAddress = json['org_branch_address'];
    orgBranchEmail = json['org_branch_email'];
    phoneCountryCode = json['phone_country_code'];
    orgBranchPhone = json['org_branch_phone'];
    orgBranchCode = json['org_branch_code'];
    status = json['status'];
    organizationId = json['organization_id'];
    cityId = json['city_id'];
    stateId = json['state_id'];
    countryId = json['country_id'];
    languageId = json['language_id'];
    timezoneId = json['timezone_id'];
    zip = json['zip'];
    theme = json['theme'];
    lightThemeLogo = json['light_theme_logo'];
    darkThemeLogo = json['dark_theme_logo'];
    websiteFavicon = json['website_favicon'];
    title = json['title'];
    footer = json['footer'];
    isRTL = json['is_RTL'];
    darkMode = json['dark_mode'];
    isDeleted = json['is_deleted'];
    createdBy = json['created_by'];
    organizationBranchId = json['organization_branch_id'];
    if (json['organization_branch_admins'] != null) {
      organizationBranchAdmins = <OrganizationBranchAdmins>[];
      json['organization_branch_admins'].forEach((v) {
        organizationBranchAdmins!.add(new OrganizationBranchAdmins.fromJson(v));
      });
    }
    country =
        json['country'] != null ? new Country.fromJson(json['country']) : null;
    state = json['state'] != null ? new State.fromJson(json['state']) : null;
    city = json['city'] != null ? new State.fromJson(json['city']) : null;
    timeZone = json['time_zone'] != null
        ? new TimeZone.fromJson(json['time_zone'])
        : null;
    if (json['admins'] != null) {
      admins = <Admins>[];
      json['admins'].forEach((v) {
        admins!.add(new Admins.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['org_branch_name'] = this.orgBranchName;
    data['org_branch_info'] = this.orgBranchInfo;
    data['org_branch_address'] = this.orgBranchAddress;
    data['org_branch_email'] = this.orgBranchEmail;
    data['phone_country_code'] = this.phoneCountryCode;
    data['org_branch_phone'] = this.orgBranchPhone;
    data['org_branch_code'] = this.orgBranchCode;
    data['status'] = this.status;
    data['organization_id'] = this.organizationId;
    data['city_id'] = this.cityId;
    data['state_id'] = this.stateId;
    data['country_id'] = this.countryId;
    data['language_id'] = this.languageId;
    data['timezone_id'] = this.timezoneId;
    data['zip'] = this.zip;
    data['theme'] = this.theme;
    data['light_theme_logo'] = this.lightThemeLogo;
    data['dark_theme_logo'] = this.darkThemeLogo;
    data['website_favicon'] = this.websiteFavicon;
    data['title'] = this.title;
    data['footer'] = this.footer;
    data['is_RTL'] = this.isRTL;
    data['dark_mode'] = this.darkMode;
    data['is_deleted'] = this.isDeleted;
    data['created_by'] = this.createdBy;
    data['organization_branch_id'] = this.organizationBranchId;
    if (this.organizationBranchAdmins != null) {
      data['organization_branch_admins'] =
          this.organizationBranchAdmins!.map((v) => v.toJson()).toList();
    }
    if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
    if (this.state != null) {
      data['state'] = this.state!.toJson();
    }
    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
    if (this.timeZone != null) {
      data['time_zone'] = this.timeZone!.toJson();
    }
    if (this.admins != null) {
      data['admins'] = this.admins!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OrganizationBranchAdmins {
  String? id;
  String? organizationBranchId;
  String? userId;
  bool? isDeleted;

  OrganizationBranchAdmins(
      {this.id, this.organizationBranchId, this.userId, this.isDeleted});

  OrganizationBranchAdmins.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    organizationBranchId = json['organization_branch_id'];
    userId = json['user_id'];
    isDeleted = json['is_deleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['organization_branch_id'] = this.organizationBranchId;
    data['user_id'] = this.userId;
    data['is_deleted'] = this.isDeleted;
    return data;
  }
}

class Admins {
  String? id;
  String? firstName;
  String? middleName;
  String? lastName;
  String? bloodGroup;
  String? bioData;
  String? nationality;
  String? dob;
  String? email;
  String? profilePicture;
  String? gender;
  String? organizationId;
  String? organizationBranchId;
  num? status;
  String? languageId;
  String? studentId;
  String? staffId;
  String? forgotPasswordToken;
  String? joiningDate;
  String? password;
  String? createdAt;
  String? createdAtTimezone;
  UserRole? userRole;
  List<UserContacts>? userContacts;
  List<UserAddresses>? userAddresses;

  // List<RolePermission>? rolePermission;

  Admins(
      {this.id,
      this.firstName,
      this.middleName,
      this.lastName,
      this.bloodGroup,
      this.bioData,
      this.nationality,
      this.dob,
      this.email,
      this.profilePicture,
      this.gender,
      this.organizationId,
      this.organizationBranchId,
      this.status,
      this.languageId,
      this.studentId,
      this.staffId,
      this.forgotPasswordToken,
      this.joiningDate,
      this.password,
      this.createdAt,
      this.createdAtTimezone,
      this.userRole,
      this.userContacts,
      this.userAddresses,
      // this.parentDetails,
      // this.userLibraryCard,
      // this.rolePermission
      });

  Admins.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    middleName = json['middle_name'];
    lastName = json['last_name'];
    bloodGroup = json['blood_group'];
    bioData = json['bio_data'];
    nationality = json['nationality'];
    dob = json['dob'];
    email = json['email'];
    profilePicture = json['profile_picture'];
    gender = json['gender'];
    organizationId = json['organization_id'];
    organizationBranchId = json['organization_branch_id'];
    status = json['status'];
    languageId = json['language_id'];
    studentId = json['student_id'];
    staffId = json['staff_id'];
    forgotPasswordToken = json['forgot_password_token'];
    joiningDate = json['joining_date'];
    password = json['password'];
    createdAt = json['createdAt'];
    createdAtTimezone = json['created_at_timezone'];
    userRole = json['user_role'] != null
        ? new UserRole.fromJson(json['user_role'])
        : null;
    if (json['user_contacts'] != null) {
      userContacts = <UserContacts>[];
      json['user_contacts'].forEach((v) {
        userContacts!.add(new UserContacts.fromJson(v));
      });
    }
    if (json['user_addresses'] != null) {
      userAddresses = <UserAddresses>[];
      json['user_addresses'].forEach((v) {
        userAddresses!.add(new UserAddresses.fromJson(v));
      });
    }

    // if (json['rolePermission'] != null) {
    //   rolePermission = <RolePermission>[];
    //   json['rolePermission'].forEach((v) {
    //     rolePermission!.add(new RolePermission.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['middle_name'] = this.middleName;
    data['last_name'] = this.lastName;
    data['blood_group'] = this.bloodGroup;
    data['bio_data'] = this.bioData;
    data['nationality'] = this.nationality;
    data['dob'] = this.dob;
    data['email'] = this.email;
    data['profile_picture'] = this.profilePicture;
    data['gender'] = this.gender;
    data['organization_id'] = this.organizationId;
    data['organization_branch_id'] = this.organizationBranchId;
    data['status'] = this.status;
    data['language_id'] = this.languageId;
    data['student_id'] = this.studentId;
    data['staff_id'] = this.staffId;
    data['forgot_password_token'] = this.forgotPasswordToken;
    data['joining_date'] = this.joiningDate;
    data['password'] = this.password;
    data['createdAt'] = this.createdAt;
    data['created_at_timezone'] = this.createdAtTimezone;
    if (this.userRole != null) {
      data['user_role'] = this.userRole!.toJson();
    }
    if (this.userContacts != null) {
      data['user_contacts'] =
          this.userContacts!.map((v) => v.toJson()).toList();
    }
    if (this.userAddresses != null) {
      data['user_addresses'] =
          this.userAddresses!.map((v) => v.toJson()).toList();
    }

    // if (this.rolePermission != null) {
    //   data['rolePermission'] =
    //       this.rolePermission!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Contact {
  String? id;
  String? email;
  String? phoneCountryCode;
  String? phone;
  bool? isEmergencyNumber;

  Contact(
      {this.id,
      this.email,
      this.phoneCountryCode,
      this.phone,
      this.isEmergencyNumber});

  Contact.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    phoneCountryCode = json['phone_country_code'];
    phone = json['phone'];
    isEmergencyNumber = json['is_emergency_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['phone_country_code'] = this.phoneCountryCode;
    data['phone'] = this.phone;
    data['is_emergency_number'] = this.isEmergencyNumber;
    return data;
  }
}
