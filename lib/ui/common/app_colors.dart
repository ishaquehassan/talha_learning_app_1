import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color primary = Color(0xFF1777FF);
  static const Color text = Color(0xFF333333);
  static const LinearGradient primaryGradient = LinearGradient(colors: [
    Color(0xFF4200FF),
    Color(0xFF1777FF),
  ]);
  static const Color placeholder = Color(0xFFFBFBFB);
  static const Color error = Color(0xFFF55B53);
  static const Color errorPlaceholder = Color(0xFFFFF5F4);
  static const Color stroke = Color(0xFFF0F0F0);
  static const Color success = Color(0xFF34C759);
}
