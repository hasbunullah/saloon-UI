import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_store_app/Screens/Login_Screen.dart';
import 'package:plant_store_app/Screens/plant_details.dart';

void main() {
  runApp( GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: login_screen(),
  ));
}
