class GetUserLoginResult {
  UserLoginResult userLoginResult;

  GetUserLoginResult({this.userLoginResult});

  GetUserLoginResult.fromJson(Map<String, dynamic> json) {
    userLoginResult = json['UserLoginResult'] != null
        ? new UserLoginResult.fromJson(json['UserLoginResult'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.userLoginResult != null) {
      data['UserLoginResult'] = this.userLoginResult.toJson();
    }
    return data;
  }
}

class UserLoginResult {
  String aboutInfo;
  String date;
  String emailId;
  String message;
  String mobile;
  String name;
  String password;
  String profilePic;
  String regId;
  String serviceStatus;
  String status;
  String tags;
  int userId;
  String userName;

  UserLoginResult(
      {this.aboutInfo,
        this.date,
        this.emailId,
        this.message,
        this.mobile,
        this.name,
        this.password,
        this.profilePic,
        this.regId,
        this.serviceStatus,
        this.status,
        this.tags,
        this.userId,
        this.userName});

  UserLoginResult.fromJson(Map<String, dynamic> json) {
    aboutInfo = json['AboutInfo'];
    date = json['Date'];
    emailId = json['EmailId'];
    message = json['Message'];
    mobile = json['Mobile'];
    name = json['Name'];
    password = json['Password'];
    profilePic = json['ProfilePic'];
    regId = json['RegId'];
    serviceStatus = json['ServiceStatus'];
    status = json['Status'];
    tags = json['Tags'];
    userId = json['UserId'];
    userName = json['UserName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AboutInfo'] = this.aboutInfo;
    data['Date'] = this.date;
    data['EmailId'] = this.emailId;
    data['Message'] = this.message;
    data['Mobile'] = this.mobile;
    data['Name'] = this.name;
    data['Password'] = this.password;
    data['ProfilePic'] = this.profilePic;
    data['RegId'] = this.regId;
    data['ServiceStatus'] = this.serviceStatus;
    data['Status'] = this.status;
    data['Tags'] = this.tags;
    data['UserId'] = this.userId;
    data['UserName'] = this.userName;
    return data;
  }
}
