import 'package:flutter/material.dart';
import 'package:mylist/ui/theme.dart';
import 'package:unicons/unicons.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: primaryClr,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: onPressed,
        child: SizedBox(
          height: 50,
          child: Row(
            children: [
              const Icon(
                UniconsLine.plus,
                color: Colors.white,
              ),
              const SizedBox(width: 5),
              Text(title, style: const TextStyle(color: Colors.white)),
            ],
          ),
        ));
  }
}
