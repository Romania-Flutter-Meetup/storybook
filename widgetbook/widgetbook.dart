import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'categories/introduction/introduction.dart';
import 'theme/app_theme.dart';

class WidgetBookHotReload extends StatelessWidget {
  const WidgetBookHotReload({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      appInfo: AppInfo(name: 'Flutter Romania CookBook'),
      categories: [
        IntroductionCategory.getIntroductionCategory(context),
      ],
      themes: [
        WidgetbookTheme(name: 'Light', data: AppTheme.getLightTheme(context)),
        WidgetbookTheme(name: 'Dark', data: AppTheme.getDarkTheme(context))
      ],
    );
  }
}
