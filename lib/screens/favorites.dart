import 'package:flutter/material.dart';
import 'package:hotelroomreservation/constantes.dart';
import 'package:hotelroomreservation/models/room.dart';
import 'package:hotelroomreservation/screens/room_details_screen.dart';
import 'package:hotelroomreservation/screens/roomcard.dart';
import 'package:hotelroomreservation/utils/navigationbar.dart';
import 'package:hive/hive.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Hôtel Transilvani',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kPrimaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
            color: Colors.white,
            iconSize: 25,
          )
        ],
      ),
      bottomNavigationBar: barredenavigation(
        selectedIndex: 1,
      ),
    );
  }
}
