import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'categories/introduction/introduction.dart';
import 'categories/setup_and_configure/setup_configure.dart';
import 'theme/app_theme.dart';

class WidgetBookHotReload extends StatelessWidget {
  const WidgetBookHotReload({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook<dynamic>(
      appInfo: AppInfo(name: 'Flutter Romania CookBook'),
      categories: <WidgetbookCategory>[
        IntroductionCategory.getIntroductionCategory(context),
        SetupConfigure.getSetupConfigure(context)
      ],
      themes: <WidgetbookTheme<dynamic>>[
        WidgetbookTheme<dynamic>(
          name: 'Light',
          data: AppTheme.getLightTheme(context),
        ),
        WidgetbookTheme<dynamic>(
          name: 'Dark',
          data: AppTheme.getDarkTheme(context),
        )
      ],
    );
  }
}
