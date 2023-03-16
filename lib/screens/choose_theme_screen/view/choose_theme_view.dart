import 'package:flutter/material.dart';
import 'package:wikinerd/screens/choose_theme_screen/components/splash_content.dart';
import 'package:wikinerd/screens/choose_theme_screen/controller/choose_theme_controller.dart';

class ChooseThemeView extends StatelessWidget {
  final ChooseThemeController chooseThemeController;
  const ChooseThemeView({super.key, required this.chooseThemeController});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                controller: chooseThemeController.pageController,
                itemCount: chooseThemeController.splashData.length,
                onPageChanged: (value) {
                  chooseThemeController.changeCurrentPage(value: value);
                },
                itemBuilder: (context, index) => SplashContent(
                  size: size,
                  chooseThemeController: chooseThemeController,
                  title: chooseThemeController.splashData[index]["title"]!,
                  subtitle: chooseThemeController.splashData[index]["subtitle"]!,
                  imagePath: chooseThemeController.splashData[index]["imagePath"]!,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
