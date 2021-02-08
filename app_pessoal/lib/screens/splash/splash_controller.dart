import 'package:app_pessoal/routes/routes.dart';
import 'package:app_pessoal/services/tempo-helper.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  Tempo clima;
  @override
  void onReady() async {
    super.onReady();

    getLocation().then((tempo) => Get.toNamed(Routes.HOME));
  }

  Future<void> getLocation() async {
    TempoHelper tempo = TempoHelper();
    clima = await tempo.getTempo();
    //print(clima.local);
  }
}
