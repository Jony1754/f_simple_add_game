import 'package:flutter/cupertino.dart';
import 'package:sum_game/widgets/score.dart';
import 'package:sum_game/widgets/options.dart';
import 'package:sum_game/widgets/operation.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      Score(),
      Operation(),
      Options(),
    ]);
  }
}
