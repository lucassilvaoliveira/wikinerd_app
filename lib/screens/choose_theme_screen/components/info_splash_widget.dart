import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:wikinerd/screens/choose_theme_screen/controller/choose_theme_controller.dart';
import 'package:wikinerd/screens/home/home_screen.dart';

class InfoSplashWidget extends StatelessWidget {
  final Size size;
  final String title;
  final String subtitle;
  final ChooseThemeController chooseThemeController;

  const InfoSplashWidget({
    super.key,
    required this.size,
    required this.title,
    required this.subtitle,
    required this.chooseThemeController,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .45,
      width: size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * .05, vertical: size.height * .05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ).animate().moveX(
                  duration: const Duration(milliseconds: 500),
                  begin: size.width - 25,
                  end: 0,
                ),
            SizedBox(height: size.height * .01),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.displayMedium,
            ).animate().moveX(
                  duration: const Duration(milliseconds: 500),
                  begin: size.width - 25,
                  end: 0,
                ),
            const Spacer(),
            GestureDetector(
              onVerticalDragStart: (details) {
                chooseThemeController.setUpScrolling();
              },
              onVerticalDragEnd: (details) {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
                chooseThemeController.setUpScrolling();
              },
              onVerticalDragCancel: () {
                chooseThemeController.setUpScrolling();
              },
              child: SizedBox(
                height: size.height * .08,
                child: Center(
                  child: Text(
                    "Ver mais",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                chooseThemeController.splashData.length,
                (index) => buildDot(index: index, context: context),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index, required BuildContext context}) => AnimatedContainer(
        duration: const Duration(
          milliseconds: 300,
        ),
        margin: const EdgeInsets.only(right: 5),
        height: 6,
        width: chooseThemeController.currentPage == index ? 20 : 6,
        decoration: BoxDecoration(color: chooseThemeController.currentPage == index ? Colors.grey : Colors.black, borderRadius: BorderRadius.circular(3)),
      );
}
