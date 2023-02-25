// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio/components/parts/cv_divider.dart';
import 'package:portfolio/components/parts/svg_item.dart';
import 'package:portfolio/components/tabelling/cv_row.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade600,
        body: Center(
          child: SizedBox(
            width: 1000,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CvRow(
                        lChild: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: Image.asset(
                              'assets/images/cesare.jpg',
                            ).image,
                          ),
                        ],
                        rChild: [
                          Row(
                            children: [
                              Text(
                                'Cesare Emiliano',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined),
                              Text(
                                'Indirizzo:',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                '70032, Bitonto (BA)',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.email_outlined),
                              Text(
                                'E-mail:',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'postaemilia@gmail.com',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.phone_android_outlined),
                              Text(
                                'Cellulare:',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                '(+ 39) 3404131345',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      CvDivider(title: "FORMAZIONE"),
                      SizedBox(height: 16),
                      CvRow(
                        lChild: [
                          Text(
                            '[ 2020 - Attuale ]',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                        rChild: [
                          Row(
                            children: [
                              Text(
                                'LAUREA TRIENNALE IN INFORMATICA E TECNOLOGIE PER LA PRODUZIONE DEL SOFTWARE',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                'Università degli Studi di Bari Aldo Moro',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                'Bari',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      CvRow(
                        lChild: [
                          Text(
                            '[ 2015 - 2020 ]',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                        rChild: [
                          Text(
                            'PER. IND. SPECIALIZZATO IN INFORMATICA E TELECOMUNICAZIONI',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Istituto Tecnico Industriale \"Volta-De Gemmis\"",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Bitonto, Bari',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      CvDivider(title: "ESPERIENZE LAVORATIVE"),
                      SizedBox(height: 16),
                      CvRow(
                        lChild: [
                          Text(
                            '[ 03/2022 - Attuale ]',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                        rChild: [
                          //RichText example
                          Text.rich(
                            TextSpan(
                              text: 'Digiworks',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: ' | Bitonto, BA',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Sviluppatore Software',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '- Progettazione interfacce grafiche',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 4),

                          Text(
                            '- Progettazione e sviluppo di applicazioni web e mobile',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '- Responsabile rilascio applicazioni su Play Store e App Store',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '- Gestione versioning tramite Github',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '- Progettazione REST APIs e Database MySQL',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Tecnologie principali utilizzate: Flutter, Dart, Git, Github ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Altre tecnologie utilizzate: React, NodeJS, Firebase, Figma',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      CvDivider(title: "COMPETENZE"),
                      SizedBox(height: 16),
                      CvRow(
                        lChild: [],
                        rIsColumn: false,
                        rChild: [
                          SvgItem(
                              svgPath: 'assets/icons/dart.svg', title: 'Dart'),
                          SvgItem(
                              svgPath: 'assets/icons/serverpod.svg',
                              title: 'Serverpod'),
                        ],
                      ),
                      SizedBox(height: 8),
                      CvRow(
                        lChild: [],
                        rIsColumn: false,
                        rChild: [
                          SvgItem(
                              svgPath: 'assets/icons/flutter.svg',
                              title: 'Flutter'),
                          SvgItem(
                              svgPath: 'assets/icons/riverpod.svg',
                              title: 'Riverpod'),
                        ],
                      ),
                      SizedBox(height: 8),
                      CvRow(
                        lChild: [],
                        rIsColumn: false,
                        rChild: [
                          SvgItem(
                              svgPath: 'assets/icons/typescript.svg',
                              title: 'Typescript'),
                          ImageItem(
                              imgPath: 'assets/icons/react.png',
                              title: 'React'),
                          ImageItem(
                              imgPath: 'assets/icons/angular.png',
                              title: 'Angular'),
                        ],
                      ),
                      SizedBox(height: 8),
                      CvRow(
                        lChild: [],
                        rIsColumn: false,
                        rChild: [
                          ImageItem(
                              imgPath: 'assets/icons/java.png', title: 'Java'),
                          SvgItem(
                              svgPath: 'assets/icons/kotlin.svg',
                              title: 'Kotlin'),
                        ],
                      ),
                      SizedBox(height: 16),
                      CvDivider(title: "SOCIAL"),
                      SizedBox(height: 16),
                      CvRow(
                        lChild: [],
                        rChild: [
                          SocialItem(
                            url: 'https://github.com/CesareIsHere',
                            imgPath: 'assets/icons/github.png',
                            title: 'CesareIsHere',
                          ),
                          SocialItem(
                            url: 'https://www.linkedin.com/in/emilianocesaresw',
                            imgPath: 'assets/icons/linkedin.png',
                            title: 'Cesare Emiliano',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
