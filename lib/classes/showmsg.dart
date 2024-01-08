import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

// ignore: camel_case_types
class pubMsg {
  static void showSuccess(String msg, BuildContext context) {
    CherryToast.success(
      title: Text(
        msg,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      animationDuration: const Duration(milliseconds: 500),
      toastDuration: const Duration(milliseconds: 1000),
      animationType: AnimationType.fromTop,
      autoDismiss: true,
    ).show(context);
  }

  static void showError(String msg, BuildContext context) {
    CherryToast.error(
      title: Text(
        msg,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      animationDuration: const Duration(milliseconds: 500),
      toastDuration: const Duration(milliseconds: 1000),
      animationType: AnimationType.fromTop,
      autoDismiss: true,
    ).show(context);
  }

  static void showWarn(String msg, BuildContext context) {
    CherryToast.warning(
      title: Text(
        msg,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      animationDuration: const Duration(milliseconds: 500),
      toastDuration: const Duration(milliseconds: 1000),
      animationType: AnimationType.fromTop,
      autoDismiss: true,
    ).show(context);
  }

  static void showInfo(String msg, BuildContext context) {
    CherryToast.info(
      title: Text(
        msg,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      animationDuration: const Duration(milliseconds: 500),
      toastDuration: const Duration(milliseconds: 1000),
      animationType: AnimationType.fromTop,
      autoDismiss: true,
    ).show(context);
  }

  static void showLoading(String msg) {
    EasyLoading.show(status: msg);
  }

  static Future<void> setStorage(String key, String value) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString(key, value);
  }

  static getStorage(String key) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString(key);
  }
}
