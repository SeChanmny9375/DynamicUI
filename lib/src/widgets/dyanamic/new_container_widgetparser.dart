import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:flutter/material.dart';

class BoxDecorationWidgetParser extends WidgetParser {
  @override
  Map<String, dynamic>? export(Widget? widget, BuildContext? buildContext) {
    DecoratedBox realWidget = widget as DecoratedBox;
    BoxDecoration decoration = realWidget.decoration as BoxDecoration;
    return <String, dynamic>{
      'type': widgetName,
      'decoration': {
        "borderRadius":
            exportBorderRadius(decoration.borderRadius as BorderRadius),
        "color": decoration.color!.value.toRadixString(16),
        "boxShadow": parseBoxShadow(decoration.boxShadow),
      },
      'child': DynamicWidgetBuilder.export(realWidget.child, buildContext),
    };
  }

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    return DecoratedBox(
      decoration: map.containsKey('decoration')
          ? BoxDecoration(
              borderRadius: parseTest(map['decoration']['borderRadius']),
              color: parseHexColor(map['decoration']['color']),
              boxShadow: parseBoxShadow(map['decoration']['boxShadow']),
            )
          : const BoxDecoration(),
      child: DynamicWidgetBuilder.buildFromMap(
          map['child'], buildContext, listener),
    );
  }

  @override
  String get widgetName => "DecoratedBox";

  @override
  Type get widgetType => DecoratedBox;
}

List<BoxShadow> parseBoxShadow(dynamic shadowData) {
  if (shadowData == null || shadowData is! List) {
    return [];
  }

  List<BoxShadow> shadows = [];
  for (var shadowItem in shadowData) {
    if (shadowItem is Map) {
      final double xOffset = shadowItem['xOffset'] ?? 0.0;
      final double yOffset = shadowItem['yOffset'] ?? 0.0;
      final double blurRadius = shadowItem['blurRadius'] ?? 0.0;
      final double spreadRadius = shadowItem['spreadRadius'] ?? 0.0;
      final Color color = parseHexColor(shadowItem['color']) ?? Colors.black;

      shadows.add(BoxShadow(
        offset: Offset(xOffset, yOffset),
        blurRadius: blurRadius,
        spreadRadius: spreadRadius,
        color: color,
      ));
    }
  }

  return shadows;
}

BorderRadius parseTest(String rt) {
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
