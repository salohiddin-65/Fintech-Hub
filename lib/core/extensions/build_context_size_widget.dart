import 'package:flutter/material.dart' show BuildContext, MediaQuery;

extension BuildContextSize on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}
