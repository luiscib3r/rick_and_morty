import 'package:get/get.dart';
import 'package:rick_and_morty/app/data/models/character_model.dart';
import 'package:rick_and_morty/app/data/providers/character_provider.dart';

class CharactersController extends GetxController {
  var page = 0.obs;
  var isLoading = false.obs;

  final _characters = <Character>[].obs;
  List<Character> get characters => _characters.toList();

  final _lastPage = false.obs;

  List<Character> get character => _characters.toList();
  bool get lastPage => _lastPage.value;

  final CharacterProvider characterProvider;

  CharactersController(this.characterProvider);

  @override
  void onInit() {
    ever(page, (_) => _getAllCharacters());
    page++;
    super.onInit();
  }

  Future<void> _getAllCharacters() async {
    isLoading.value = true;
    try {
      final response =
          await characterProvider.getCharacterPage(pageNumber: page.value);

      _characters.addAll(response.body);
    } catch (e) {
      print(e);
    }
    isLoading.value = false;
  }

  void next() => page++;
}
