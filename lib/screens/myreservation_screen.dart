import 'package:flutter/material.dart';
import 'package:hotelroomreservation/constantes.dart';
import 'package:hotelroomreservation/models/reservationclass.dart';
import 'package:hotelroomreservation/utils/navigationbar.dart';
import 'package:intl/intl.dart';

class MyReservation extends StatelessWidget {
  final List<Reservation> reservations;

  MyReservation({Key? key, List<Reservation>? reservations})
      : reservations = reservations ??
            [], // Utilisation de la liste fournie ou une liste vide par défaut
        super(key: key);

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
      bottomNavigationBar: barredenavigation(selectedIndex: 1),
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
              child: reservations.isEmpty
                  ? Center(
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
                    )
                  : ListView.builder(
                      itemCount: reservations.length,
                      itemBuilder: (context, index) {
                        final reservation = reservations[index];
                        return Card(
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          child: ListTile(
                            title: Text(
                                '${reservation.name} ${reservation.surname}'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Email: ${reservation.email}'),
                                Text('Sexe: ${reservation.gender}'),
                                Text(
                                    'Date de réservation: ${DateFormat('dd/MM/yyyy').format(reservation.reservationDate)}'),
                                Text('Chambre: ${reservation.room.title}'),
                                Text('Prix: ${reservation.room.price} FCFA'),
                              ],
                            ),
                            leading: Image.asset(
                              reservation.room.image,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
