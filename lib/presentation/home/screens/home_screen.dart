import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:intensity_classifier_app/presentation/home/widgets/my_button.dart';
import 'package:intensity_classifier_app/presentation/home/widgets/my_textfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var valueController = TextEditingController();
    var stringValue = "".obs;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Intensity Classifier App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [MyTextField(controller: valueController, onChangeValue: (value){

          },), const SizedBox(height: 10), MyButton(onTap: () {}),
          ],
        ),
      ),
    );
  }
}
