import 'package:flutter/material.dart';

/**
 * primary color = 앱의 브랜드 색상
 * secondary color(accent color) = 앱의 버튼이나, 상호작용 하는 이벤트 종류들의 색상
 */
ThemeData theme() {
  return ThemeData(
    primaryColor: Colors.white, // 앱의 브랜드 색상
    appBarTheme: const AppBarTheme(
      // iconTheme: IconThemeData(color: Colors.blue)
    )
  );
}