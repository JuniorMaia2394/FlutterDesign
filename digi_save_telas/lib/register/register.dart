import 'package:digi_save_telas/core/app_colors.dart';
import 'package:digi_save_telas/core/app_text.dart';
import 'package:digi_save_telas/login/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.black12;
    }

    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    minWidth: 1,
                    color: AppColors.blueLight,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: AppColors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/images/Camada_x0020_2.png',
                width: 146.73,
                height: 137.49,
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                    text:
                        'Preencha os campos\n abaixo para iniciar o seu cadastro.',
                    style: AppText.textScreenRegister),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
                child: Container(
                  height: 25,
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.contact_mail_outlined,
                        color: Colors.black38,
                      ),
                      hintText: 'CPF/CNPJ',
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
                child: Container(
                  height: 25,
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person_pin,
                        color: Colors.black38,
                      ),
                      hintText: 'Nome',
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
                child: Container(
                  height: 25,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email_outlined,
                        color: Colors.black38,
                      ),
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
                child: Container(
                  height: 25,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.phone_in_talk_outlined,
                        color: Colors.black38,
                      ),
                      hintText: 'Celular',
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
                child: Container(
                  height: 25,
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock_outline,
                        color: Colors.black38,
                      ),
                      hintText: 'Senha',
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 7),
                child: Container(
                  height: 20,
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock_outline,
                        color: Colors.black38,
                      ),
                      hintText: 'Repetir senha',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.red,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool value) {
                        setState(() {
                          isChecked = !value;
                        });
                      },
                    ),
                    SizedBox(height: 80),
                    RichText(
                      text: TextSpan(
                        text:
                            ' Ao criar uma conta, você concorda\n com nossos ',
                        style: AppText.termo,
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'Termos de Serviço ',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 13),
                          ),
                          TextSpan(
                            text: 'e ',
                            style: TextStyle(fontSize: 13),
                          ),
                          TextSpan(
                            text: '\nPolítica de Privacidade.',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 13),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      AppColors.backgroundSplash),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  'Cadastrar',
                  style: AppText.textButton,
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
