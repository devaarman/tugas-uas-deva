import 'package:flutter/material.dart';

class NotificationModel {
  final IconData icon;
  final String description;
  final String time;

  const NotificationModel({
    required this.icon,
    required this.description,
    required this.time,
  });
}