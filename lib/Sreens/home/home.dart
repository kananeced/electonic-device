import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String routeName = "/home";
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration:  const BoxDecoration(
            color: Color.fromARGB(255, 0, 22, 34),
          ),
        ),
      ),
    );
  }
}
