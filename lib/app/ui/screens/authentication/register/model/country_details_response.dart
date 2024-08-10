class CountryDetailsResponse {
  int? statusCode;
  String? message;
  CountryDetailsData? countryDetailsData;

  CountryDetailsResponse(
      {this.statusCode, this.message, this.countryDetailsData});

  CountryDetailsResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
    countryDetailsData =
        json['data'] != null ? CountryDetailsData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    data['message'] = message;
    if (countryDetailsData != null) {
      data['data'] = countryDetailsData!.toJson();
    }
    return data;
  }
}

class CountryDetailsData {
  dynamic totalPage;
  dynamic resultPerPage;
  dynamic totalCountry;
  List<CountryData>? countryData;

  CountryDetailsData(
      {this.totalPage,
      this.resultPerPage,
      this.totalCountry,
      this.countryData});

  CountryDetailsData.fromJson(Map<String, dynamic> json) {
    totalPage = json['totalPage'];
    resultPerPage = json['resultPerPage'];
    totalCountry = json['totalCountry'];
    if (json['countryData'] != null) {
      countryData = <CountryData>[];
      json['countryData'].forEach((v) {
        countryData!.add(CountryData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalPage'] = totalPage;
    data['resultPerPage'] = resultPerPage;
    data['totalCountry'] = totalCountry;
    if (countryData != null) {
      data['countryData'] = countryData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CountryData {
  String? sId;
  dynamic? name;
  String? currency;
  String? currencySymbol;
  String? phoneCode;
  String? numericCode;
  String? timezone;

  CountryData(
      {this.sId,
      this.name,
      this.currency,
      this.currencySymbol,
      this.phoneCode,
      this.numericCode,
      this.timezone});

  CountryData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    currency = json['currency'];
    currencySymbol = json['currencySymbol'];
    phoneCode = json['phoneCode'];
    numericCode = json['numericCode'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['currency'] = currency;
    data['currencySymbol'] = currencySymbol;
    data['phoneCode'] = phoneCode;
    data['numericCode'] = numericCode;
    data['timezone'] = timezone;
    return data;
  }
}
