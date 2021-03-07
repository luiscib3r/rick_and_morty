import 'package:get/get.dart';

import '../controllers/episodes_controller.dart';

class EpisodesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EpisodesController>(
      () => EpisodesController(),
    );
  }
}
