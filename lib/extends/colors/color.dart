import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'constant.dart';

// generate random color
randomColor() {
  return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
      .withOpacity(1.0);
}

// fixed color based on first leter
fixedColor(String text) {
  if (text.isEmpty) {
    return ConstantColor.colorDefault;
  }

  var split = text[0].toUpperCase();

  return ConstantColor.colorIntial[split] ?? ConstantColor.colorDefault;
}
