import 'package:fintechreal/core/theme/fintech_theme.dart'
    show FintechColors;
import 'package:flutter/material.dart'
    show StatelessWidget, Key, Widget, BuildContext, CircularProgressIndicator;

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: FintechColors.white,
    );
  }
}
