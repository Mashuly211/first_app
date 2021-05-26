import 'package:flutter/material.dart';

Color primaryGreen = Color(0xff416d6d);
Color secondaryGreen = Color(0xff16a085);

List<BoxShadow> customShadow = [//тень
  BoxShadow(
    color: Colors.white,
    blurRadius: 30,
    offset: Offset(0, 10),
  ),
];

List<Map> categories = [
  {'name': 'Овощи и фрукты', 'iconPath': 'assets/images/vegetables.png' },
  {'name': 'Хлеб и выпечка', 'iconPath': 'assets/images/bread.png' },
  {'name': 'Молоко и яйца', 'iconPath': 'assets/images/milk.png' },
  {'name': 'Мясо', 'iconPath': 'assets/images/pig.png' },
  {'name': 'Рыба и морепродукты', 'iconPath': 'assets/images/fish.png' },
  {'name': 'Сыры', 'iconPath': 'assets/images/cheese.png' },
  {'name': 'Сладости', 'iconPath': 'assets/images/sweet.png' },
  {'name': 'Диетические продукты', 'iconPath': 'assets/images/diet.png' },

];