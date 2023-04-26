import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import '../../assets/assets.dart';
import '../../common/info_card.dart';
import '../../extensions/context_extensions.dart';

class SetupConfigure {
  static WidgetbookCategory getSetupConfigure(BuildContext context) {
    return WidgetbookCategory(
        name: 'Setup & Configure',
        isExpanded: false,
        widgets: [
          WidgetbookComponent(name: 'Setup', useCases: <WidgetbookUseCase>[
            WidgetbookUseCase(
                name: 'Setup before running',
                builder: (BuildContext context) {
                  return SizedBox(
                    width: context.width * 0.9,
                    height: context.height * 0.8,
                    child: const InfoCard(
                      title: 'Start your journey',
                      content: Assets.SETUP,
                    ),
                  );
                }),
            WidgetbookUseCase(
                name: 'Run the project',
                builder: (BuildContext context) {
                  return SizedBox(
                    width: context.width * 0.9,
                    height: context.height * 0.2,
                    child: const InfoCard(title: 'Run', content: Assets.RUN),
                  );
                }),
            WidgetbookUseCase(
                name: 'Limitations',
                builder: (BuildContext context) {
                  return SizedBox(
                    width: context.width * 0.9,
                    height: context.height * 0.2,
                    child: const InfoCard(
                        title: 'Known Limitations',
                        content: Assets.LIMITATIONS),
                  );
                })
          ]),
        ]);
  }
}
