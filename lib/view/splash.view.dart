// ignore_for_file: unused_import

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:hotelroomreservation/utils/global.colors.dart';
import 'package:hotelroomreservation/view/login.view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      /*Get.to(const LoginView());*/
      Get.off(() => const LoginView());
    });
    return Scaffold(
        backgroundColor: GlobalColors.maincolor,
        body: const Center(
            child: Text('Hôtel Transilvani',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold))));
  }
}
