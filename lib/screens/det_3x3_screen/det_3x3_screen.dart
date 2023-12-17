import 'package:flutter/material.dart';
import 'package:tika_det_calculator/colors.dart';
import 'package:tika_det_calculator/screens/onboarding_screen/widgets/custom_elevated_button.dart';
import 'package:tika_det_calculator/widget/custom_text_field.dart';

class Det3x3Screen extends StatefulWidget {
  const Det3x3Screen({super.key});
  static const id = '/det_3x3_screen';

  @override
  State<Det3x3Screen> createState() => _Det3x3ScreenState();
}

class _Det3x3ScreenState extends State<Det3x3Screen> {
  int number11 = 0;
  int number12 = 0;
  int number13 = 0;
  int number21 = 0;
  int number22 = 0;
  int number23 = 0;
  int number31 = 0;
  int number32 = 0;
  int number33 = 0;
  int result = 0;
  bool isClicked = false;
  TextEditingController textController11 = TextEditingController();
  TextEditingController textController12 = TextEditingController();
  TextEditingController textController13 = TextEditingController();
  TextEditingController textController21 = TextEditingController();
  TextEditingController textController22 = TextEditingController();
  TextEditingController textController23 = TextEditingController();
  TextEditingController textController31 = TextEditingController();
  TextEditingController textController32 = TextEditingController();
  TextEditingController textController33 = TextEditingController();
  FocusNode focusNode11 = FocusNode();
  FocusNode focusNode12 = FocusNode();
  FocusNode focusNode13 = FocusNode();
  FocusNode focusNode21 = FocusNode();
  FocusNode focusNode22 = FocusNode();
  FocusNode focusNode23 = FocusNode();
  FocusNode focusNode31 = FocusNode();
  FocusNode focusNode32 = FocusNode();
  FocusNode focusNode33 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('D - Matrix 3x3'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.13),
              Row(
                children: [
                  CustomTextField(
                    onChange: (value) {
                      if (value != '') {
                        setState(() {
                          number11 = int.parse(value);
                        });
                      }
                    },
                    hintText: 'a11',
                    textController: textController11,
                  ),
                  CustomTextField(
                    onChange: (value) {
                      if (value != '') {
                        setState(() {
                          number12 = int.parse(value);
                        });
                      }
                    },
                    hintText: 'a12',
                    textController: textController12,
                  ),
                  CustomTextField(
                    onChange: (value) {
                      if (value != '') {
                        setState(() {
                          number13 = int.parse(value);
                        });
                      }
                    },
                    hintText: 'a13',
                    textController: textController13,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  CustomTextField(
                    onChange: (value) {
                      if (value != '') {
                        setState(() {
                          number21 = int.parse(value);
                        });
                      }
                    },
                    hintText: 'a21',
                    textController: textController21,
                  ),
                  CustomTextField(
                    onChange: (value) {
                      if (value != '') {
                        setState(() {
                          number22 = int.parse(value);
                        });
                      }
                    },
                    hintText: 'a22',
                    textController: textController22,
                  ),
                  CustomTextField(
                    onChange: (value) {
                      if (value != '') {
                        setState(() {
                          number23 = int.parse(value);
                        });
                      }
                    },
                    hintText: 'a23',
                    textController: textController23,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  CustomTextField(
                    onChange: (value) {
                      if (value != '') {
                        setState(() {
                          number31 = int.parse(value);
                        });
                      }
                    },
                    hintText: 'a31',
                    textController: textController31,
                  ),
                  CustomTextField(
                    onChange: (value) {
                      if (value != '') {
                        setState(() {
                          number32 = int.parse(value);
                        });
                      }
                    },
                    hintText: 'a32',
                    textController: textController32,
                  ),
                  CustomTextField(
                    onChange: (value) {
                      if (value != '') {
                        setState(() {
                          number33 = int.parse(value);
                        });
                      }
                    },
                    hintText: 'a33',
                    textController: textController33,
                  ),
                ],
              ),
              const Spacer(),
              Text(
                isClicked
                    ? 'The result equals to\n|A| = $result'
                    : 'Enter your numbers and calculate!',
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
                      textController13.clear();
                      textController21.clear();
                      textController22.clear();
                      textController23.clear();
                      textController31.clear();
                      textController32.clear();
                      textController33.clear();
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
                  result = ((number11 * number22 * number33) +
                          (number12 * number23 * number31) +
                          (number13 * number21 * number32)) -
                      ((number31 * number22 * number13) +
                          (number32 * number23 * number11) +
                          (number33 * number21 * number12));
                  if (textController11.text == '' &&
                      textController12.text == '' &&
                      textController13.text == '' &&
                      textController21.text == '' &&
                      textController22.text == '' &&
                      textController23.text == '' &&
                      textController31.text == '' &&
                      textController32.text == '' &&
                      textController33.text == '') {
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
