import 'package:bwell/screens/about_screen.dart';
import 'package:bwell/screens/profile_screen.dart';
import 'package:bwell/screens/settings_screen.dart';
import 'package:flutter/material.dart';

import '../helper/navigate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text("Home"),
          actions: [
            GestureDetector(
                onTap: () {
                  goTo(context, const SettingScreen());
                },
                child: const Icon(Icons.settings))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  goTo(context, const AboutScreen());
                },
                child: const Text("About"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  goTo(context, const ProfileScreen());
                },
                child: const Text("Profile"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
