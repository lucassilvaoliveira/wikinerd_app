import 'package:flutter/material.dart';
import 'package:wikinerd/screens/choose_theme_screen/controller/choose_theme_controller.dart';
import 'package:wikinerd/screens/choose_theme_screen/view/choose_theme_view.dart';

class ChooseThemePresenter extends StatefulWidget {
  const ChooseThemePresenter({super.key});

  @override
  State<ChooseThemePresenter> createState() => _ChooseThemePresenterState();
}

class _ChooseThemePresenterState extends State<ChooseThemePresenter> {
  late ChooseThemeController chooseThemeController;

  @override
  void initState() {
    super.initState();
    chooseThemeController = ChooseThemeController();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: chooseThemeController,
      builder: (context, child) => ChooseThemeView(
        chooseThemeController: chooseThemeController,
      ),
    );
  }
}
