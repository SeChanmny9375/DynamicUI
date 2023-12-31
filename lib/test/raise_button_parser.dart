import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';

abstract class ContainerParser extends WidgetParser {
  @override
  String get widgetName => "RaisedButton";

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    String clickEvent =
        map.containsKey("click_event") ? map['click_event'] : "";

    var raisedButton = RaisedButton(
      color: map.containsKey('color') ? parseHexColor(map['color']) : null,
      disabledColor: map.containsKey('disabledColor')
          ? parseHexColor(map['disabledColor'])
          : null,
      disabledElevation: map.containsKey('disabledElevation')
          ? map['disabledElevation']?.toDouble()
          : 0.0,
      disabledTextColor: map.containsKey('disabledTextColor')
          ? parseHexColor(map['disabledTextColor'])
          : null,
      elevation:
          map.containsKey('elevation') ? map['elevation']?.toDouble() : 0.0,
      padding: map.containsKey('padding')
          ? parseEdgeInsetsGeometry(map['padding'])
          : null,
      splashColor: map.containsKey('splashColor')
          ? parseHexColor(map['splashColor'])
          : null,
      textColor:
          map.containsKey('textColor') ? parseHexColor(map['textColor']) : null,
      child: DynamicWidgetBuilder.buildFromMap(
          map['child'], buildContext, listener),
      onPressed: () {
        listener?.onClicked(clickEvent);
      },
    );

    return raisedButton;
  }
}

abstract class NewContainer extends WidgetParser {
  @override
  String get widgetName => "NewContainer";
  @override
  Widget parse(
    Map<String, dynamic> map,
    BuildContext buildContext,
    ClickListener? listener,
  ) {
    var newContainer = Container(
      color: map.containsKey('color') ? parseHexColor(map['color']) : null,
      width: map.containsKey('width') ? map['width']?.toDouble() : null,
      height: map.containsKey('height') ? map['height']?.toDouble() : null,
      padding: map.containsKey('padding')
          ? parseEdgeInsetsGeometry(map['padding'])
          : null,
      child: DynamicWidgetBuilder.buildFromMap(
          map['child'], buildContext, listener),
    );
    return newContainer;
  }
}
