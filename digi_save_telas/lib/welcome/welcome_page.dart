import 'package:digi_save_telas/core/app_colors.dart';
import 'package:digi_save_telas/core/app_text.dart';
import 'package:digi_save_telas/login/login.dart';
import 'package:digi_save_telas/register/register.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WelcomePage extends StatelessWidget {
  final List<String> imageList = [
    'assets/images/Image_slide_1.png',
    'assets/images/Image_slide_1.png',
    'assets/images/Image_slide_1.png',
    'assets/images/Image_slide_1.png'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 110, vertical: 50),
              child: Image.asset(
                'assets/images/Camada_x0020_2.png',
                height: 137.49,
                width: 146.73,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 100.09,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                  ),
                  items: imageList
                      .map(
                        (e) => ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset(
                                e,
                              )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            SizedBox(height: 8),
            RichText(
              text: TextSpan(
                text:
                    "Lorem Ipsum is simply dummy text\n of the printing and typesetting\n industry.",
                style: AppText.textCarousel,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 100),
            TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                    AppColors.backgroundSplash),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text(
                'Acessar conta',
                style: AppText.textButton,
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.blueLight),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(horizontal: 75, vertical: 15),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text(
                'Cadastre-se agora',
                style: AppText.textButton,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
