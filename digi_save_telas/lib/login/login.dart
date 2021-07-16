import 'package:digi_save_telas/core/app_colors.dart';
import 'package:digi_save_telas/core/app_text.dart';
import 'package:digi_save_telas/home/home.dart';
import 'package:digi_save_telas/register/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.backgroundSplash,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 90, 50, 30),
                child: Image.asset(
                  'assets/images/Camada_x0020_1.png',
                  width: 146.73,
                  height: 137.49,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Entre com seu e-mail e senha\n para acessar sua conta',
                  style: AppText.textButton,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                      hintText: 'CPF ou CNPJ',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    icon: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                    hintText: '',
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
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
                    EdgeInsets.fromLTRB(95, 20, 95, 20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  'Entrar',
                  style: AppText.textButton,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Recuperar senha.',
                    style: AppText.textButton,
                  )),
              SizedBox(height: 100),
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
                    EdgeInsets.fromLTRB(80, 20, 80, 20),
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
            ],
          ),
        ),
      ),
    );
  }
}
