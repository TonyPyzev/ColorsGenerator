import 'dart:math';

import 'package:flutter/material.dart';

/// Class provides different methods for calculating color data
class ColorDataCalculator {
  /// method calculates the contrast ratio of two colors
  /// returns contrast ratio
  /// from 1 (1:1 contast ratio) to 21 (21:1 contars ratio)
  double calculateContrastRatio(
    double lightestRelBrightness,
    double darkestRelBrightness,
  ) {
    final contrastRatio =
        (lightestRelBrightness + 0.05) / (darkestRelBrightness + 0.05);

    return contrastRatio;
  }

  /// method calculate color relative brightness
  /// returns relative brightness from 0 (dark) to 1 (light)
  double calculateRelativeBrightness(Color color) {
    final double redBrigthness = _calculateColorBrightness(color.red);
    final double greenBrigthness = _calculateColorBrightness(color.green);
    final double blueBrigthness = _calculateColorBrightness(color.blue);

    final double relativeBrightness = 0.2126 * redBrigthness +
        0.7152 * greenBrigthness +
        0.0722 * blueBrigthness;

    return relativeBrightness;
  }

  /// returns color brightness from 0 (dark) to 1 (light)
  double _calculateColorBrightness(int colorSRGB) {
    final double colorBrightness =
        pow((colorSRGB / 255 + 0.055) / 1.055, 2.4).toDouble();

    return colorBrightness;
  }
}
