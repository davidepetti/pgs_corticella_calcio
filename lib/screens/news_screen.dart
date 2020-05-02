import 'package:flutter/material.dart';

import '../widgets/news_container.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NewsContainer(),
        NewsContainer(),
        NewsContainer(),
        NewsContainer(),
      ],
    );
  }
}
