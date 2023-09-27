import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:flutter/material.dart';

class TestDecoration extends WidgetParser {
  @override
  Map<String, dynamic>? export(Widget? widget, BuildContext? buildContext) {
    DecoratedBox realWidget = widget as DecoratedBox;
    BoxDecoration decoration = realWidget.decoration as BoxDecoration;

    return <String, dynamic>{
      'type': widgetName,
      'decoration': {
        'borderRadius': exportBorderRadius(
          decoration.borderRadius as BorderRadius,
        ),
        'color': decoration.color!.value.toRadixString(16),
      },
      'child': DynamicWidgetBuilder.export(widget, buildContext),
    };
  }

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    return DecoratedBox(
      decoration: map.containsKey('decoration')
          ? BoxDecoration(
              borderRadius: parseTests(
                map['decoration']['borderRadius'],
              ),
              color: parseHexColor(map['decoration']['color']),
            )
          : const BoxDecoration(),
    );
  }

  @override
  // TODO: implement widgetName
  String get widgetName => 'TestDecorateBox';

  @override
  // TODO: implement widgetType
  Type get widgetType => DecoratedBox;
}

BorderRadius parseTests(String rt) {
  List<String> values = rt.split(',');
  if (values.length < 4) {
    return BorderRadius.circular(double.parse(values[0]));
  } else if (values.length == 4) {
    return BorderRadius.only(
      topLeft: Radius.circular(double.parse(values[0])),
      topRight: Radius.circular(double.parse(values[1])),
      bottomLeft: Radius.circular(double.parse(values[2])),
      bottomRight: Radius.circular(double.parse(values[3])),
    );
  }
  return BorderRadius.zero;
}
