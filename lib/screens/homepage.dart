import 'dart:ui';
// import 'package:flutter_svg/svg.dart';
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

import '../view/navigationbar.dart';
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
      bottomNavigationBar: navigationbar(),
    );
  }
}

class RoomCard extends StatelessWidget {
  final Room room;
  final Key? key; // Make key a super parameter

  const RoomCard({required this.room, this.key});

  // ... rest of your RoomCard widget code

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      // color: Colors.blueAccent,
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          //arriere-plan
          Container(
            height: 135,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: kBlueColor,
              boxShadow: [kDefaultShadow],
            ),
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
          // image de la chambre
          Positioned(
              top: 25,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 135,
                  width: 230,
                  child: Image.asset(
                    room.image,
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          //Nom et Description de la chambre
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 136,
              width: size.width - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                      room.title,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 1.5, //30 padding
                      vertical: kDefaultPadding / 4, // 5 en haut 5 en bas
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22)),
                    ),
                    child: Text(
                      "${room.price} FCFA",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
