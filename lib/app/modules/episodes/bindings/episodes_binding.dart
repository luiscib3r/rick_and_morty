import 'package:get/get.dart';
import 'package:rick_and_morty/app/data/providers/episode_provider.dart';

import '../controllers/episodes_controller.dart';

class EpisodesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EpisodeProvider>(
      () => EpisodeProvider(),
    );

    Get.lazyPut<EpisodesController>(
      () => EpisodesController(
        Get.find(),
      ),
    );
  }
}
