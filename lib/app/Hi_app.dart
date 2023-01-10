import 'package:flutter/material.dart';
import 'package:hi_smart_home/Sreens/auth/accueil.dart';
import 'package:hi_smart_home/Sreens/auth/login.dart';
import 'package:hi_smart_home/Sreens/auth/sign_up.dart';
import 'package:hi_smart_home/Sreens/splash_screen.dart';

import '../Sreens/home/home.dart';

class HiSmart extends StatelessWidget {
  const HiSmart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hi Smart Home',
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: const Color.fromARGB(255, 1, 29, 43),
      ),
      home: const Home(),
      routes: {
        const Accueil().routeName: (context) => const Accueil(),
        const SignUp().routeName: (context) => const SignUp(),
        const Login().routeName: (context) => const Login(),
        const Home().routeName: (context) => const Home()
      },
    );
  }
}
