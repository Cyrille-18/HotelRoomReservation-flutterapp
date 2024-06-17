import 'dart:ui';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hotelroomreservation/constantes.dart';
import 'package:hotelroomreservation/models/room.dart';
import 'package:hotelroomreservation/screens/room_details_screen.dart';

import '../widgets/room_card.dart';

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
              child: const Column(
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
                ],
              ),
            ),
            //creation des chambres 
            ListView.builder(
              itemCount: Rooms.length,
              itemBuilder: (Context, index)=>room_card(itemIndex: index, room: Rooms[index], press: (){
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailRoom(
                            // Room: Rooms[index],
                            
                          ),
                        ),
                      );
              })),

            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(255, 29, 31, 30),
            gap: 8,
            onTabChange: (index) {
              print(index);
            },
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Acceuil',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'Favoris',
              ),
              GButton(
                icon: Icons.search,
                text: 'Cherhcher',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Paramètres',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
