import 'package:flutter/cupertino.dart';
import 'package:sum_game/controllers/app_controller.dart';
import 'package:sum_game/widgets/score.dart';
import 'package:sum_game/widgets/options.dart';
import 'package:sum_game/widgets/operation.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.find();
    appController.setValues();
    return Column(children: const [
      Score(),
      Operation(),
      Options(),
    ]);
  }
}
