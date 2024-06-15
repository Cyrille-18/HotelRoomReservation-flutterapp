import 'package:flutter/material.dart';
import 'package:hotelroomreservation/utils/global.colors.dart';
import 'package:hotelroomreservation/widgets/button.global.dart';
import 'package:hotelroomreservation/widgets/social.login.dart';
import 'package:hotelroomreservation/widgets/text.form.global.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

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
                    'Logo',
                    style: TextStyle(
                      color: GlobalColors.maincolor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Enter your login account',
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
                    text: 'Email',
                    obscure: false,
                    textInputType: TextInputType.emailAddress),
                const SizedBox(
                  height: 10,
                ),
                TextFromGlobal(
                  controller: passwordController,
                  text: 'Password',
                  textInputType: TextInputType.text,
                  obscure: true,
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