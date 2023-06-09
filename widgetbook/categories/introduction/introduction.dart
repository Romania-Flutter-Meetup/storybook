import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import '../../assets/assets.dart';
import '../../common/info_card.dart';
import '../../extensions/context_extensions.dart';

class IntroductionCategory {
  static WidgetbookCategory getIntroductionCategory(BuildContext context) {
    return WidgetbookCategory(
        name: 'Introduction',
        widgets: <WidgetbookComponent>[
          WidgetbookComponent(
              name: 'Introduction',
              useCases: <WidgetbookUseCase>[
                WidgetbookUseCase(
                    name: 'What is the purpose',
                    builder: (BuildContext context) {
                      return SizedBox(
                        width: context.width * 0.9,
                        height: context.height * 0.9,
                        child: const InfoCard(
                          title: 'The goal',
                          content: Assets.INTRO_TEXT,
                        ),
                      );
                    })
              ])
        ]);
  }
}
