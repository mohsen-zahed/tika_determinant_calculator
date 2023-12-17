import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tika_det_calculator/colors.dart';
import 'package:tika_det_calculator/functions/social_media_redirector.dart';
import 'package:tika_det_calculator/screens/det_choose_screen/det_choose_screen.dart';
import 'package:tika_det_calculator/screens/onboarding_screen/widgets/custom_elevated_button.dart';
import 'package:tika_det_calculator/screens/onboarding_screen/widgets/social_media_box.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static const id = '/onboarding_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_back3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    const Text(
                      'TIKA Determinant Calculator',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Welcome to TIKA app, Let's get started!",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.deepOrange,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    CustomElevatedButton(
                      text: 'Get started',
                      onPressed: () {
                        Navigator.pushNamed(context, DetChooseScreen.id);
                      },
                    ),
                    const SizedBox(height: 20),
                    Text.rich(
                      TextSpan(
                        text: "Created & Designed by ",
                        style: const TextStyle(
                          color: Colors.redAccent,
                          fontSize: 10,
                        ),
                        children: [
                          TextSpan(
                            text: "Amir M. Zahed",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                showModalBottomSheet(
                                  backgroundColor: kModalBackgroundColor,
                                  context: context,
                                  builder: (context) => SocialMediaBox(
                                    onInstagramTap: () {
                                      redirectToSocialMedia(
                                          link:
                                              'https://instagram.com/mohsen_zahed80?igshid=OGQ5ZDc2ODk2ZA==',
                                          context: context);
                                      Navigator.pop(context);
                                    },
                                    onLinkedInTap: () {
                                      redirectToSocialMedia(
                                          link:
                                              'https://www.linkedin.com/in/mohsen-zahed-7578a51a6?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app',
                                          context: context);
                                      Navigator.pop(context);
                                    },
                                  ),
                                );
                              },
                            style: const TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
