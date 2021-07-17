import 'package:digi_save_telas/core/app_colors.dart';
import 'package:digi_save_telas/core/app_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final List<String> imageList = [
  'assets/images/Grupo_asus.png',
  'assets/images/Grupo_lg.png',
  'assets/images/Grupo_asus.png',
  'assets/images/Grupo_lg.png',
  'assets/images/Grupo_asus.png',
  'assets/images/Grupo_lg.png',
];

final List<String> imageList2 = [
  'assets/images/Carousel_1.png',
  'assets/images/Carousel_2.png',
  'assets/images/Carousel_1.png',
  'assets/images/Carousel_2.png',
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(105, 20, 10, 10),
                child: Row(
                  children: [
                    Image.asset('assets/images/Camada_x0020_3.png'),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60, 10, 10, 10),
                      child: Icon(
                        Icons.notifications_active,
                        color: AppColors.backgroundSplash,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 27,
                ),
                child: Container(
                  width: 78,
                  height: 78,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      autoPlay: false,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: imageList
                        .map((e) => ClipRRect(
                              child: Stack(
                                children: [
                                  Image.asset(
                                    e,
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    initialPage: 0,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: false,
                  ),
                  items: imageList2
                      .map((e) => ClipRRect(
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset(
                                  e,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 330,
                  height: 100,
                  child: Row(
                    children: [
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: 'Olá,',
                          style: AppText.ola,
                          children: [
                            TextSpan(
                              text:
                                  ' \nSeja bem vindo a Digisave. Encontre\n o melhor plano de proteção para o\n seu celular com os melhores preços.',
                              style: AppText.termo,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset('assets/images/Smartphone.png'),
                      ),
                    ],
                  ),
                ),
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
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Escolha seu plano',
                  style: AppText.textButton,
                ),
              ),
              Container(
                height: 230,
                width: 300,
                child: GridView.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: [
                    Container(
                      width: 113,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/Surface1.png'),
                          alignment: Alignment(0, -0.7),
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.backgroundSplash,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2, 45, 2, 0),
                        child: const Text(
                          "Cancele sem multas",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 113,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/Surface2.png'),
                          alignment: Alignment(0, -0.7),
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.backgroundSplash,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2, 45, 2, 0),
                        child: const Text(
                          "Reembolso na conta",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 113,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/Surface3.png'),
                          alignment: Alignment(0, -0.7),
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.backgroundSplash,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2, 45, 2, 0),
                        child: const Text(
                          "Sem franquia e sem carência",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 113,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/Surface4.png'),
                          alignment: Alignment(0, -0.7),
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.backgroundSplash,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2, 45, 2, 0),
                        child: const Text(
                          "Celulares sem nota fiscal",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 113,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/Happy.png'),
                          alignment: Alignment(0, -0.7),
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.backgroundSplash,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2, 45, 2, 0),
                        child: const Text(
                          "Roubo, furto e danos acidentais",
                          style: TextStyle(fontSize: 9.7, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 113,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/Grupo_16.png'),
                          alignment: Alignment(0, -0.7),
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.backgroundSplash,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2, 45, 2, 0),
                        child: const Text(
                          "Tudo sem burocracia",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Cobertura total do seu aparelho',
                style: AppText.textScreenRegister,
              ),
              SizedBox(height: 8),
              TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: Colors.black12),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.gray),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 65, vertical: 15),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Entre em contato com nossa equipe',
                  style: TextStyle(color: Colors.black38, fontSize: 12),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Container(
                  child: Text(
                    'A Digi Save, popularmente conhecida como Dcell, é a seguradora\n digital mais amada do Brasil. O nosso CNPJ é o 9.380.513/0001-00\n e o nosso escritório fica na Rua Cláudio Soares, 72, conj. 705, São\n Paulo, SP, CEP 05422-030. Quando sair a vacina, aparece para um\n café! ;)',
                    style: AppText.sobre,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
