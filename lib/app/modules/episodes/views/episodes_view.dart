import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/episodes_controller.dart';

class EpisodesView extends GetView<EpisodesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EpisodesView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'EpisodesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
