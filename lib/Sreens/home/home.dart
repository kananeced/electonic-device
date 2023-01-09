import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hi_smart_home/Sreens/widget/Devices.dart';
import 'package:hi_smart_home/Sreens/widget/utility.dart';

class Home extends StatefulWidget {
  final String routeName = "/home";
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<int, bool> isSelecteditem = {};
  bool isSelected = false;
  List<Device> presentDevice = [
    Device(name: 'bonjour', image: 'assets/logo/crepiscule.jpg'),
    Device(name: 'bonjour', image: 'assets/logo/crepiscule.jpg'),
    Device(name: 'bonjour', image: 'assets/logo/crepiscule.jpg'),
    Device(name: 'bonjour', image: 'assets/logo/crepiscule.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 1, 29, 43),
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
            Expanded(
              child: ListView.builder(
                  itemCount: presentDevice.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 5,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  presentDevice[index].selected =
                                      !presentDevice[index].selected;
                                  //log(presentDevice[index].selected.toString());
                                });
                              },
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: presentDevice[index].selected
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  shape: BoxShape.circle,
                                  color: presentDevice[index].selected
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          presentDevice[index].image,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            presentDevice[index].name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    );
                  }),
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

// class ListItem extends StatefulWidget {
//   const ListItem({super.key});

//   @override
//   State<ListItem> createState() => _ListItemState();
// }

// class _ListItemState extends State<ListItem> {
  
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//         children: List.generate(6, (index) {
//       //isSelected = isSelecteditem[index] ?? false;
      
//     }));
//   }
// }
 
                 