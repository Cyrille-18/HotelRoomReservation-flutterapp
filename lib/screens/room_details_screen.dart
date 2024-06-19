import 'package:flutter/material.dart';
import 'package:hotelroomreservation/constantes.dart';
import 'package:hotelroomreservation/models/room.dart';
import 'package:hotelroomreservation/screens/homepage.dart';
import 'package:hotelroomreservation/screens/reservation_screen.dart';
import '../utils/navigationbar.dart';
import '../utils/listdecouleur.dart';
import '../utils/room_image.dart';
import 'package:hive/hive.dart';

class DetailRoom extends StatefulWidget {
  final Room room;
  final Key? key;
  const DetailRoom({this.key, required this.room});

  @override
  _DetailRoomState createState() => _DetailRoomState();
}

class _DetailRoomState extends State<DetailRoom> {
  late Box favorisBox;
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    favorisBox = Hive.box('favoris');
    isFavorite = favorisBox.get(widget.room.title) ?? false;
  }

  void toggleFavorite(BuildContext context) {
    setState(() {
      isFavorite = !isFavorite;
      favorisBox.put(widget.room.title, isFavorite);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            isFavorite
                ? 'Chambre ajoutée aux favoris'
                : 'Chambre retirée des favoris',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 1),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: appbardetails(context),
      body: detailsbody(
        room: widget.room,
        isFavorite: isFavorite,
        onFavoriteToggle: () => toggleFavorite(context),
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
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const Homepage()),
            (route) => false,
          );
        },
      ),
      centerTitle: false,
      title: Text(
        "Retour".toUpperCase(),
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.card_travel_sharp))
      ],
    );
  }
}

class detailsbody extends StatelessWidget {
  final Room room;
  final Key? key;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  const detailsbody(
      {required this.room,
      this.key,
      required this.isFavorite,
      required this.onFavoriteToggle});

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${room.price} FCFA",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: kSecondaryColor,
                      ),
                    ),
                    InkWell(
                      onTap: onFavoriteToggle,
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : Colors.grey,
                        size: 40,
                      ),
                    ),
                  ],
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReservationForm(room: room),
                  ),
                );
              },
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
