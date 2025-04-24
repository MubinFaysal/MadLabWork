import 'package:flutter/material.dart';

class TransectionsModel {
  String? title;
  String? subtitle;
  IconData? iconData;
  double? amount;

  TransectionsModel(
      {required this.title,
      required this.subtitle,
      required this.iconData,
      required this.amount}
  );
}
