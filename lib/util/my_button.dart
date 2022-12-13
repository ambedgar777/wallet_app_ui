import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButtons(
      {required this.buttonText, required this.iconImagePath, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          height: 90,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  spreadRadius: 10,
                  blurRadius: 40,
                )
              ]),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        SizedBox(height: 12),
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade700,
          ),
        ),
      ],
    );
  }
}
