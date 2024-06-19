import 'package:flutter/material.dart';
import 'package:hotelroomreservation/view/userinfo.view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Future<void> editField(String field) async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Votre profil"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 50),
          const Icon(
            Icons.person,
            size: 72,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'adressemail@gmail.com',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Informations de l\'utilisateur',
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextBox(
            text: 'Propriétaire',
            sectionName: 'Nom d\'utilisateur',
            onPressed: () {
              editField('Nom d\'utilisateur');
            },
          ),
          MyTextBox(
            text: 'mec cool',
            sectionName: 'Votre bio',
            onPressed: () {
              editField('Votre bio');
            },
          )
        ],
      ),
    );
  }
}
