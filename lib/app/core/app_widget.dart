import 'package:bytebank/app/core/app_colors.dart';
import 'package:bytebank/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BytebankApp',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: createMaterialColor(
              const Color(0xFF235d2a),
            ),
            accentColor: AppColors.secondaryColor,
          ),
          buttonTheme:
              const ButtonThemeData(buttonColor: AppColors.secondaryColor)),
      home: const HomePage(),
    );
  }
}
