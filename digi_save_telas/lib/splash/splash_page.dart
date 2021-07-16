import 'package:digi_save_telas/core/app_colors.dart';
import 'package:digi_save_telas/welcome/welcome_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((_) => Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WelcomePage()),
        ));
    return Container(
      color: AppColors.backgroundSplash,
      child: Center(
        child: Image.asset(
          'assets/images/Camada_x0020_1.png',
        ),
      ),
    );
  }
}
