import 'package:flutter/material.dart';

import '../model/wisata.dart';

class DetailWisata extends StatelessWidget {
  final Wisata wisata;

  const DetailWisata({
    Key? key,
    required this.wisata,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(wisata.title),
      ),
      body: Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Gambar
            Image.asset(
              wisata.pathImage,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),

            //Alamat
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                "Alamat",
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            //Alamat value
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                wisata.alamat,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            //Jenis Wisata
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                "Jenis Wisata",
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            //Jenis Wisata value
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                wisata.type,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            //Deskripsi Wisata
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                "Deskripsi",
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            //Deskripsi Wisata value
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                wisata.desc,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
