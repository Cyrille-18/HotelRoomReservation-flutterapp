import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hotelroomreservation/models/reservationclass.dart';
import 'package:hotelroomreservation/screens/myreservation_screen.dart';
import 'package:hotelroomreservation/screens/homepage.dart';

class barredenavigation extends StatefulWidget {
  final int selectedIndex;
  final List<Reservation>? reservations;

  const barredenavigation({
    Key? key,
    required this.selectedIndex,
    this.reservations,
  }) : super(key: key);

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
          MaterialPageRoute(
            builder: (context) => MyReservation(
              reservations: widget.reservations,
            ),
          ),
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
              icon: Icons.event,
              text: 'Mes Réservations',
            ),
            GButton(
              icon: Icons.monetization_on_outlined,
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
