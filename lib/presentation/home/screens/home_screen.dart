import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:intensity_classifier_app/presentation/home/controllers/home_controller.dart';
import 'package:intensity_classifier_app/presentation/home/widgets/my_button.dart';
import 'package:intensity_classifier_app/presentation/home/widgets/my_textfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    var valueController = TextEditingController();
    var stringValue = "".obs;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Intensity Classifier App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 20,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.green,
                    Colors.brown,
                    Colors.yellow,
                    Colors.red,
                  ],
                )
              ),
              child: SliderTheme(
                  data: SliderThemeData(overlayShape: SliderComponentShape.noOverlay),
                  child: Slider(
                    min: 0,
                    max: 120,
                    activeColor: Colors.transparent,
                    inactiveColor: Colors.transparent,
                    value: 0,
                    onChanged: (v) {},
                  )),
            ),
            const SizedBox(height: 10,),
            MyTextField(
              controller: valueController,
              onChangeValue: (value) {
              },
            ),
            const SizedBox(height: 10),
            MyButton(onTap: () {}),
          ],
        ),
      ),
    );
  }
}
