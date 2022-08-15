import 'package:bloc/bloc.dart';
import 'package:colorsgenerator/domain/color_data_calculator.dart';
import 'package:colorsgenerator/domain/colors_generator.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'home_state.dart';

/// Home screen state manager
class HomeCubit extends Cubit<HomeState> {
  /// Initializes Home State for the [Cubit]
  HomeCubit() : super(const HomeState());

  /// method changes background color randomly
  /// and updates Home state
  void changeBgColorRandomly() {
    final generatedBackgroundColor = ColorsGenerator.generateRandomColor();
    final bgRelBrightness = ColorDataCalculator()
        .calculateRelativeBrightness(generatedBackgroundColor);
    final fontColor = ColorsGenerator.fetchContrastColor(bgRelBrightness);

    emit(
      state.copyWith(
        backgroundColor: generatedBackgroundColor,
        fontColor: fontColor,
      ),
    );
  }
}
