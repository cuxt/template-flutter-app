import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({required this.red, required this.green});

  final Color? red;
  final Color? green;

  @override
  CustomColors copyWith({Color? red, Color? green}) {
    return CustomColors(red: red ?? this.red, green: green ?? this.green);
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      red: Color.lerp(red, other.red, t),
      green: Color.lerp(green, other.green, t),
    );
  }

  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(red: red!.harmonizeWith(dynamic.primary));
  }
}
