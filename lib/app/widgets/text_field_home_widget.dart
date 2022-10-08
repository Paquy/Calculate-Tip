import 'package:flutter/material.dart';

class TextFieldHomeWidget extends StatelessWidget {
  const TextFieldHomeWidget({super.key, required this.controllerValue});

  final TextEditingController controllerValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      width: 200,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          controller: controllerValue,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
          maxLength: 10,
          decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.5,
                  strokeAlign: StrokeAlign.center,
                ),
              ),
              icon: Icon(
                size: 30,
                Icons.attach_money,
                color: Colors.green,
              )),
        ),
      ),
    );
  }
}
