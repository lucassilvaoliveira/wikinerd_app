import 'package:flutter/material.dart';
import 'package:wikinerd/global/constants.dart';
import 'package:wikinerd/global/theme.dart';
import 'package:wikinerd/screens/choose_theme_screen/choose_theme_screen.dart';

class WikiNerdApp extends StatelessWidget {
  const WikiNerdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: themeData(primaryColor: kRickAndMortyPrimaryColor),
      home: const ChooseThemeScreen(),
    );
  }
}
