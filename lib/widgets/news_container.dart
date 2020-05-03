import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class NewsContainer extends StatelessWidget {
  final String imageURL;
  final String title;
  final DateTime pubDate;

  NewsContainer({@required this.imageURL, @required this.title, this.pubDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 250,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    imageURL,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  right: 16,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.blue[200]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.clock,
                      size: 13,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(DateFormat('dd/MM/yy HH:mm').format(DateTime.now())),
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
