import 'package:bwell/helper/navigate.dart';
import 'package:bwell/screens/profile_screen.dart';
import 'package:bwell/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("About"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  goTo(context, const ProfileScreen());
                },
                child: const Text("Profile"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  goTo(context, const SettingScreen());
                },
                child: const Text("Settings"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
