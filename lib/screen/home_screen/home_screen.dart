import 'package:dynamic_ui/util/app_colors.dart';
import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';

import '../../test/custom_decoration.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String jsonStr =
        '{"type": "custom_box", "borderColor": "#FF0000", "borderWidth": 2.0, "backgroundColor": "#00FF00"}';
    Decoration customDecoration = parseJsonDecoration(jsonStr);
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Homepage'),
        backgroundColor: AppColors.kPrimaryColor,
        elevation: 0,
      ),
      // body: Container(
      //   width: 100,
      //   height: 100,
      //   decoration: customDecoration,
      //   child: const Center(
      //     child: Text("Custom Decorations"),
      //   ),
      // ),
//       body: DynamicWidgetBuilder.build(
//         '''
//             {
//               "type": "DecoratedBox",
//               "decoration":{
//                 "borderRadius": "50,20,20,50",
//                 "color":"FF00FF00"
//               } ,
//               "child":{
//               "type":"Container",
//               "width":200.0,
//               "height":300.0
//               }
//             }

// ''',
//         context,
//         DefaultClickListener(),
//       ),
      body: DynamicWidgetBuilder.build(
        newStack,
        context,
        DefaultClickListener(),
      ),
    );
  }
}

class DefaultClickListener implements ClickListener {
  @override
  void onClicked(String? event) {
    // TODO: implement onClicked
    print(event);
  }
}

var newStack = '''
{
    "type": "Stack",
   
    "clipBehavior": "none",
    "children": [
        {
            "type": "Container",
            "alignment": null,
            "padding": null,
            "color": "ff005c99",
            "margin": null,
            "constraints": {
                "minWidth": 393.0,
                "maxWidth": 393.0,
                "minHeight": 213.0,
                "maxHeight": 213.0
            },
            "child": {
                "type": "Column",
                "crossAxisAlignment": "center",
                "mainAxisAlignment": "center",
                "mainAxisSize": "max",
                "textBaseline": "ideographic",
                "textDirection": null,
                "verticalDirection": "down",
                "children": [
                    {
                        "type": "Icon",
                        "data": "android",
                        "size": 100.0,
                        "color": "ffffffff",
                        "semanticLabel": null,
                        "textDirection": null
                    },
                    {
                        "type": "Text",
                        "data": "Ecoin Soft",
                        "textAlign": "start",
                        "overflow": null,
                        "maxLines": null,
                        "semanticsLabel": null,
                        "softWrap": null,
                        "textDirection": "ltr",
                        "style": {
                            "color": "ffffffff",
                            "debugLabel": null,
                            "decoration": "none",
                            "fontSize": 30.0,
                            "fontFamily": null,
                            "fontStyle": "normal",
                            "fontWeight": "w700"
                        },
                        "textScaleFactor": null
                    }
                ]
            }
        },
        {
            "type": "Positioned",
            "top": 185.33333333333334,
            "right": null,
            "bottom": null,
            "left": 50,
            "width": 300.0,
            "child": {
            "type": "DecoratedBox",
            "decoration": {
                "borderRadius": "20",
                "color": "FF00FF00"
            },
            "child": {
                "type": "Container",
                "width": 393.0,
                "height": 60.0
            }
        }
        }
    ]
}
''';
