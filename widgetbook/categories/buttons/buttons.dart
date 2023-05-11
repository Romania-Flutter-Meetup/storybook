import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import '../../assets/assets.dart';
import '../../common/section_description.dart';
import '../../common/section_title.dart';
import '../../services/alerts.dart';

class Buttons {
  static WidgetbookCategory getButtons(BuildContext context) {
    const List<Option<Color>> backgroundColors = <Option<Color>>[
      Option<Color>(label: 'Red', value: Colors.red),
      Option<Color>(label: 'Blue', value: Colors.blue),
      Option<Color>(label: 'Black', value: Colors.black),
      Option<Color>(label: 'Pink', value: Colors.pink),
    ];

    const List<Option<Color>> fontColors = <Option<Color>>[
      Option<Color>(label: 'White', value: Colors.white),
      Option<Color>(label: 'Black', value: Colors.black)
    ];

    const List<Option<FontWeight>> fontWeights = <Option<FontWeight>>[
      Option<FontWeight>(label: 'Regular', value: FontWeight.normal),
      Option<FontWeight>(label: 'Bold', value: FontWeight.bold),
    ];
    return WidgetbookCategory(
        name: 'Buttons',
        isExpanded: false,
        widgets: <WidgetbookComponent>[
          WidgetbookComponent(
            name: 'Action buttons',
            useCases: <WidgetbookUseCase>[
              WidgetbookUseCase(
                  name: 'Elevated button',
                  builder: (BuildContext context) {
                    return Center(
                      child: Column(
                        children: <Widget>[
                          const SectionTitle(title: 'ELEVATED BUTTON'),
                          const SectionDescription(
                            description: Assets.ELEVATED_BUTTON,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Alerts.showSuccess(
                                  context.knobs.text(label: 'Alert message'),
                                  context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: context.knobs.options(
                                label: 'Background color',
                                options: backgroundColors,
                              ),
                            ),
                            child: Text('Apasa!',
                                style: TextStyle(
                                    fontWeight: context.knobs.options(
                                        label: 'Font Weight',
                                        options: fontWeights),
                                    color: context.knobs.options(
                                        label: 'Font color',
                                        options: fontColors))),
                          ),
                        ],
                      ),
                    );
                  })
            ],
          )
        ]);
  }
}
