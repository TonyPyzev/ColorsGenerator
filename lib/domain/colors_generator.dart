import 'dart:math';

import 'package:colorsgenerator/domain/color_data_calculator.dart';
import 'package:flutter/material.dart';

/// Class provides method for generating random color
class ColorsGenerator {
  /// method generate random color from RGB
  /// color range cover 16777216 colors
  static Color generateRandomColor() {
    final Random random = Random();
    final int red = random.nextInt(256);
    final int green = random.nextInt(256);
    final int blue = random.nextInt(256);

    return Color.fromRGBO(red, green, blue, 1.0);
  }

  /// returns black or white color depends on background relative brightness
  static Color fetchContrastColor(double bgRelBrightness) {
    const double blackColorBrightness = 0;
    const double whiteColorBrightness = 1;

    final ColorDataCalculator colorDataCalculator = ColorDataCalculator();

    final double blackContrastRatio =
        colorDataCalculator.calculateContrastRatio(
      bgRelBrightness,
      blackColorBrightness,
    );
    final double whiteContrastRatio =
        colorDataCalculator.calculateContrastRatio(
      whiteColorBrightness,
      bgRelBrightness,
    );

    return whiteContrastRatio > blackContrastRatio
        ? Colors.white
        : Colors.black;
  }
}
