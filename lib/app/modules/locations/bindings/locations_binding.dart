import 'package:get/get.dart';
import 'package:rick_and_morty/app/data/providers/location_provider.dart';

import '../controllers/locations_controller.dart';

class LocationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocationProvider>(
      () => LocationProvider(),
    );

    Get.lazyPut<LocationsController>(
      () => LocationsController(
        Get.find(),
      ),
    );
  }
}
