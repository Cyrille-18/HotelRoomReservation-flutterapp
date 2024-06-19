import 'package:flutter/material.dart';
import 'package:hotelroomreservation/constantes.dart';
import 'package:hotelroomreservation/utils/navigationbar.dart';

class Myreservation extends StatefulWidget {
  const Myreservation({Key? key}) : super(key: key);

  @override
  _MyreservationState createState() => _MyreservationState();
}

class _MyreservationState extends State<Myreservation> {
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
          ),
        ],
      ),
      bottomNavigationBar: barredenavigation(
        selectedIndex: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vos réservations:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.event_busy,
                      size: 50.0,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Vous n\'avez aucune réservations pour le moment.',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
