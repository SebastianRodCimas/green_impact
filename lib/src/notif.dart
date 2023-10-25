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
                        'assets/image/notif-robinet.png', // Remplacez 'assets/icon/icon.png' par le chemin de votre image
                        width: 300,
                        height: 300,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Fermez le robinet',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Réduction de la consommation d'eau",
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
                        'assets/image/notif-prise.png',
                        width: 250,
                        height: 250,
                      ),
                      SizedBox(height: 40),
                      Text(
                        'Retirez les prises unitilisées',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Réduction de votre consommation électriques',
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
                        'assets/image/notif-recyclage.png', // Remplacez 'assets/icon/icon.png' par le chemin de votre image
                        width: 300,
                        height: 300,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Recyclez vos déchets',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Réduction des déchets dans les décharges',
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
                        'assets/image/notif-tri.jpg', // Remplacez 'assets/icon/icon.png' par le chemin de votre image
                        width: 300,
                        height: 300,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Triez vos déchets',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Recyclage facilité",
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
                        if (_pageController.page != 4) {
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
