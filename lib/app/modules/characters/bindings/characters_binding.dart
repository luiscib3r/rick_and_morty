import 'package:get/get.dart';
import 'package:rick_and_morty/app/data/providers/character_provider.dart';

import '../controllers/characters_controller.dart';

class CharactersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CharacterProvider>(
      () => CharacterProvider(),
    );

    Get.lazyPut<CharactersController>(
      () => CharactersController(
        Get.find(),
      ),
    );
  }
}
