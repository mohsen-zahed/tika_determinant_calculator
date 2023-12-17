import 'package:flutter/material.dart';
import 'package:tika_det_calculator/widget/custom_text_field.dart';

class Det2x2ScndRow extends StatelessWidget {
  const Det2x2ScndRow({
    super.key,
    this.onChange21,
    this.onChange22,
    this.textController21,
    this.textController22,
    this.focusNode21,
    this.focusNode22,
  });
  final onChange21;
  final onChange22;

  final textController21;
  final textController22;
  final focusNode21;
  final focusNode22;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextField(
          hintText: 'a21',
          onChange: onChange21,
          textController: textController21,
          focusNode: focusNode21,
        ),
        CustomTextField(
          hintText: 'a22',
          onChange: onChange22,
          textController: textController22,
          focusNode: focusNode22,
        ),
      ],
    );
  }
}
