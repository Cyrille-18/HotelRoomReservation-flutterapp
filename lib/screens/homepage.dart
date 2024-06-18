import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hotelroomreservation/constantes.dart';
import 'package:hotelroomreservation/models/room.dart';

import '../utils/navigationbar.dart';
import 'roomcard.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //color: Color.fromRGBO(201, 236, 243, 1),
              padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Material(
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black26,
                                  ),
                                  hintText: 'Rechercher',
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0)),
                                      borderSide:
                                          BorderSide(color: kPrimaryColor)),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                    borderSide: BorderSide(color: Colors.black),
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Column(
                    // Wrap RoomCards in a Column
                    children:
                        rooms.map((room) => RoomCard(room: room)).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const barredenavigation(selectedIndex: 0),
    );
  }
}
