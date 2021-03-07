import 'package:get/get.dart';

import 'package:rick_and_morty/app/modules/characters/bindings/characters_binding.dart';
import 'package:rick_and_morty/app/modules/characters/views/character_details_view.dart';
import 'package:rick_and_morty/app/modules/characters/views/characters_view.dart';
import 'package:rick_and_morty/app/modules/episodes/bindings/episodes_binding.dart';
import 'package:rick_and_morty/app/modules/episodes/views/episodes_view.dart';
import 'package:rick_and_morty/app/modules/home/bindings/home_binding.dart';
import 'package:rick_and_morty/app/modules/home/views/home_view.dart';
import 'package:rick_and_morty/app/modules/locations/bindings/locations_binding.dart';
import 'package:rick_and_morty/app/modules/locations/views/locations_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CHARACTERS,
      page: () => CharactersView(),
      binding: CharactersBinding(),
    ),
    GetPage(
      name: _Paths.CHARACTERS_DETAILS,
      page: () => CharacterDetailsView(),
    ),
    GetPage(
      name: _Paths.LOCATIONS,
      page: () => LocationsView(),
      binding: LocationsBinding(),
    ),
    GetPage(
      name: _Paths.EPISODES,
      page: () => EpisodesView(),
      binding: EpisodesBinding(),
    ),
  ];
}
