// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
// initializePage.dart

import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<dynamic>> initializePage() async {
  // 执行 Firestore 查询，获取用户记录
  QuerySnapshot<Map<String, dynamic>> snapshot =
      await FirebaseFirestore.instance.collection('users').get();

  // 将查询结果存储在临时变量中
  List<DocumentSnapshot<Map<String, dynamic>>> users = snapshot.docs;

  // 初始化 isTriggered 列表，并将所有元素设置为 true
  List<bool> isTriggered = List.generate(users.length, (index) => true);

  // 返回用户记录和初始化的 isTriggered 列表
  return [users, isTriggered];
}
