part of '../../cubit/home/home_cubit.dart';

/// Home screen state
class HomeState extends Equatable {
  /// background color for the Home screen
  final Color backgroundColor;

  /// font color for the Home screen
  final Color fontColor;

  @override
  List<Object> get props => [
        backgroundColor,
        fontColor,
      ];

  /// Initializes [Colors.amber] as default for [backgroundColor]
  /// Initializes [Colors.black] as default for [fontColor]
  const HomeState({
    this.backgroundColor = Colors.amber,
    this.fontColor = Colors.black,
  });

  /// returns copy of [HomeState] with new parameters
  HomeState copyWith({
    Color? backgroundColor,
    Color? fontColor,
  }) {
    return HomeState(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      fontColor: fontColor ?? this.fontColor,
    );
  }
}
