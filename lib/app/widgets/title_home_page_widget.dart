import 'package:flutter/material.dart';

class TitleHomePageWidget extends StatelessWidget {
  const TitleHomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Total Amount',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
