import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class navigationbar extends StatelessWidget {
  const navigationbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Acceuil',
            ),
            GButton(
              icon: Icons.favorite_border,
              text: 'Favoris',
              onPressed: () {},
            ),
            GButton(
              icon: Icons.search,
              text: 'Budgets',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Paramètres',
            ),
          ],
        ),
      ),
    );
  }
}
