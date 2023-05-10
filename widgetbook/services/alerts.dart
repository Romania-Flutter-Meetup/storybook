import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class Alerts {
  static void showError(String message, BuildContext context) {
    MotionToast.error(title: const Text('Error'), description: Text(message))
        .show(context);
  }

  static void showSuccess(String message, BuildContext context) {
    MotionToast.success(title: const Text('Succes'), description: Text(message))
        .show(context);
  }

  static void showWarning(String message, BuildContext context) {
    MotionToast.warning(title: const Text('Succes'), description: Text(message))
        .show(context);
  }

  static void showInfo(String message, BuildContext context) {
    MotionToast.info(title: const Text('Succes'), description: Text(message))
        .show(context);
  }
}
