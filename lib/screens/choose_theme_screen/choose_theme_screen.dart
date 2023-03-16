import 'package:flutter/material.dart';
import 'package:wikinerd/screens/choose_theme_screen/presenter/choose_theme_presenter.dart';

class ChooseThemeScreen extends StatelessWidget {
  const ChooseThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChooseThemePresenter(),
    );
  }
}
