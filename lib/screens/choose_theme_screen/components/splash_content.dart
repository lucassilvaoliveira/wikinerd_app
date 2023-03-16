import 'package:flutter/material.dart';
import 'package:wikinerd/screens/choose_theme_screen/components/info_splash_widget.dart';
import 'package:wikinerd/screens/choose_theme_screen/components/splash_image_widget.dart';
import 'package:wikinerd/screens/choose_theme_screen/controller/choose_theme_controller.dart';

class SplashContent extends StatelessWidget {
  final Size size;
  final ChooseThemeController chooseThemeController;
  final String title;
  final String subtitle;
  final String imagePath;

  const SplashContent({
    super.key,
    required this.size,
    required this.chooseThemeController,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SplashImageWidget(
          size: size,
          imagePath: imagePath,
          chooseThemeController: chooseThemeController,
        ),
        InfoSplashWidget(
          size: size,
          title: title,
          subtitle: subtitle,
          chooseThemeController: chooseThemeController,
        )
      ],
    );
  }
}
