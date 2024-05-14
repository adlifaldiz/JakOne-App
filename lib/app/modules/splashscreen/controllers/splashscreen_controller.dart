import 'package:get/get.dart';
import 'package:jakone_app/app/helper/const_utils.dart';
import 'package:jakone_app/app/routes/app_pages.dart';

class SplashscreenController extends GetxController {
  var isVisible = false.obs;

  @override
  Future<void> onInit() async {
    await Future.delayed(duration500);
    isVisible(true);
    await Future.delayed(duration1s);
    onSplash();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSplash() async {
    await Future.delayed(duration3s).then((value) async {
      Get.offAllNamed(Routes.ON_BOARDING);
    });
  }
}
