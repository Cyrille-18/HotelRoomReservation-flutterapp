import 'dart:ui';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hotelroomreservation/constantes.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      
        title: const Text(
          'Hôtel Transilvani',
        ),
        backgroundColor: kPrimaryColor,// Color.fromARGB(19, 17, 2, 2),
        centerTitle: true,
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.place),
            color: Color.fromARGB(255, 172, 193, 204),
            iconSize: 35,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //color: Color.fromRGBO(201, 236, 243, 1),
              padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
              child: const Column(
                children: [
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Material(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'search',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF144DCA),
                          child: IconButton(
                            icon: Icon(Icons.search, color: Colors.white),
                            onPressed: null,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            //chambre numero1
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              height: 160,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    height: 136,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(
                              0.5), // Couleur de l'ombre avec une opacité
                          spreadRadius: 5, // Diffusion de l'ombre
                          blurRadius: 7, // Flou de l'ombre
                          offset: const Offset(3,
                              3), // Décalage horizontal et vertical de l'ombre
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(36, 40, 167, 1),
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(3), // Border width
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(245, 241, 240, 1),
                          shape: BoxShape.rectangle),
                      child: ClipRRect(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(100), // Image radius
                          child: Image.asset('assets/images/chbre4.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: SizedBox(
                        height: 136,
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'CHAMBRE CLASSIQUE N 1',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 6,
                              ),
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(228, 226, 217, 1),
                              ),
                              child: const Text('35000 FCFA'),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            //chambre 2
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              height: 160,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    height: 136,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(
                              0.5), // Couleur de l'ombre avec une opacité
                          spreadRadius: 5, // Diffusion de l'ombre
                          blurRadius: 7, // Flou de l'ombre
                          offset: const Offset(3,
                              3), // Décalage horizontal et vertical de l'ombre
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(14, 17, 80, 1),
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(3), // Border width
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(245, 241, 240, 1),
                          shape: BoxShape.rectangle),
                      child: ClipRRect(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(100), // Image radius
                          child: Image.asset('assets/images/cbre3.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: SizedBox(
                        height: 136,
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'CHAMBRE CLASSIQUE N 2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 6,
                              ),
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(228, 226, 217, 1),
                              ),
                              child: const Text('40000 FCFA'),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              // color: Colors.blueAccent,
              height: 160,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    height: 136,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(
                              0.5), // Couleur de l'ombre avec une opacité
                          spreadRadius: 5, // Diffusion de l'ombre
                          blurRadius: 7, // Flou de l'ombre
                          offset: const Offset(3,
                              3), // Décalage horizontal et vertical de l'ombre
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(72, 75, 167, 1),
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(3), // Border width
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(245, 241, 240, 1),
                          shape: BoxShape.rectangle),
                      child: ClipRRect(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(100), // Image radius
                          child: Image.asset('assets/images/chambre1.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: SizedBox(
                        height: 136,
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'CHAMBRE CLASSIQUE N 3',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 6,
                              ),
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(228, 226, 217, 1),
                              ),
                              child: const Text('42000 FCFA'),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              // color: Colors.blueAccent,
              height: 160,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    height: 136,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(
                              0.5), // Couleur de l'ombre avec une opacité
                          spreadRadius: 5, // Diffusion de l'ombre
                          blurRadius: 7, // Flou de l'ombre
                          offset: const Offset(3,
                              3), // Décalage horizontal et vertical de l'ombre
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(14, 17, 80, 1),
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(3), // Border width
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(245, 241, 240, 1),
                          shape: BoxShape.rectangle),
                      child: ClipRRect(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(100), // Image radius
                          child: Image.asset('assets/images/chbre6.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: SizedBox(
                        height: 136,
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'CHAMBRE CLASSIQUE N 4',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 6,
                              ),
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(228, 226, 217, 1),
                              ),
                              child: const Text('40000 FCFA'),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              // color: Colors.blueAccent,
              height: 160,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    height: 136,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(
                              0.5), // Couleur de l'ombre avec une opacité
                          spreadRadius: 5, // Diffusion de l'ombre
                          blurRadius: 7, // Flou de l'ombre
                          offset: const Offset(3,
                              3), // Décalage horizontal et vertical de l'ombre
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(14, 17, 80, 1),
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(3), // Border width
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(245, 241, 240, 1),
                          shape: BoxShape.rectangle),
                      child: ClipRRect(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(100), // Image radius
                          child: Image.asset('assets/images/chre7.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: SizedBox(
                        height: 136,
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'CHAMBRE CLASSIQUE N 5',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 6,
                              ),
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(228, 226, 217, 1),
                              ),
                              child: const Text('45000 FCFA'),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              // color: Colors.blueAccent,
              height: 160,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    height: 136,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(
                              0.5), // Couleur de l'ombre avec une opacité
                          spreadRadius: 5, // Diffusion de l'ombre
                          blurRadius: 7, // Flou de l'ombre
                          offset: const Offset(3,
                              3), // Décalage horizontal et vertical de l'ombre
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFF5622B8),
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(3), // Border width
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(245, 241, 240, 1),
                          shape: BoxShape.rectangle),
                      child: ClipRRect(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(100), // Image radius
                          child: Image.asset('assets/images/cbre1.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: SizedBox(
                        height: 136,
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'CHAMBRE CLASSIQUE N 6',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 6,
                              ),
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(228, 226, 217, 1),
                              ),
                              child: const Text('50000 FCFA'),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(255, 29, 31, 30),
            gap: 8,
            onTabChange: (index) {
              print(index);
            },
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Acceuil',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'Favoris',
              ),
              GButton(
                icon: Icons.search,
                text: 'Cherhcher',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Paramètres',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
