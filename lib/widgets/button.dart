import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const ButtonWidget({super.key, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Center(
        child: Text(text,
        style: const TextStyle(color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold),),
      ),
    );
  }
}
