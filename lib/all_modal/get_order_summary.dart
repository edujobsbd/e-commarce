// To parse this JSON data, do
//
//     final getAllSummary = getAllSummaryFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetAllSummary getAllSummaryFromJson(String str) => GetAllSummary.fromJson(json.decode(str));

String getAllSummaryToJson(GetAllSummary data) => json.encode(data.toJson());

class GetAllSummary {
  GetAllSummary({
   required this.newOrder,
   required this.processingOrder,
   required this.driveredOrder,
   required this.totalSelltoday,
   required this.totalSellweek,
   required this.totalSellmonth,
   required this.newCustomerThismonth,
   required this.totalOrderThismonth,
   required this.totalCustomer,
   required this.totalOrder,
  });

  int newOrder;
  int processingOrder;
  int driveredOrder;
  int totalSelltoday;
  int totalSellweek;
  int totalSellmonth;
  int newCustomerThismonth;
  int totalOrderThismonth;
  int totalCustomer;
  int totalOrder;

  factory GetAllSummary.fromJson(Map<String, dynamic> json) => GetAllSummary(
    newOrder: json["new_order"],
    processingOrder: json["processing_order"],
    driveredOrder: json["drivered_order"],
    totalSelltoday: json["total_selltoday"],
    totalSellweek: json["total_sellweek"],
    totalSellmonth: json["total_sellmonth"],
    newCustomerThismonth: json["new_customer_thismonth"],
    totalOrderThismonth: json["total_order_thismonth"],
    totalCustomer: json["total_customer"],
    totalOrder: json["total_order"],
  );

  Map<String, dynamic> toJson() => {
    "new_order": newOrder,
    "processing_order": processingOrder,
    "drivered_order": driveredOrder,
    "total_selltoday": totalSelltoday,
    "total_sellweek": totalSellweek,
    "total_sellmonth": totalSellmonth,
    "new_customer_thismonth": newCustomerThismonth,
    "total_order_thismonth": totalOrderThismonth,
    "total_customer": totalCustomer,
    "total_order": totalOrder,
  };
}
