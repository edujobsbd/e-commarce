// To parse this JSON data, do
//
//     final getAllCaregory = getAllCaregoryFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetAllCaregory getAllCaregoryFromJson(String str) => GetAllCaregory.fromJson(json.decode(str));

String getAllCaregoryToJson(GetAllCaregory data) => json.encode(data.toJson());
//constractor call mean create a copy of class.



class GetAllCaregory {
  GetAllCaregory({
    required this.status,
    required this.msg,
    required this.data,
  });

  String status;
  String msg;
  List<AllCategoryL> data;

  factory GetAllCaregory.fromJson(Map<String, dynamic> json) => GetAllCaregory(
    status: json["status"],
    msg: json["msg"],
    data: List<AllCategoryL>.from(json["data"].map((x) => AllCategoryL.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "msg": msg,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class AllCategoryL {
  AllCategoryL({
    required this.id,
    required this.name,
    required this.categoryImage,
    required this.isActive,
  });

  int id;
  String name;
  String categoryImage;
  int isActive;

  factory AllCategoryL.fromJson(Map<String, dynamic> json) => AllCategoryL(
    id: json["id"],
    name: json["name"],
    categoryImage: json["category_image"],
    isActive: json["is_active"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "category_image": categoryImage,
    "is_active": isActive,
  };
}
