import 'package:app_pessoal/routes/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 2), () {
      Get.toNamed(Routes.HOME);
      //Transition.cupertino); //
    });
  }
}
