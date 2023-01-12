import 'package:flutter/material.dart';
import 'package:hi_smart_home/Sreens/widget/utility.dart';

class EditProfil extends StatefulWidget {
  const EditProfil({super.key});

  @override
  State<EditProfil> createState() => _EditProfilState();
}

class _EditProfilState extends State<EditProfil> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.back_hand),
                  ),
                  Expanded(
                    child: Text(
                      'Edit Profile',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logo/crepiscule.jpg'),
                                fit: BoxFit.fill),
                            shape: BoxShape.circle),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(239, 4, 0, 58),
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Email',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 20,
                ),
              ),
              custormTextField(
                context,
                false,
                hintText: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'First Name',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 20,
                ),
              ),
              custormTextField(
                context,
                false,
                hintText: 'First Name',
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Last Name',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 20,
                ),
              ),
              custormTextField(
                context,
                false,
                hintText: 'Last Name',
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Phone Number',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 20,
                ),
              ),
              custormTextField(
                context,
                false,
                hintText: 'Phone Number',
              ),
              const SizedBox(
                height: 40,
              ),
              custormBouton(context,
                  onTap: () {},
                  title: 'Update',
                  color: const Color.fromARGB(255, 3, 127, 230),
                  colorText: Colors.white.withOpacity(0.7)),
            ],
          ),
        ),
      ),
    );
  }
}
