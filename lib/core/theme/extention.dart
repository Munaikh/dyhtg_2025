import 'package:flutter/material.dart';

/// This is a convenience extension to access the theme
/// from the BuildContext
/// Instead of calling Theme.of(context) everywhere
/// You can just call context.theme or context.colors...
extension ThemeExt on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;

  TextTheme get textTheme => Theme.of(this).textTheme;

  ThemeData get theme => Theme.of(this);

  Brightness get brightness => Theme.of(this).brightness;
}