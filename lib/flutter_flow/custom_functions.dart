import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<bool>? newCustomFunction(int com) {
  // 初始化 isTriggered 列表，并将所有元素设置为 true
  List<bool> isTriggered = List.generate(com, (index) => true);

  // 返回 isTriggered 列表
  return isTriggered;
}

int newCustomFunction2(int op) {
  return op - 1;
}
