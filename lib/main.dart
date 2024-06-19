import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hotelroomreservation/view/signup.view.dart';
import 'package:provider/provider.dart';

import 'Provider/provider.dart';

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

    return ChangeNotifierProvider(
      create: (BuildContext context) => UiProvider()..init(),
      child:
          Consumer<UiProvider>(builder: (context, UiProvider notifier, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Dark Theme',
          //By default theme setting, you can also set system
          // when your mobile theme is dark the app also become dark

          themeMode: notifier.isDark ? ThemeMode.dark : ThemeMode.light,
        
          //Our custom theme applied
          darkTheme: notifier.isDark ? notifier.darkTheme : notifier.lightTheme,

          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const SignupView(),
          /* home: const SplashView(),*/
        );
      }),

    final List<Reservation> reservations = [];

    return GetMaterialApp(
      title: 'Hotel Transilvani',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashView(),

    );
  }
}
