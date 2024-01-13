import 'package:get/get.dart';

class GlobalVariables {
  static RxBool showLoader = false.obs;
  static String token = '';
  // static Rx<UserModel> userModel = UserModel().obs;
  static RxInt profileCompletion = 0.obs;
  static RxInt badgeCount = 0.obs;
  static bool isLanguageChanged = false;
}
