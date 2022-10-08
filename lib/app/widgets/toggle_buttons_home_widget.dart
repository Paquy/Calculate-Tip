import 'package:flutter/material.dart';
import 'package:percentage_calculate_app/app/models/home_model.dart';

class ToggleButtonsHomeWidget extends StatefulWidget {
  const ToggleButtonsHomeWidget({super.key, required this.onSelectPercent});
  final Function(double) onSelectPercent;
  @override
  State<ToggleButtonsHomeWidget> createState() =>
      _ToggleButtonsHomeWidgetState();
}

class _ToggleButtonsHomeWidgetState extends State<ToggleButtonsHomeWidget> {
  HomeModel model = HomeModel();

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected: model.select,
      onPressed: updateIndex,
      borderRadius: BorderRadius.circular(10),
      selectedBorderColor: Colors.black38,
      selectedColor: Colors.white,
      fillColor: Colors.black38,
      children: model.percent.map((e) => Text('$e%')).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      widget.onSelectPercent(model.percent[index]);
      for (int i = 0; i < model.select.length; i++) {
        model.select[i] = i == index;
      }
    });
  }
}
