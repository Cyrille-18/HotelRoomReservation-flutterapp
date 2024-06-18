import 'package:flutter/material.dart';
import 'package:hotelroomreservation/constantes.dart';

import '../utils/navigationbar.dart';

class favorites extends StatelessWidget {
  const favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            style: TextStyle(
              color: Colors.white,
            ),
            'Hôtel Transilvani',
          ),
          backgroundColor: kPrimaryColor, // Color.fromARGB(19, 17, 2, 2),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_outlined),
              color: Colors.white,
              iconSize: 25,
            )
          ]),
      bottomNavigationBar: barredenavigation(selectedIndex: 1),
    );
  }
}
