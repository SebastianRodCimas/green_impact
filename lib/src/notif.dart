import 'package:flutter/material.dart';
import 'package:green_impact/src/profil.dart';

class Notif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                // Page 1
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon/icon.png', // Remplacez 'assets/icon/icon.png' par le chemin de votre image
                        width: 200,
                        height: 200,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Titre de la Page 1',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Texte de la Page 2',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),

                // Page 2 (similaire à la Page 1)
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon/icon.png',
                        width: 150,
                        height: 150,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Titre de la Page 2',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Texte de la Page 2',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon/icon.png', // Remplacez 'assets/icon/icon.png' par le chemin de votre image
                        width: 150,
                        height: 150,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Titre de la Page 3',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Texte de la Page 2',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors
                .white, // Ajoutez une couleur de fond à votre barre de navigation
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0, bottom: 50),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_pageController.page != 0) {
                          _pageController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      child: Text(
                        ' Précédent',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.blue, // Couleur du bouton "Précédent"
                        padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical:
                                10), // Ajustez le padding selon vos préférences
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20), // Ajustez le padding selon vos préférences
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, bottom: 50),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_pageController.page != 2) {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      child: Text(
                        'Suivant',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Naviguer vers la page Profil.dart
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profil()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 40, left: 20),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green, // Couleur du texte "Skip"
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
