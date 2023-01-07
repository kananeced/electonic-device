import 'package:flutter/material.dart';
import 'package:hi_smart_home/Sreens/widget/utility.dart';

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
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(37, 49, 61, 1),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: title(
                        name: 'Mornin\' CoolCeda!',
                        colorText: Colors.white,
                        width: 25),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logo/crepiscule.jpg'),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                      )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        6,
                        (index) => SizedBox(
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    height: 70,
                                    width: 70,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white.withOpacity(0.2),
                                      ),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    child: const Text(
                                      'data',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const Text(
                                    'Mbote',
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
