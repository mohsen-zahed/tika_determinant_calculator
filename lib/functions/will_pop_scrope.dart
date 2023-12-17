import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tika_det_calculator/colors.dart';
import 'package:tika_det_calculator/screens/onboarding_screen/onboarding_screen.dart';

Future<bool> onWillPopActionShowBackDialog(BuildContext context) {
  back(context);
  return Future.value(false);
}

void back(context) {
  Navigator.pushNamed(context, OnboardingScreen.id);
}

Future<bool> onWillPopActionShowExitDialog(BuildContext context) {
  exitDialog(context);
  return Future.value(false);
}

void exitDialog(BuildContext context) async {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: SizedBox(
          width: double.minPositive,
          child: Padding(
            padding: const EdgeInsets.all(
              20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Exit App?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      child: InkWell(
                        onTap: () async {
                          if (Platform.isAndroid) {
                            SystemNavigator.pop();
                          } else if (Platform.isIOS) {
                            exit(0);
                          }
                        },
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            child: Text(
                              'Yes',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 15,
                      width: 1,
                      color: kPrimaryColor,
                    ),
                    SizedBox(
                      child: InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            child: Text(
                              'No',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
