import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';

abstract class ContainerParser extends WidgetParser {
  @override
  String get widgetName => "Containers";

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    return Container(
      alignment: map.containsKey('alignment')
          ? parseAlignment(map['alignment'])
          : null,
      padding: map.containsKey('padding')
          ? parseEdgeInsetsGeometry(map['padding'])
          : null,
      color: map.containsKey('color') ? parseHexColor(map['color']) : null,
      width: map.containsKey('width') ? map['width']?.toDouble() : null,
      height: map.containsKey('height') ? map['height']?.toDouble() : null,
      decoration: map.containsKey('decoration')
          ? parseBoxDecoration(map['decoration'])
          : null,
      child: DynamicWidgetBuilder.buildFromMap(
          map['child'], buildContext, listener),
    );
  }

  BoxDecoration parseBoxDecoration(Map<String, dynamic> map) {
    return BoxDecoration(
      color: map.containsKey('color') ? parseHexColor(map['color']) : null,
      border: map.containsKey('border') ? parseBorder(map['border']) : null,
      // Add other BoxDecoration properties as needed
    );
  }

  Border parseBorder(Map<String, dynamic> map) {
    return Border(
      top: map.containsKey('top')
          ? parseBorderSide(map['top'])
          : BorderSide.none,
      bottom: map.containsKey('bottom')
          ? parseBorderSide(map['bottom'])
          : BorderSide.none,
      left: map.containsKey('left')
          ? parseBorderSide(map['left'])
          : BorderSide.none,
      right: map.containsKey('right')
          ? parseBorderSide(map['right'])
          : BorderSide.none,
    );
  }

  BorderSide parseBorderSide(Map<String, dynamic> map) {
    final Color color = map.containsKey('color')
        ? parseHexColor(map['color']) ?? Colors.transparent
        : Colors.transparent;

    return BorderSide(
      color: color,
      width: map.containsKey('width') ? map['width']?.toDouble() : 1.0,
      // Add other BorderSide properties as needed
    );
  }
}
