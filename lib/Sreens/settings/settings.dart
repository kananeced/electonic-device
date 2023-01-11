import 'package:flutter/material.dart';
import 'package:hi_smart_home/Sreens/widget/utility.dart';

class Settings extends StatefulWidget {
  final String routeName = "/Settings";
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/logo/crepiscule.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      const Color.fromARGB(255, 1, 29, 43),
                      const Color.fromARGB(255, 1, 29, 43).withAlpha(10)
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width - 70,
                            top: 30),
                        child: IconButton(
                            alignment: Alignment.topRight,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.close,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text(
                        'CoolCeda CoolCeda',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          card(icon: Icons.edit, text: 'Edit Profile'),
          const SizedBox(
            height: 15,
          ),
          card(icon: Icons.person, text: 'Edit Profile'),
          const SizedBox(
            height: 15,
          ),
          card(icon: Icons.settings, text: 'Edit Profile'),
          const SizedBox(
            height: 40,
          ),
          card(icon: Icons.chat_rounded, text: 'Edit Profile'),
          const SizedBox(
            height: 15,
          ),
          card(icon: Icons.send_rounded, text: 'Edit Profile'),
          const SizedBox(
            height: 40,
          ),
          card(icon: Icons.logout, text: 'Edit Profile'),
        ],
      ),
    );
  }

  Widget card({
    IconData? icon,
    String? text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color.fromARGB(68, 255, 255, 255),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text!,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
