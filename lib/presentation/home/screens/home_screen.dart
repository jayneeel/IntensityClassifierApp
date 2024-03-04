import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intensity_classifier_app/presentation/home/controllers/home_controller.dart';
import 'package:intensity_classifier_app/presentation/home/widgets/custom_button.dart';
import 'package:intensity_classifier_app/presentation/home/widgets/custom_textfield.dart';

import '../../../utils/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    var valueController = TextEditingController();

    void classifyIntensity(double value) {
      String meaning = '';
      String img = '';
      for (int level in Constants.intensityLevels.keys) {
        if (value <= level) {
          meaning = Constants.intensityLevels[level]?[0] ?? "";
          img = Constants.intensityLevels[level]?[1] ?? "assets/intensity/placeholder.jpg";
          break;
        }
      }
      controller.meaningText.value = meaning;
      controller.asset.value = img;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Intensity Classifier App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Image.asset(controller.asset.value, height: 200,)),
            Container(
                height: 20,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(colors: [
                      Colors.red,
                      Colors.red,
                      Colors.orange,
                      Colors.orange,
                      Colors.green,
                      Colors.green,
                      Colors.orange,
                      Colors.orange,
                      Colors.red,
                      Colors.red,
                    ], stops: [
                      0.0,
                      0.3,
                      0.3,
                      0.4,
                      0.4,
                      0.6,
                      0.6,
                      0.7,
                      0.7,
                      1.2
                    ])),
                child: SliderTheme(
                  data: SliderThemeData(overlayShape: SliderComponentShape.noOverlay, thumbShape: const RoundSliderThumbShape(elevation: 2)),
                  child: Obx(() => Slider(
                        thumbColor: Colors.purpleAccent,
                        min: 0,
                        max: 120,
                        activeColor: Colors.transparent,
                        inactiveColor: Colors.transparent,
                        value: controller.textValue.value,
                        divisions: 120,
                        onChanged: (v) {},
                      )),
                )),
            const SizedBox(
              height: 10,
            ),
            Obx(() => Text(controller.meaningText.value, style: const TextStyle(fontSize: 16,),)),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              controller: valueController,
            ),
            const SizedBox(height: 10),
            CustomButton(onTap: () {
              controller.textValue.value = double.parse(valueController.text);
              classifyIntensity(controller.textValue.value);
            }),
          ],
        ),
      ),
    );
  }


}


