import 'package:flutter/material.dart';
import 'package:tika_det_calculator/widget/custom_text_field.dart';

class Det2x2FrstRow extends StatelessWidget {
  const Det2x2FrstRow({
    super.key,
    this.onChange11,
    this.onChange12,
    this.textController11,
    this.textController12,
    this.focusNode11,
    this.focusNode12,
  });

  final onChange11;
  final onChange12;
  final textController11;
  final textController12;
  final focusNode11;
  final focusNode12;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextField(
          hintText: 'a11',
          onChange: onChange11,
          textController: textController11,
          focusNode: focusNode11,
        ),
        CustomTextField(
          hintText: 'a12',
          onChange: onChange12,
          textController: textController12,
          focusNode: focusNode12,
        ),
      ],
    );
  }
}
