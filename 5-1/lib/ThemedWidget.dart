import 'package:book_app/MyTheme.dart';
import 'package:flutter/material.dart';

class ThemedWidget extends StatelessWidget {
  const ThemedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final myTheme = themeData.extension<MyTheme>()!;
    final color = myTheme.themeColor;
    return Container(width: 100, height: 100, color: color);
  }
}