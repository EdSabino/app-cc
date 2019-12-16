import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoticyCard extends StatelessWidget {
  const NoticyCard({this.image, this.title, this.subtitle});

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.network(image),
            ListTile(
              title: Text(title),
              subtitle: Text(subtitle),
            ),
          ],
        ),
      ),
    );
  }
}