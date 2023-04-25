import 'package:flutter/material.dart';

//TO DO make this better
extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get width => mediaQuery.size.width;
  double get height => mediaQuery.size.height;

  bool get isMobile => width < 800;
}
