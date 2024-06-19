import 'package:flutter/material.dart';
import 'package:hotelroomreservation/screens/homepage.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // ignore: avoid_print
        print('login');
      },
      child: Row(
        children: [
          Expanded(
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                      (states) => states.contains(MaterialState.disabled)
                          ? Colors.grey
                          : Colors.blue,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                      (route) => false,
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Se connecter",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ))),
        ],
      ),
    );
  }
}

class Buttonregister extends StatelessWidget {
  const Buttonregister({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // ignore: avoid_print
        print('Connexion');
      },
      child: Row(
        children: [
          Expanded(
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                      (states) => states.contains(MaterialState.disabled)
                          ? Colors.grey
                          : Colors.blue,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                      (route) => false,
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Inscrivez vous",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ))),
        ],
      ),
    );
  }
}
