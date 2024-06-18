import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelroomreservation/constantes.dart';
import 'package:hotelroomreservation/models/room.dart';

import '../utils/colordot.dart';
import '../utils/navigationbar.dart';

import '../utils/listdecouleur.dart';
import '../utils/room_image.dart';

class DetailRoom extends StatelessWidget {
  final Room room;
  final Key? key;
  const DetailRoom({this.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: appbardetails(context),
      body: detailsbody(
        room: room,
      ),
      bottomNavigationBar: barredenavigation(selectedIndex: 0),
    );
  }

  AppBar appbardetails(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        "Retour".toUpperCase(),
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: Icon(Icons.card_travel_sharp))
      ],
    );
  }
}

class detailsbody extends StatelessWidget {
  final Room room;
  final Key? key;

  const detailsbody({required this.room, this.key});

  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; // donne la taille et la largeur total
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(child: room_poster(size: size, image: room.image)),
                listofcolor(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(
                    room.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Text(
                  "${room.price} FCFA",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                    room.description,
                    style: TextStyle(color: kTextLightColor),
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding,
                )
              ],
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding / 2,
            ),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(30)),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: kDefaultPadding / 2,
                  ),
                  Spacer(),
                  Text(
                    "Reserver la chambre",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
