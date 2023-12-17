import 'package:flutter/material.dart';
import 'package:tika_det_calculator/colors.dart';
import 'package:tika_det_calculator/screens/det_2x2_screen/det_2x2_screen.dart';
import 'package:tika_det_calculator/screens/det_3x3_screen/det_3x3_screen.dart';
import 'package:tika_det_calculator/screens/onboarding_screen/widgets/custom_elevated_button.dart';

class DetChooseScreen extends StatelessWidget {
  const DetChooseScreen({super.key});
  static const id = '/det_choose_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Matrix Size'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.13),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: double.infinity),
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/det_pic.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xFF343434).withOpacity(0.8),
                              const Color(0xFF343434).withOpacity(0.1)
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 18,
                        left: 23,
                        child: Text(
                          'Matrix: 2x2',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  CustomElevatedButton(
                    text: 'Continue',
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        Det2x2Screen.id,
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: double.infinity),
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/det_pic1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xFF343434).withOpacity(0.8),
                              const Color(0xFF343434).withOpacity(0.1)
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 18,
                        left: 23,
                        child: Text(
                          'Matrix: 3x3',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  CustomElevatedButton(
                    text: 'Continue',
                    onPressed: () {
                      Navigator.pushNamed(context, Det3x3Screen.id);
                    },
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: CustomElevatedButton(
                  buttonColor: kSecondaryColor,
                  text: 'Back to Home',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
