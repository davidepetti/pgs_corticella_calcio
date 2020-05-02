import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewsContainer extends StatelessWidget {
  final String imageUrl;
  final String title;
  final DateTime pubDate;

  NewsContainer({this.imageUrl, this.title, this.pubDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 160,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'images/pgs.jpg',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  right: 16,
                  child: Text(
                    'I nostri eroi riescono a strappare la vittoria alla prima in classifica superandola di fatto, grande prestazione!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.blue[200]),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.clock,
                      size: 13,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(DateTime.now().toUtc().toString()),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
