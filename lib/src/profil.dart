import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  int _currentIndex = 0;
  late String _avatarImagePath;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _avatarImagePath = pickedFile.path;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    // Définir l'image par défaut ici (aucune image)
    _avatarImagePath =
        'assets/icon/+.png'; // Ajoutez le chemin vers votre image par défaut
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GreenImpact',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green.shade600,
      ),
      backgroundColor: Colors.green.shade600,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Avatar de l'utilisateur et nom d'utilisateur
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Avatar de l'utilisateur
                _avatarImagePath != null
                    ? GestureDetector(
                        onTap: _pickImage,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.green.shade600,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(_avatarImagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    : FloatingActionButton(
                        onPressed: _pickImage,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.add,
                          color: Colors.green.shade600,
                        ),
                      ),
                SizedBox(width: 20), // Espacement entre l'avatar et le nom
                // Nom d'utilisateur
                Text(
                  'Nom d\'utilisateur',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '       Tache 1',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Container(
                    width: 50.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/icon/icon.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '       Tache 1',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Container(
                    width: 50.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/icon/icon.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '       Tache 1',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Container(
                    width: 50.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/icon/icon.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedLabelStyle: TextStyle(color: Colors.white),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          backgroundColor: Colors.green.shade600,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.perm_identity_rounded,
                size: 35,
                color: Colors.white,
              ),
              label: 'Profil',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.question_mark_sharp,
                color: Colors.white,
                size: 35,
              ),
              label: 'Questionnaire',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.data_exploration_rounded,
                size: 35,
                color: Colors.white,
              ),
              label: 'Bilan',
            ),
          ],
        ),
      ),
    );
  }
}
