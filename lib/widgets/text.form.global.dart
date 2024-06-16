// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class TextFromGlobal extends StatelessWidget {
  const TextFromGlobal(
      {super.key,
      required this.controller,
      required this.text,
      required this.textInputType,
      required this.obscure});
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.only(top: 3, left: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 7,
            )
          ]),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        obscureText: false,
        decoration: const InputDecoration(
          hintText: 'Email',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(0),
        ),
      ),
    );
  }
}

class PassFromGlobal extends StatefulWidget {
  const PassFromGlobal({
    super.key,
    required this.controller,
    required this.text,
    required this.textInputType,
  });

  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;

  @override
  State<PassFromGlobal> createState() => _PassFromGlobalState();
}

class _PassFromGlobalState extends State<PassFromGlobal> {
  bool isobscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.only(top: 3, left: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 7,
            )
          ]),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.text,
        obscureText: isobscure,
        obscuringCharacter: "*",
        decoration: InputDecoration(
            hintText: 'Password',
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),

            /*border:  OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              
            ),*/
            contentPadding: const EdgeInsets.all(0),
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isobscure = !isobscure;
                  });
                },
                icon:
                    Icon(isobscure ? Icons.visibility : Icons.visibility_off))),
      ),
    );
  }
}
