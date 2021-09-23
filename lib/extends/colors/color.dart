import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'constant.dart';

const ColorName = ConstantColor();

// generate random color
randomColor() {
  return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
      .withOpacity(1.0);
}

// fixed color based on first leter
fixedColor(String text) {
  var split = text[0].toUpperCase();
  var data;
  if (split == 'A') {
    data = ColorName.colorNameA;
  } else if (split == 'B') {
    data = ColorName.colorNameB;
  } else if (split == 'C') {
    data = ColorName.colorNameC;
  } else if (split == 'D') {
    data = ColorName.colorNameD;
  } else if (split == 'E') {
    data = ColorName.colorNameE;
  } else if (split == 'F') {
    data = ColorName.colorNameF;
  } else if (split == 'G') {
    data = ColorName.colorNameG;
  } else if (split == 'H') {
    data = ColorName.colorNameH;
  } else if (split == 'I') {
    data = ColorName.colorNameI;
  } else if (split == 'J') {
    data = ColorName.colorNameJ;
  } else if (split == 'K') {
    data = ColorName.colorNameK;
  } else if (split == 'L') {
    data = ColorName.colorNameL;
  } else if (split == 'M') {
    data = ColorName.colorNameM;
  } else if (split == 'N') {
    data = ColorName.colorNameN;
  } else if (split == 'O') {
    data = ColorName.colorNameO;
  } else if (split == 'P') {
    data = ColorName.colorNameP;
  } else if (split == 'Q') {
    data = ColorName.colorNameQ;
  } else if (split == 'R') {
    data = ColorName.colorNameR;
  } else if (split == 'S') {
    data = ColorName.colorNameS;
  } else if (split == 'T') {
    data = ColorName.colorNameT;
  } else if (split == 'U') {
    data = ColorName.colorNameU;
  } else if (split == 'V') {
    data = ColorName.colorNameV;
  } else if (split == 'W') {
    data = ColorName.colorNameW;
  } else if (split == 'X') {
    data = ColorName.colorNameX;
  } else if (split == 'Y') {
    data = ColorName.colorNameY;
  } else if (split == 'Z') {
    data = ColorName.colorNameY;
  } else {
    data = ColorName.colorDefault;
  }
  return data;
}
