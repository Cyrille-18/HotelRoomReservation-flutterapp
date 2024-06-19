import 'package:flutter/material.dart';

class MyListTitle extends StatelessWidget {
  final IconData icon;
  final String text;
  /*final Function()? onTap;*/
  final VoidCallback? onTap;

  const MyListTitle(
      {super.key, required this.icon, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        /*leading: Icon(icon, color: const Color.fromARGB(255, 0, 0, 0)),*/
        trailing: Icon(
          icon,
          /*color: const Color.fromARGB(255, 0, 0, 0)*/
        ),
        /* onTap: onTap,*/
        title: Text(
          text,
          style: const TextStyle(
              /*color: Color.fromARGB(255, 0, 0, 0)*/
              ),
        ),
        onTap: onTap,
      ),
    );
  }
}
