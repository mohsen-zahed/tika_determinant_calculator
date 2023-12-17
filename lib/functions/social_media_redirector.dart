// for redirecting to any social media account
import 'package:flutter/material.dart';
import 'package:tika_det_calculator/functions/internet_connectivity.dart';
import 'package:url_launcher/url_launcher.dart';

void redirectToSocialMedia(
    {required String link, required BuildContext context}) async {
  var socialMediaLink = Uri.parse(link);
  try {
    if (await checkInternetConnectivity()) {
      if (await canLaunchUrl(socialMediaLink)) {
        launchUrl(socialMediaLink);
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please check your connection and try again!'),
        ),
      );
    }
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Couldn\'t redirect!'),
      ),
    );
  }
}
