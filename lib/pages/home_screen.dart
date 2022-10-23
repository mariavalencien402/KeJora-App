import 'package:flutter/material.dart';
import 'package:kejora_app/const.dart';
import '../model/wisata.dart';
import 'detail_wisata_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = TextEditingController();
  List<Wisata> wisatas = allWisata;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Gambar
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  imgHome,
                  // height: 150.0,
                  // width: 100.0,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                child: Text(
                  textAlign: TextAlign.center,
                  "SELAMAT DATANG DI KEJORA APP!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      background: Paint()
                        ..strokeWidth = 30.0
                        ..color = Colors.brown
                        ..style = PaintingStyle.stroke
                        ..strokeJoin = StrokeJoin.round),
                ),
              ),
            ],
          ),
        ),

        //SEARCH BOX
        Container(
          margin: const EdgeInsets.fromLTRB(16, 4, 16, 4),
          child: TextField(
            cursorColor: Colors.brown,
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: "yuk berwisata di Jogja!",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(width: 3, color: Colors.brown)),
            ),
            onChanged: searchBudaya,
          ),
        ),

        //LIST TILE
        Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.only(top: 15),
                itemCount: wisatas.length,
                itemBuilder: (context, index) {
                  final wisata = wisatas[index];
                  return ListTile(
                    textColor: Colors.brown,
                    contentPadding: const EdgeInsets.fromLTRB(20, 0, 16, 5),
                    leading: Image.asset(
                      wisata.pathImage,
                      fit: BoxFit.fill,
                      width: 120,
                      height: 150,
                    ),
                    title: Text(wisata.title,
                        style: const TextStyle(
                          color: Colors.brown,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        )),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailWisata(wisata: wisata),
                      ),
                    ),
                  );
                })),
      ],
    );
  }

  void searchBudaya(String query) {
    final suggestion = allWisata.where((wisata) {
      final wisataTitle = wisata.title.toLowerCase();
      final input = query.toLowerCase();
      return wisataTitle.contains(input);
    }).toList();

    setState(() => wisatas = suggestion);
  }
}
