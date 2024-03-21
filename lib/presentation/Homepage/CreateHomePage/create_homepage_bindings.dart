import 'package:aagash_s_application1/core/app_export.dart';
import 'package:aagash_s_application1/presentation/Authentication/signup_page_screen/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'create_homepage_controller.dart';

class CreateHomePageBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CreateHomePageController());
  }
}