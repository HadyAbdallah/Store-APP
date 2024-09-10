import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text, this.onTap});
  String text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 108, 63, 181),
          borderRadius: BorderRadius.circular(16),
        ),
        width: double.infinity,
        height: 40,
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
