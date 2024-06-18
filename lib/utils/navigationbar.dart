import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hotelroomreservation/screens/favorites.dart';
import 'package:hotelroomreservation/screens/homepage.dart';

class barredenavigation extends StatefulWidget {
  final int selectedIndex;

  const barredenavigation({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  State<barredenavigation> createState() => _barredenavigationState();
}

class _barredenavigationState extends State<barredenavigation> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Homepage()),
          (route) => false,
        );
        break;
      case 1:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const favorites()),
          (route) => false,
        );
        break;
    }
  }

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
          tabBackgroundColor: const Color.fromARGB(255, 29, 31, 30),
          gap: 8,
          onTabChange: _onTabSelected,
          padding: const EdgeInsets.all(16),
          selectedIndex: _selectedIndex,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Accueil',
            ),
            GButton(
              icon: Icons.favorite_border,
              text: 'Favoris',
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
