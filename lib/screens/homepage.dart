import 'package:flutter/material.dart';
import 'package:hotelroomreservation/view/NavigationBar.view.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: navigationbar(),
    );
  }
}
