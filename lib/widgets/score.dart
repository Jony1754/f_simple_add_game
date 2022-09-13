import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sum_game/controllers/app_controller.dart';

class Score extends StatefulWidget {
  const Score({Key? key}) : super(key: key);

  @override
  State<Score> createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    AppController appController = Get.find();
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(flex: 1),
                Obx(
                  () => Text(
                    'Score: ${appController.score}',
                    style: const TextStyle(
                      fontSize: 36,
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      print('click');
                      appController.reset();
                    },
                    child: const Icon(Icons.replay),
                  ),
                )
              ],
            )),
      ),
      flex: 1,
    );
  }
}
