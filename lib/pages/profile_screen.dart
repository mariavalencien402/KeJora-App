import 'package:flutter/material.dart';
import 'package:kejora_app/const.dart';

import '../model/wisata.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Foto Profil
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Container(
                  padding: const EdgeInsets.all(8), // Border width
                  decoration: const BoxDecoration(
                      color: Colors.brown, shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(80), // Image radius
                      child: Image.asset(imgProfile, fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),

              //Garis
              const Divider(
                height: 40,
                thickness: 3,
                color: Colors.grey,
              ),

              //Username
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 5, top: 0),
                child: const Text(
                  "Username",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              //Username Value
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 10, top: 5),
                child: const Text(
                  username,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              //Name
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 5, top: 20),
                child: const Text(
                  "Name",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              //Name Value
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 10, top: 5),
                child: const Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              //Email
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 5, top: 20),
                child: const Text(
                  "Email",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              //Email Value
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 10, top: 5),
                child: const Text(
                  email,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              //Garis
              const Divider(
                height: 40,
                thickness: 3,
                color: Colors.grey,
              ),

              //Pengaturan Bahasa
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 5, top: 0),
                child: const Text(
                  "Pengaturan Bahasa",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              //Ubah Password
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 5, top: 20),
                child: const Text(
                  "Ubah Password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              //Mode Gelap
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 5, top: 20),
                child: const Text(
                  "Mode Gelap",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              //Laporkan Bug
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 5, top: 20),
                child: const Text(
                  "Laporkan Bug",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              //Log Out
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 5, top: 20),
                child: const Text(
                  "Logout",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              //Garis
              const Divider(
                height: 40,
                thickness: 3,
                color: Colors.grey,
              ),
            ],
          )),
    ]);
  }
}
