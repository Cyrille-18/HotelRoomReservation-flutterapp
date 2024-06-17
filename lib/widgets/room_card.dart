import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelroomreservation/constantes.dart';
import 'package:hotelroomreservation/models/room.dart';

class room_card extends StatelessWidget {
  const room_card({
     Key?key,
    required this.itemIndex,
    required this.room,
    required this.press,
  }) : super(key: key);

  final int itemIndex;
  final Room room;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 2,
          ),
          // color: Colors.blueAccent,
          height: 160,
          child: InkWell(
            onTap: (){},
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
    // Those are our background
    Container(
      height: 136,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
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
    // our product image
    Positioned(
      top: 0,
      right: 0,
      child: Hero(
        tag: '${room.id}',
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          height: 160,
          // image is square but we add extra 20 + 20 padding thats why width is 200
          width: 200,
          child: Image.asset(
            room.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
    // Product title and price
    Positioned(
      bottom: 0,
      left: 0,
      child: SizedBox(
        height: 136,
        // our image take 200 width, thats why we set out total width - 200
        width:  - 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding),
              child: Text(
                room.title,
                style: Theme.of(context).textTheme.button,
              ),
            ),
            // it use the available space
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.5, // 30 padding
                vertical: kDefaultPadding / 4, // 5 top and bottom
              ),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                ),
              ),
              child: Text(
                "\$${room.price}",
                style: Theme.of(context).textTheme.button,
              ),
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
