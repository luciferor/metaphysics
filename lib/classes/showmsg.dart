import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class pubMsg {
  static void showSuccess(String _msg, BuildContext context) {
    CherryToast.success(
      title: Text(
        _msg,
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

  static void showError(String _msg, BuildContext context) {
    CherryToast.error(
      title: Text(
        _msg,
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

  static void showWarn(String _msg, BuildContext context) {
    CherryToast.warning(
      title: Text(
        _msg,
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

  static void showInfo(String _msg, BuildContext context) {
    CherryToast.info(
      title: Text(
        _msg,
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

  static Future<void> setStorage(String key, String value) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString(key, value);
  }

  static getStorage(String key) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString(key);
  }
}
