import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tika_det_calculator/colors.dart';
import 'package:tika_det_calculator/screens/det_2x2_screen/widgets/det_2x2_frst_row.dart';
import 'package:tika_det_calculator/screens/det_2x2_screen/widgets/det_2x2_scnd_row.dart';
import 'package:tika_det_calculator/screens/onboarding_screen/widgets/custom_elevated_button.dart';

class Det2x2Screen extends StatefulWidget {
  const Det2x2Screen({super.key});
  static const id = '/det_2x2_screen';

  @override
  State<Det2x2Screen> createState() => _Det2x2ScreenState();
}

class _Det2x2ScreenState extends State<Det2x2Screen> {
  int number11 = 0;
  int number12 = 0;
  int number21 = 0;
  int number22 = 0;
  int result = 0;
  bool isClicked = false;
  TextEditingController textController11 = TextEditingController();
  TextEditingController textController12 = TextEditingController();
  TextEditingController textController21 = TextEditingController();
  TextEditingController textController22 = TextEditingController();

  FocusNode focusNode11 = FocusNode();
  FocusNode focusNode12 = FocusNode();
  FocusNode focusNode21 = FocusNode();
  FocusNode focusNode22 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('D - Matrix 2x2'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.13),
              Det2x2FrstRow(
                onChange11: (value) {
                  if (value != '') {
                    setState(() {
                      number11 = int.parse(value);
                    });
                  }
                },
                focusNode11: focusNode11,
                textController11: textController11,
                onChange12: (value) {
                  if (value != '') {
                    setState(() {
                      number12 = int.parse(value);
                    });
                  }
                },
                focusNode12: focusNode12,
                textController12: textController12,
              ),
              const SizedBox(height: 30),
              Det2x2ScndRow(
                onChange21: (value) {
                  if (value != '') {
                    setState(() {
                      number21 = int.parse(value);
                    });
                  }
                },
                focusNode21: focusNode21,
                textController21: textController21,
                onChange22: (value) {
                  if (value != '') {
                    setState(() {
                      number22 = int.parse(value);
                    });
                  }
                },
                focusNode22: focusNode22,
                textController22: textController22,
              ),
              const Spacer(),
              Text(
                isClicked
                    ? 'The result equals to\n|A| = $result'
                    : 'Enter your numbers and then calculate!',
                style: const TextStyle(
                  fontSize: 17,
                  color: kWhiteColor,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: FloatingActionButton(
                    onPressed: () {
                      textController11.clear();
                      textController12.clear();
                      textController21.clear();
                      textController22.clear();
                    },
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: kWhiteColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              CustomElevatedButton(
                text: 'Calculate',
                onPressed: () {
                  result = (number11 * number22) - (number21 * number12);
                  if (textController11.text == '' &&
                      textController12.text == '' &&
                      textController21.text == '' &&
                      textController22.text == '') {
                    setState(() {
                      result = 0;
                    });
                  }
                  setState(() {
                    isClicked = true;
                  });
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05)
            ],
          ),
        ),
      ),
    );
  }
}
