import 'package:flutter/material.dart';
import 'package:hotelroomreservation/utils/global.colors.dart';
import 'package:hotelroomreservation/view/signup.view.dart';
import 'package:hotelroomreservation/widgets/button.global.dart';
import 'package:hotelroomreservation/widgets/social.login.dart';
import 'package:hotelroomreservation/widgets/text.form.global.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Hôtel Transilvani',
                    style: TextStyle(
                      color: GlobalColors.maincolor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                /*Text(
                  'Enter your login account',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),*/
                /*const Center(
                  child: Icon(
                    Icons.person,
                    size: 72,
                  ),
                ),*/
                const Center(
                  child: CircleAvatar(
                    radius: 50, // Ajuste le rayon selon les besoins
                    backgroundColor:
                        Colors.black, // La couleur de fond du cercle
                    child: Icon(
                      Icons.person,
                      size: 72, // La taille de l'icône à l'intérieur
                      color: Colors.white, // La couleur de l'icône
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFromGlobal(
                    controller: emailController,
                    text: 'Email',
                    obscure: false,
                    textInputType: TextInputType.emailAddress),
                const SizedBox(
                  height: 10,
                ),
                PassFromGlobal(
                  controller: passwordController,
                  text: 'Mot de passe',
                  textInputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 10,
                ),
                const ButtonGlobal(),
                const SizedBox(
                  height: 25,
                ),
                const SocialLogin(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Dont\'t have an account ?'),
            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupView()),
                  (route) => false,
                );
              },
              child: Text(
                'Sign up',
                style: TextStyle(
                  color: GlobalColors.maincolor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
