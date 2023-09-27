import 'package:dynamic_ui/screen/home_screen/home_screen.dart';
import 'package:dynamic_ui/src/widgets/dyanamic/new_style_conatainer_widgetparser.dart';
import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';

import 'src/widgets/dyanamic/new_container_widgetparser.dart';

void main() {
  DynamicWidgetBuilder.addParser(BoxDecorationWidgetParser());
  DynamicWidgetBuilder.addParser(TestDecoration());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Homepage(),
      // home: const HomeScreenJsonExporter(),
    );
  }
}
