import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';

import 'splash_controller.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SplashController(),
      builder: (_) => Scaffold(
        backgroundColor: Colors.green.shade400,
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: LoadingIndicator(
                indicatorType: Indicator.ballClipRotateMultiple)),
      ),
    );
  }
}
