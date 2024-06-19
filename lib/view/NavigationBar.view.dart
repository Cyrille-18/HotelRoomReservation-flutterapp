import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hotelroomreservation/screens/settings.page.dart';

class navigationbar extends StatefulWidget {
  const navigationbar({
    super.key,
  });

  @override
  State<navigationbar> createState() => _navigationbarState();
}

class _navigationbarState extends State<navigationbar> {
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
          tabBackgroundColor: Colors.grey.shade800,
          gap: 8,
          onTabChange: (index) {
            print(index);
          },
          padding: const EdgeInsets.all(16),
          tabs: [
            const GButton(
              icon: Icons.home,
              text: 'Acceuil',
            ),
            const GButton(
              icon: Icons.favorite_border,
              text: 'Favoris',
            ),
            const GButton(
              icon: Icons.search,
              text: 'Cherhcher',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Paramètres',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StettingsPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*class navbarsettings extends StatelessWidget {
  const navbarsettings({
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
          tabBackgroundColor: Colors.grey.shade800,
          gap: 8,
          onTabChange: (index) {
            print(index);
          },
          padding: const EdgeInsets.all(16),
          tabs: [
            const GButton(
              icon: Icons.home,
              text: 'Acceuil',
            ),
            const GButton(
              icon: Icons.favorite_border,
              text: 'Favoris',
            ),
            const GButton(
              icon: Icons.search,
              text: 'Cherhcher',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Paramètres',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StettingsPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}*/
