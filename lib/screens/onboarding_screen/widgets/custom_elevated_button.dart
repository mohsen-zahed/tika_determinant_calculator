import 'package:flutter/material.dart';
import 'package:tika_det_calculator/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonColor,
  });
  final String text;
  final VoidCallback onPressed;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.9,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: buttonColor ?? Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 16,
                color: kWhiteColor,
              ),
        ),
      ),
    );
  }
}
