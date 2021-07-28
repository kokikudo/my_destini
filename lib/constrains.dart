import 'package:flutter/material.dart';

ButtonStyle kButtonStyle(Color color) {
  return TextButton.styleFrom(
      backgroundColor: color,
      minimumSize: const Size(150, 70),
      shape: const StadiumBorder());
}
