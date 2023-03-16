import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:wikinerd/global/constants.dart';
import 'package:wikinerd/screens/choose_theme_screen/components/image_clipper.dart';
import 'package:wikinerd/screens/choose_theme_screen/controller/choose_theme_controller.dart';

class SplashImageWidget extends StatelessWidget {
  final Size size;
  final String imagePath;
  final ChooseThemeController chooseThemeController;

  const SplashImageWidget({
    super.key,
    required this.size,
    required this.imagePath,
    required this.chooseThemeController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .5,
      width: size.width,
      color: kScaffoldColor,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              height: size.height * .5,
              width: size.width,
              child: ClipPath(
                clipper: ImageClipper(),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    )
                        .animate()
                        .fade(
                          duration: const Duration(
                            milliseconds: 500,
                          ),
                        )
                        .moveY(
                          duration: const Duration(milliseconds: 400),
                          delay: Duration(milliseconds: chooseThemeController.isUpScrolling ? 0 : 200),
                          begin: chooseThemeController.isUpScrolling ? 0 : size.height - .5,
                          end: chooseThemeController.isUpScrolling ? -100 : 0,
                        ),
                    Positioned.fill(
                      child: Center(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: Container(
                            color: Colors.black,
                          ).animate().fadeOut(
                                delay: const Duration(milliseconds: 0),
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                              ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ).animate().fade(
          curve: Curves.easeIn,
          duration: const Duration(milliseconds: 500),
          delay: Duration(milliseconds: chooseThemeController.isUpScrolling ? 0 : 500),
          begin: 0,
        );
  }
}
