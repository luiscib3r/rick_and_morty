import 'package:get/get.dart';

import '../controllers/characters_controller.dart';

class CharactersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CharactersController>(
      () => CharactersController(),
    );
  }
}
