import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hotelroomreservation/constantes.dart';
import 'package:hotelroomreservation/models/reservationclass.dart';
import 'package:hotelroomreservation/screens/homepage.dart';
import 'package:hotelroomreservation/view/splash.view.dart';

Future<void> main() async {
  Hive.initFlutter();

  await Hive.openBox('favoris');
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Reservation> reservations = [];

    return GetMaterialApp(
      title: 'Hotel Transilvani',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
