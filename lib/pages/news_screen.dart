import 'package:flutter/material.dart';
import '../model/news.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final controller = TextEditingController();
  List<News> news = allNews;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //TEKS BERITA WISATA JOGJA
        Container(
          margin: const EdgeInsets.fromLTRB(40, 80, 40, 40),
          child: Text(
            "BERITA WISATA JOGJA",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                background: Paint()
                  ..strokeWidth = 25.0
                  ..color = Colors.brown
                  ..style = PaintingStyle.stroke
                  ..strokeJoin = StrokeJoin.round),
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
              hintText: "cari berita terkini",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(color: Colors.white)),
            ),
            onChanged: searchNews,
          ),
        ),

        // SingleChildScrollView(
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       SizedBox(
        //         height: 150,
        //         child: ListView.builder(
        //           itemCount: news.length,
        //           scrollDirection: Axis.horizontal,
        //           itemBuilder: (context, index) => Container(
        //             height: 20,
        //             width: 150,
        //             margin: EdgeInsets.all(8),
        //             child: Center(
        //               child: Text(
        //                 "Card $index",
        //                 style: TextStyle(color: Colors.white),
        //               ),
        //             ),
        //             color: Colors.green[700],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),

        //LIST TILE
        Expanded(
            child: ListView.builder(
                itemCount: news.length,
                itemBuilder: (context, index) {
                  final itemNews = news[index];
                  return ListTile(
                    contentPadding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
                    leading: Image.asset(
                      itemNews.pathImage,
                      fit: BoxFit.fill,
                      width: 50,
                      height: 50,
                    ),
                    title: Text(itemNews.title),
                  );
                })),
      ],
    );
  }

  void searchNews(String query) {
    final suggestion = allNews.where((news) {
      final newsTitle = news.title.toLowerCase();
      final input = query.toLowerCase();
      return newsTitle.contains(input);
    }).toList();

    setState(() => news = suggestion);
  }
}
