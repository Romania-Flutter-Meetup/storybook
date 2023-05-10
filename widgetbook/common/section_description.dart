import 'package:flutter/material.dart';

class SectionDescription extends StatelessWidget {
  const SectionDescription({super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        description,
        style: Theme.of(context).textTheme.headlineMedium,
        maxLines: 10,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
