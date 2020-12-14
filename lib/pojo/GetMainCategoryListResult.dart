class GetMainCategoryListResult {
  List<GetMainCategoryList> getMainCategoryList;

  GetMainCategoryListResult({this.getMainCategoryList});

  GetMainCategoryListResult.fromJson(Map<String, dynamic> json) {
    if (json['GetMainCategoryList'] != null) {
      getMainCategoryList = new List<GetMainCategoryList>();
      json['GetMainCategoryList'].forEach((v) {
        getMainCategoryList.add(new GetMainCategoryList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.getMainCategoryList != null) {
      data['GetMainCategoryList'] =
          this.getMainCategoryList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GetMainCategoryList {
  int mainCategoryId;
  String name;
  String image;
  String status;
  List<GetSubCategoryList> getSubCategoryList;

  GetMainCategoryList(
      {this.mainCategoryId,
        this.name,
        this.image,
        this.status,
        this.getSubCategoryList});

  GetMainCategoryList.fromJson(Map<String, dynamic> json) {
    mainCategoryId = json['MainCategoryId'];
    name = json['Name'];
    image = json['Image'];
    status = json['Status'];
    if (json['GetSubCategoryList'] != null) {
      getSubCategoryList = new List<GetSubCategoryList>();
      json['GetSubCategoryList'].forEach((v) {
        getSubCategoryList.add(new GetSubCategoryList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MainCategoryId'] = this.mainCategoryId;
    data['Name'] = this.name;
    data['Image'] = this.image;
    data['Status'] = this.status;
    if (this.getSubCategoryList != null) {
      data['GetSubCategoryList'] =
          this.getSubCategoryList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GetSubCategoryList {
  int mainCategoryId;
  String mainCategoryName;
  int subCategoryId;
  String name;
  String image;
  String status;

  GetSubCategoryList(
      {this.mainCategoryId,
        this.mainCategoryName,
        this.subCategoryId,
        this.name,
        this.image,
        this.status});

  GetSubCategoryList.fromJson(Map<String, dynamic> json) {
    mainCategoryId = json['MainCategoryId'];
    mainCategoryName = json['MainCategoryName'];
    subCategoryId = json['SubCategoryId'];
    name = json['Name'];
    image = json['Image'];
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MainCategoryId'] = this.mainCategoryId;
    data['MainCategoryName'] = this.mainCategoryName;
    data['SubCategoryId'] = this.subCategoryId;
    data['Name'] = this.name;
    data['Image'] = this.image;
    data['Status'] = this.status;
    return data;
  }
}
