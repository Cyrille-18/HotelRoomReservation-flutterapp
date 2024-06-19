// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hotelroomreservation/Provider/provider.dart';
import 'package:hotelroomreservation/profile/cubit/settings_cubit.dart';
import 'package:hotelroomreservation/profile/widgets/app_info_widget.dart';
import 'package:hotelroomreservation/profile/widgets/help_and_support_widget.dart';
import 'package:hotelroomreservation/screens/profile.page.dart';
import 'package:hotelroomreservation/utils/navigationbar.dart';
import 'package:hotelroomreservation/view/NavigationBar.view.dart';
import 'package:hotelroomreservation/view/login.view.dart';
import 'package:hotelroomreservation/view/my_list_title.dart';
import 'package:provider/provider.dart';

class StettingsPage extends StatelessWidget {
  /*final void Function()? onProfileTap;
  final void Function()? onSignOut;*/
  const StettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body:
          Consumer<UiProvider>(builder: (context, UiProvider notifier, child) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const DrawerHeader(
                child: Icon(
                  Icons.person,
                  /*color: Colors.black,*/
                  size: 64,
                ),
              ),
              MyListTitle(
                icon: Icons.info_sharp,
                text: 'information du profil',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
                  );
                },
              ),
              const ListTile(
                title: Text('Profile preferences'),
                subtitle: Text('Configure your profile preferences'),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                title: const Text('Help and Support'),
                subtitle: const Text('Get help and support'),
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    useRootNavigator: true,
                    showDragHandle: true,
                    builder: (context) => const HelpAndSupportWidget(),
                  );
                },
                trailing: const Icon(Icons.help),
              ),
              ListTile(
                title: const Text('App info'),
                subtitle: const Text('Info and credits'),
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    useRootNavigator: true,
                    showDragHandle: true,
                    builder: (context) => const AppInfoWidget(),
                  );
                },
                trailing: const Icon(Icons.info),
              ),
              ListTile(
                title: const Text('Privacy Settings'),
                subtitle: const Text('Consult privacy policies'),
                onTap: () {
                  // TODO(profile): Navigate to privacy settings screen
                },
                trailing: const Icon(Icons.privacy_tip),
              ),
              ListTile(
                leading: const Icon(Icons.dark_mode),
                title: const Text("Dark theme"),
                trailing: Switch(
                    value: notifier.isDark,
                    onChanged: (value) => notifier.changeTheme()),
              ),
              const SizedBox(
                height: 30,
              ),
              MyListTitle(
                icon: Icons.logout,
                text: 'logout',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginView()),
                  );
                },
              ),
              const SizedBox(
                height: 3.2,
              ),
            ],
          ),
        );
      }),
      bottomNavigationBar: const barredenavigation(selectedIndex: 3),
    );
  }
}
