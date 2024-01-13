import 'package:get/get.dart';

class CommonFunctions {
  // static String? validateTextField(value, BuildContext context) {
  //   if (value.isEmpty) {
  //     return "Field is Required";
  //   } else {
  //     return null;
  //   }
  // }
  static String? validateDefaultTxtField(String? value) {
    if (GetUtils.isBlank(value)!) {
      return "Field is required";
    } else {
      return null;
    }
  }

  static String? validateDefaultTxtFieldWithCustomMessage(
      String? value, String? message) {
    if (GetUtils.isBlank(value)!) {
      return "$message";
    } else {
      return null;
    }
  }

  static String? passwordvalidation(String? value, String? message) {
    if (GetUtils.isBlank(value)!) {
      return "$message is required";
    } else if (GetUtils.isLengthLessThan(value, 8)) {
      return "$message must be at least 8 charactors";
      //return " The password must be at least 8 charactes";
    } else {
      return null;
    }
  }
}
