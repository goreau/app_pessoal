import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'splash_controller.dart';

final spinkit = SpinKitCubeGrid(
  color: Colors.white,
  size: 200.0,
);

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
                child: spinkit,
              ),
            ));
  }
}
