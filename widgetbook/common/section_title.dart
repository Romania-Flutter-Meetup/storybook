import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        context.knobs.text(
          label: title,
          initialValue: title,
        ),
        style: Theme.of(context).textTheme.headlineMedium,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
