import 'dart:convert';

import 'package:ccdriver/constant/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:shared_preferences/shared_preferences.dart';

import '../../../constant/api_endpoint.dart';

class AuthController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final otpController = TextEditingController();

  final mobileController = TextEditingController();
  final dobController = TextEditingController();
  final genderController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final pincodeController = TextEditingController();

  RxBool isLoading = false.obs;

  loginDriver() async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      Map<String, String> header = {
        'Content-type': 'application/json; charset=utf-8'
      };
      isLoading.value = true;

      Map body = {
        "username": nameController.text.toString(),
        "password": passwordController.text.toString(),
        "login_type": "normal",
        "facebook_id": "",
        "google_id": "",
        "firebase_id": ""
      };

      debugPrint(body.toString());
      http.Response response = await http.post(
        Uri.parse(APiEndPoint.login),
        headers: header,
        body: jsonEncode(body),
      );
      debugPrint(response.body);

      var data = json.decode(response.body);
      if (response.statusCode == 200) {
        if (data['status'] == true) {
          preferences.setString(AppString.token, data['token']);
          clear();
          Get.snackbar("Success", "Login Successfully");
        }
        isLoading.value = false;
        return true;
      } else {
        isLoading.value = false;

        Get.snackbar("Error", data["msg"]);
        return false;
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("Error", "Something went wrong! please try again later");
      debugPrint(e.toString());
      return false;
    }
  }

  clear() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    mobileController.clear();
    confirmPasswordController.clear();
    dobController.clear();
    genderController.clear();
    stateController.clear();
    addressController.clear();
    cityController.clear();
    pincodeController.clear();
  }
}
