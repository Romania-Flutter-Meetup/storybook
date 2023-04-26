import 'package:flutter/material.dart';

import 'section_title.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String content;
  const InfoCard({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SectionTitle(title: title),
            Text(content),
          ],
        ),
      ),
    );
  }
}
