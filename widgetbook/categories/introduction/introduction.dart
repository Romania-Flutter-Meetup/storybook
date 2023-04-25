import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import '../../assets/assets.dart';
import '../../common/section_title.dart';
import '../../extensions/context_extensions.dart';

class IntroductionCategory {
  static WidgetbookCategory getIntroductionCategory(BuildContext context) {
    return WidgetbookCategory(name: 'Introduction', isExpanded: true, widgets: [
      WidgetbookComponent(name: 'Introduction', useCases: [
        WidgetbookUseCase(
            name: 'What is the purpose',
            builder: (context) {
              return SizedBox(
                width: context.width * 0.9,
                height: context.height * 0.7,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        SectionTitle(title: 'The goal'),
                        Text(Assets.INTRO_TEXT),
                      ],
                    ),
                  ),
                ),
              );
            })
      ])
    ]);
  }
}
