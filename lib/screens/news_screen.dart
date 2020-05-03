import 'package:flutter/material.dart';

import '../widgets/news_container.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NewsContainer(
          imageURL: 'images/pgs.jpg',
          title: 'PGS Corticella-Cubo Team 6-2: match review',
        ),
        NewsContainer(
          imageURL: 'images/pgs1.jpg',
          title: 'Road to Play-off',
        ),
        NewsContainer(
          imageURL: 'images/pgs3.jpg',
          title: 'Viadagola 2k19',
        ),
        NewsContainer(
          imageURL: 'images/pgs4.jpg',
          title: 'Marina 2k19',
        ),
      ],
    );
  }
}
