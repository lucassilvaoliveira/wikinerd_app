import 'package:flutter/material.dart';

class ChooseThemeController extends ChangeNotifier {
  PageController pageController = PageController();
  int currentPage = 0;

  bool isUpScrolling = false;

  final List<Map<String, String>> splashData = [
    {
      "theme": "rick and morty",
      "title": "Rick And Morty",
      "subtitle": "O show gira em torno das aventuras dos membros da família Smith, que consiste nos pais Jerry e Beth, seus filhos Summer e Morty",
      "imagePath": "assets/rick and morty.jpg"
    },
    {
      "theme": "marvel",
      "title": "Marvel",
      "subtitle": 'O Universo Marvel é retratado como existente dentro de um "multiverso" composto por milhares de universos separados, todas as quais são as criações da Marvel Comics e todas elas, em certo sentido, "universos Marvel".',
      "imagePath": "assets/marvel.jpg"
    },
    {
      "theme": "star wars",
      "title": "Star wars",
      "subtitle": "A trama se passa num passado distante, em uma galáxia repleta de planetas habitados por diferentes povos e espécies. Apesar de ter como fundo a ficção científica, Star Wars é, na verdade, uma saga de fantasia, recheada de toques de humor, drama, romance e, claro, o tema central: a luta entre o bem e o mal",
      "imagePath": "assets/star wars.jpg"
    }
  ];

  void changeCurrentPage({required int value}) {
    currentPage = value;
    notifyListeners();
  }

  void setUpScrolling() {
    isUpScrolling = !isUpScrolling;
    notifyListeners();
  }
}
