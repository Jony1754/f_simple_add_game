import 'package:flutter/material.dart';
import 'package:sum_game/controllers/app_controller.dart';
import 'package:get/get.dart';

class Operation extends StatefulWidget {
  const Operation({Key? key}) : super(key: key);

  @override
  State<Operation> createState() => _OperationState();
}

class _OperationState extends State<Operation> {
  @override
  Widget build(BuildContext context) {
    AppController appController = Get.find();
    return Expanded(
      flex: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
              boxShadow: [BoxShadow(blurRadius: 10.0)],
              gradient: LinearGradient(
                colors: [Color(0xfff32e20), Color(0xff3d4eaf)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              )),
          // color: Colors.blue,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Obx(() => OpWidget(text: appController.op1.toString())),
            const OpWidget(text: '+'),
            Obx(() => OpWidget(text: appController.op2.toString())),
            const OpWidget(text: '='),
            const OpWidget(text: '?'),
          ]),
        ),
      ),
    );
  }
}

class OpWidget extends StatelessWidget {
  const OpWidget({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          fontSize: 40,
        ));
  }
}
