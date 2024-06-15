import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            onTabChange: (index) {
              print(index);
            },
            padding: EdgeInsets.all(16),
            tabs: const [
            GButton(icon: Icons.home,
            text: 'Acceuil',),
            GButton(icon: Icons.favorite_border,
            text: 'Favoris',),
            GButton(icon: Icons.search,
            text: 'Cherhcher',),
            GButton(icon: Icons.settings,
            text: 'Paramètres',),
          ],
          ),
        ),
      ) ,
    );
  }
}