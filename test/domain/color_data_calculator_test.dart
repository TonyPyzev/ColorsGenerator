import 'package:colorsgenerator/domain/color_data_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Checking the correctness of the relative brightness calculation', () {
    final colorDataCalculator = ColorDataCalculator();

    final relativeBrightness = colorDataCalculator
        .calculateRelativeBrightness(const Color.fromRGBO(33, 150, 243, 1));

    expect(relativeBrightness, 0.2860709045027159);
  });

  test('Checking the correctness of the contrast ratio calculation', () {
    final colorDataCalculator = ColorDataCalculator();

    final lightestColorBrightness = colorDataCalculator
        .calculateRelativeBrightness(const Color.fromRGBO(99, 188, 26, 1));
    final darkestColorBrightness = colorDataCalculator
        .calculateRelativeBrightness(const Color.fromRGBO(0, 0, 0, 1));

    final contrastRatio = colorDataCalculator.calculateContrastRatio(
      lightestColorBrightness,
      darkestColorBrightness,
    );

    expect(contrastRatio, 8.595396222798591);
  });
}
