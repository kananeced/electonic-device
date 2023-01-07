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
                        (index) => Column(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                  child: InkWell(
                                      child: Container(
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/logo/crepiscule.jpg'),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                  )),
                                ),
                                const Text(
                                  'Mbote',
                                  // textAlign: TextAlign.center,
                                )
                              ],
                            ))),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  color: const Color.fromARGB(255, 21, 33, 39).withOpacity(0.7),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 25, bottom: 5),
                    child: Row(
                      children: List.generate(
                          5,
                          (index) => Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                        right: 15,
                                      ),
                                      width: 300,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/logo/pallais.jpg'),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.circular(35),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        right: 15,
                                      ),
                                      height: 130,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(35),
                                          bottomRight: Radius.circular(35),
                                        ),
                                        color: Colors.white.withOpacity(0.4),
                                      ),
                                    )
                                  ])),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 21, 33, 39).withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
