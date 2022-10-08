import 'package:flutter/material.dart';
import 'package:percentage_calculate_app/app/controllers/controller_home.dart';
import 'package:percentage_calculate_app/app/widgets/text_field_home_widget.dart';
import '../widgets/toggle_buttons_home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controllerValue = TextEditingController();
  final ControllerHome controllerHome = ControllerHome();

  @override
  void initState() {
    super.initState();
    controllerValue.addListener(() {
      controllerHome.totalValue = double.tryParse(controllerValue.text) ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controllerHome,
        builder: (context, child) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'Total Amount',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                  ),
                ),
                TextFieldHomeWidget(
                  controllerValue: controllerValue,
                ),
                const SizedBox(height: 10),
                ToggleButtonsHomeWidget(
                  onSelectPercent: (percent) {
                    controllerHome.tipPercent = percent;
                  },
                ),
                const SizedBox(height: 10),
                Text(
                  'Tip: ${controllerHome.tipValue.toStringAsFixed(2)}',
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10),
                Text(
                  'Total: ${controllerHome.valuePlusTip.toStringAsFixed(2)}',
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          );
        });
  }
}
