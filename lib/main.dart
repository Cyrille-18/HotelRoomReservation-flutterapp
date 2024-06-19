import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hotelroomreservation/constantes.dart';
import 'package:hotelroomreservation/models/reservationclass.dart';
import 'package:hotelroomreservation/screens/homepage.dart';
import 'package:hotelroomreservation/view/signup.view.dart';
import 'package:hotelroomreservation/view/splash.view.dart';
import 'package:provider/provider.dart';

import 'Provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('favoris');

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => UiProvider()..init(),
      child: Consumer<UiProvider>(
        builder: (context, UiProvider notifier, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Hotel Transilvani',
            theme: notifier.isDark ? notifier.darkTheme : notifier.lightTheme,
            home: const SplashView(),
          );
        },
      ),
    );
  }
}
