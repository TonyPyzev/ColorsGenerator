import 'package:colorsgenerator/data/constants/font_constants.dart';
import 'package:colorsgenerator/ui/cubit/home/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Main screen of the app
class HomeScreen extends StatelessWidget {
  final String _centerText = 'Hey there';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () => _changeBackgroundColor(context),
            child: Container(
              color: state.backgroundColor,
              child: Center(
                child: Text(
                  _centerText,
                  style: TextStyle(
                    fontFamily: 'DancingScript',
                    color: state.fontColor,
                    fontSize: FontConstants.defaultFontSize,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _changeBackgroundColor(BuildContext context) {
    context.read<HomeCubit>().changeBgColorRandomly();
  }
}
