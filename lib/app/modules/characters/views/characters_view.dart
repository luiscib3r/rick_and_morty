import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/characters_controller.dart';

class CharactersView extends GetView<CharactersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CharactersView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CharactersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
