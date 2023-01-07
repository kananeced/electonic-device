import 'package:flutter/material.dart';
import 'package:hi_smart_home/Sreens/auth/accueil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  init() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, const Accueil().routeName);
    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/logo/logo1.png"),
          )),
        ),
      ),
    );
  }
}
