// display_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hotelroomreservation/constantes.dart';
import 'package:hotelroomreservation/models/room.dart';
import 'package:hotelroomreservation/screens/roomcard.dart';
import 'package:hotelroomreservation/utils/navigationbar.dart';
import 'package:hotelroomreservation/utils/room_utils.dart'; // Importer la fonction de filtrage

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  String _balance = '';

  @override
  Widget build(BuildContext context) {
    List<Room> filteredRooms = [];

    if (_balance.isNotEmpty) {
      filteredRooms = filterRoomsByPrice(
          rooms, int.parse(_balance)); // Filtrer les chambres
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Hôtel Transilvani',
          style: TextStyle(
            color: Colors.white,
          ),
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // CircleAvatar(
                  //   backgroundImage:
                  //       NetworkImage('https://via.placeholder.com/150'),
                  // ),
                  SizedBox(width: 10.0),
                  Icon(Icons.monetization_on),
                  Text(
                    'Cliquez pour entrer votre budget ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                _showBalancePopup(context);
              },
              child: Container(
                width: double.infinity, // Use the full width of the parent
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: const LinearGradient(
                    colors: [Colors.purple, Colors.orange],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20.0),
                    const Text(
                      'Total Balance',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      // ignore: prefer_interpolation_to_compose_strings
                      _balance + " fcfa",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Chambre selon votre budgets",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            for (var room in filteredRooms)
              RoomCard(
                  room: room, reservations: [], key: Key(room.id.toString())),
          ],
        ),
      ),
      bottomNavigationBar: const barredenavigation(selectedIndex: 2),
    );
  }

  void _showBalancePopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Enter your Balance'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: ' balance',
                ),
                onChanged: (value) {
                  setState(() {
                    _balance = value;
                  });
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
