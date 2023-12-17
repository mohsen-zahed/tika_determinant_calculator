import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.onChange,
    this.textController,
    this.focusNode,
  });
  final String hintText;
  final onChange;
  final textController;
  final focusNode;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          maxLength: 5,
          onChanged: onChange,
          keyboardType: TextInputType.number,
          controller: textController,
          focusNode: focusNode,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17.5,
          ),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white38),
          ),
        ),
      ),
    );
  }
}
