// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelroomreservation/view/splash.view.dart';
import 'package:provider/provider.dart';

import 'Provider/provider.dart';

void main() {
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
          /*home: const StettingsPage(),*/
          home: const SplashView(),
        );
      }),
    );
  }
}
