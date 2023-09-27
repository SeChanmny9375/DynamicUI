import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:flutter/material.dart';

class CustomContainerParser extends WidgetParser {
  @override
  String get widgetName =>
      "CustomContainer"; // Change this name to match your custom widget.

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    Color backgroundColor = map.containsKey('backgroundColor')
        ? parseHexColor(map['backgroundColor'])!
        : Colors.transparent;

    Color? borderColor = map.containsKey('borderColor')
        ? parseHexColor(map['borderColor'])
        : null;

    double borderWidth =
        map.containsKey('borderWidth') ? map['borderWidth']!.toDouble() : 0.0;

    BorderRadius? borderRadius = map.containsKey('borderRadius')
        ? parseBorderRadius(map['borderRadius'])
        : null;

    EdgeInsetsGeometry? padding = map.containsKey('padding')
        ? parseEdgeInsetsGeometry(map['padding'])
        : null;

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: borderColor != null
            ? Border.all(
                color: borderColor,
                width: borderWidth,
              )
            : null,
        borderRadius: borderRadius,
      ),
      padding: padding,
      child: DynamicWidgetBuilder.buildFromMap(
          map['child'], buildContext, listener),
    );
  }

  // Helper method to parse a hex color string to Color.
  Color? parseHexColor(String? hexColor) {
    if (hexColor != null && hexColor.isNotEmpty) {
      hexColor = hexColor.replaceAll("#", "");
      return Color(int.parse("0xFF$hexColor"));
    }
    return null;
  }

  // Helper method to parse BorderRadius from a map.
  BorderRadius? parseBorderRadius(Map<String, dynamic>? map) {
    if (map != null) {
      return BorderRadius.only(
        topLeft: Radius.circular(map['topLeft']!.toDouble() ?? 0.0),
        topRight: Radius.circular(map['topRight']!.toDouble() ?? 0.0),
        bottomLeft: Radius.circular(map['bottomLeft']!.toDouble() ?? 0.0),
        bottomRight: Radius.circular(map['bottomRight']!.toDouble() ?? 0.0),
      );
    }
    return null;
  }

  @override
  Map<String, dynamic>? export(Widget? widget, BuildContext? buildContext) {
    // TODO: implement export
    throw UnimplementedError();
  }

  @override
  // TODO: implement widgetType
  Type get widgetType => throw UnimplementedError();
}
