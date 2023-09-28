import 'dart:convert';

import 'package:dynamic_ui/util/app_colors.dart';
import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenJsonExporter extends StatefulWidget {
  const HomeScreenJsonExporter({Key? key}) : super(key: key);

  @override
  State<HomeScreenJsonExporter> createState() => _HomeScreenJsonExporterState();
}

class _HomeScreenJsonExporterState extends State<HomeScreenJsonExporter> {
  GlobalKey key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.kPrimaryColor,
        title: const Text(
          'HomeScreenExporter',
        ),
        actions: [
          IconButton(
            onPressed: () {
              final exporter = key.currentWidget as DynamicWidgetJsonExportor;
              final exportJsonString = exporter.exportJsonString();
              print(exportJsonString);
            },
            icon: const Icon(Icons.abc),
          ),
        ],
      ),
      body: Builder(
        builder: (context) {
          return DynamicWidgetJsonExportor(
            key: key,
            // child: Stack(
            //   children: [
            //     Container(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height / 5,
            //       color: AppColors.kPrimaryColor,
            //       child: const Icon(Icons.people, size: 100),
            //     ),
            //     Positioned(
            //       bottom: 0,
            //       child: Container(
            //         width: MediaQuery.of(context).size.width,
            //         height: MediaQuery.of(context).size.height / 8,
            //         color: Colors.red,
            //       ),
            //     ),
            //   ],
            // ),
            ///////
            // child: Stack(
            //   clipBehavior: Clip.none,
            //   alignment: Alignment.bottomCenter,
            //   children: [
            //     Container(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height / 5,
            //       color: AppColors.kPrimaryColor,
            //     ),
            //     Positioned(
            //       // top: 90,
            //       bottom: (MediaQuery.of(context).size.width / 2) / -5,
            //       child: Container(
            //         alignment: Alignment.center,
            //         width: MediaQuery.of(context).size.width / 1.2,
            //         height: MediaQuery.of(context).size.height / 12,
            //         decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(10),
            //           boxShadow: const [
            //             BoxShadow(
            //               blurRadius: 1,
            //               offset: Offset(0, 1),
            //             ),
            //           ],
            //         ),
            //         child: const Text(
            //           'Get Started',
            //           style: TextStyle(
            //             fontSize: 30,
            //             fontWeight: FontWeight.w500,
            //             color: Colors.blueGrey,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            //////////
            // child: Column(
            //   children: [
            //     Stack(
            //       clipBehavior: Clip.none,
            //       children: [
            //         Container(
            //           color: AppColors.kPrimaryColor,
            //           width: MediaQuery.of(context).size.width,
            //           height: MediaQuery.of(context).size.height / 4,
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: const [
            //               Icon(
            //                 Icons.android,
            //                 size: 100,
            //                 color: Colors.white,
            //               ),
            //               Text(
            //                 'Ecoin Soft',
            //                 style: TextStyle(
            //                   fontSize: 30,
            //                   color: Colors.white,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Positioned(
            //           width: MediaQuery.of(context).size.width / 1,
            //           top: MediaQuery.of(context).size.height / 4.5,
            //           child: const CircleAvatar(
            //             child: Text('data'),
            //           ),
            //         ),
            //       ],
            //     ),
            //     const SizedBox(
            //       height: 40,
            //     ),
            //     Expanded(
            //       child: Container(
            //         width: MediaQuery.of(context).size.width,
            //         color: Colors.red,
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: const [
            //             Text('data'),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            /////////
            // child: SizedBox(
            //   width: MediaQuery.of(context).size.width,
            //   // color: Colors.red,
            //   child: Padding(
            //     padding: const EdgeInsets.only(
            //       left: 60,
            //       right: 20,
            //       top: 40,
            //       bottom: 40,
            //     ),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         const Text('data'),
            //         Container(
            //           width: MediaQuery.of(context).size.width,
            //           height: 80,
            //           color: Colors.red,
            //           child: Row(
            //             children: [
            //               Expanded(
            //                 child: Container(
            //                   width: MediaQuery.of(context).size.width,
            //                   height: MediaQuery.of(context).size.height,
            //                   color: Colors.green,
            //                   child: Container(
            //                     margin: const EdgeInsets.only(
            //                       bottom: 30,
            //                       right: 10,
            //                     ),
            //                     height: 50,
            //                     color: Colors.amber,
            //                   ),
            //                 ),
            //               ),
            //               Expanded(
            //                 flex: 4,
            //                 child: Container(
            //                   color: Colors.blue,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),

            // child: Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 100,
            //   color: Colors.red,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         width: 100,
            //         height: 100,
            //         color: Colors.blue,
            //         child: Container(
            //           margin: const EdgeInsets.only(
            //             right: 30,
            //             bottom: 30,
            //           ),
            //           width: 20,
            //           height: 20,
            //           color: Colors.amber,
            //         ),
            //       ),
            //       Expanded(
            //         child: Container(
            //           width: 100,
            //           height: 100,
            //           color: Colors.green,
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             children: [
            //               const Text('data'),
            //               Container(
            //                 width: MediaQuery.of(context).size.width,
            //                 height: 20,
            //                 color: Colors.red,
            //                 child: Row(
            //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //                   children: const [
            //                     Text('data'),
            //                     Icon(Icons.timelapse)
            //                   ],
            //                 ),
            //               ),
            //               const Text('data'),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            child: Container(
              width: 200,
              color: Colors.red,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('data'),
                        Text('data'),
                        Icon(Icons.document_scanner)
                      ],
                    ),
                    const Text('data')
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DynamicWidgetJsonExportor extends StatelessWidget {
  final Widget? child;

  final GlobalKey globalKey = GlobalKey();

  DynamicWidgetJsonExportor({
    this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: globalKey,
      child: child,
    );
  }

  String exportJsonString() {
    String rt = "failed to export";
    globalKey.currentContext!.visitChildElements((element) {
      rt = jsonEncode(DynamicWidgetBuilder.export(element.widget, null));
    });
    return rt;
  }
}
