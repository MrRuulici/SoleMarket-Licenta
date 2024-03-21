import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController instance = Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();

  void registerUser(String email, String password){
    
  }
}