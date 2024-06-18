import 'package:flutter/material.dart';
import 'package:hotelroomreservation/utils/global.colors.dart';
import 'package:hotelroomreservation/view/login.view.dart';
import 'package:hotelroomreservation/widgets/button.global.dart';
import 'package:hotelroomreservation/widgets/social.login.dart';
import 'package:hotelroomreservation/widgets/text.form.global.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _LoginViewState();
}

class _LoginViewState extends State<SignupView> {
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
                const SizedBox(height: 15),
                Text(
                  'Register now',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFromGlobal(
                    controller: emailController,
                    text: 'Enter your email',
                    obscure: false,
                    textInputType: TextInputType.emailAddress),
                const SizedBox(
                  height: 10,
                ),
                PassFromGlobal(
                  controller: passwordController,
                  text: 'Enter your password',
                  textInputType: TextInputType.text,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Buttonregister(),
                const SizedBox(
                  height: 375,
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
            const Text('Did you have an account ?'),
            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginView()),
                  (route) => false,
                );
              },
              child: Text(
                'Sign in',
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
