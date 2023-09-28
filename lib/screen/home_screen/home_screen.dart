import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';

import '../../test/custom_decoration.dart';
import '../../util/app_colors.dart';

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
        toolbarHeight: 10,
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
        newStacks,
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

var newStack = '''{
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
          "borderRadius": "15",
          "color": "#fafafa",
          "boxShadow": [
            {
              "xOffset": 1.0,
              "yOffset": 0.0,
              "blurRadius": 5.0,
              "spreadRadius": 0.0,
              "color": "80000000"
            }
          ]
        },
        "child": {
          "type": "Container",
          "alignment": "center",
          "width": 393.0,
          "height": 60.0,
          "child":{
            "type": "Text",
            "data": "Get Started",
            "style": {
              "color": "#968c8c",
              "debugLabel": null,
              "decoration": "none",
              "fontSize": 25.0,
              "fontFamily": null,
              "fontStyle": "normal",
              "fontWeight": "w500"
            }
          }
        }
      }
    }
    
  ]
}
''';

var newStacks = '''{
  "type": "Column",
  "crossAxisAlignment": "center",
  "mainAxisAlignment": "start",
  "mainAxisSize": "max",
  "textBaseline": "ideographic",
  "textDirection": null,
  "verticalDirection": "down",
  "children": [
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
              "borderRadius": "15",
              "color": "#fafafa",
              "boxShadow": [
                {
                  "xOffset": 1.0,
                  "yOffset": 0.0,
                  "blurRadius": 5.0,
                  "spreadRadius": 0.0,
                  "color": "80000000"
                }
              ]
            },
            "child": {
              "type": "Container",
              "alignment": "center",
              "width": 393.0,
              "height": 60.0,
              "child": {
                "type": "Text",
                "data": "Get Started",
                "style": {
                  "color": "#968c8c",
                  "debugLabel": null,
                  "decoration": "none",
                  "fontSize": 25.0,
                  "fontFamily": null,
                  "fontStyle": "normal",
                  "fontWeight": "w500"
                }
              }
            }
          }
        },
        {
          "type": "Row",
  "crossAxisAlignment": "start",
  
  "mainAxisSize": "max",
  "textBaseline": "alphabetic",
  "textDirection": "ltr",
  "verticalDirection": "down",
  "children":[
    {
      "type": "SizedBox",
            "width": 20.0
            
    },
    {
      "type": "Container",

  "child": {
    "type": "Text",
          "data": "Lika Kok",
          "style": {
                  "color": "#f5f5f5",
                  "debugLabel": null,
                  "decoration": "none",
                  "fontSize": 30.0,
                  "fontFamily": null,
                  "fontStyle": "normal",
                  "fontWeight": "w500"
                }
  }
    },
    {
      "type": "SizedBox",
            "width": 180.0
            
    },
    {
       "type": "Container",
  "alignment": "center",
  "child": {
    "type":"ClipRRect",
    "borderRadius":"50,50,50,50",
    "child":{
      "type": "SizedBox",
      "width": 50.0,
      "height": 50.0,
      "child":{
        "type":"Container",
        "color": "#f5f5f5",
        "child": {
            "type": "Icon",
            "data": "people",
            "size": 40.0,
            "color": null,
            "semanticLabel": null,
            "textDirection": null
          }
      }
    }
  }
    }
  ]
          
          
        }
      ]
    },
    {
      "type": "Expanded",
      "child": {
        "type": "Container",
        "alignment": null,
        "padding": null,
        "margin": null,
        "constraints": {
          "minWidth": 393.0,
          "maxWidth": 393.0,
          "minHeight": 0.0,
          "maxHeight": 9999999999.0
        },
        "child": {
          "type": "Padding",
          "padding": "50.0,60.0,50.0,40.0",
          "child": {
            "type": "Column",
            "crossAxisAlignment": "start",
            "mainAxisAlignment": "start",
            "mainAxisSize": "max",
            "textBaseline": "ideographic",
            "textDirection": null,
            "verticalDirection": "down",
            "children": [
              {
                "type": "Text",
                "data": "Featrues",
                "textAlign": "start",
                "overflow": null,
                "maxLines": null,
                "semanticsLabel": null,
                "softWrap": null,
                "textDirection": "ltr",
                "style": {
                  "debugLabel": null,
                  "decoration": "none",
                  "fontSize": 20.0,
                  "fontFamily": null,
                  "fontStyle": "normal",
                  "fontWeight": "w700"
                }
              },
              {"type": "SizedBox", "height": 18.0},
              {
                "type": "Container",
                "alignment": null,
                "padding": null,
                "margin": null,
                "constraints": {
                  "minWidth": 393.0,
                  "maxWidth": 393.0,
                  "minHeight": 80.0,
                  "maxHeight": 80.0
                },
                "child": {
                  "type": "Row",
                  "crossAxisAlignment": "center",
                  "mainAxisAlignment": "spaceBetween",
                  "mainAxisSize": "max",
                  "textBaseline": "ideographic",
                  "textDirection": null,
                  "verticalDirection": "down",
                  "children": [
                    {
                      "type": "Container",
                      "alignment": null,
                      "padding": "0, 0, 20, 40",
                      "margin": null,
                      "constraints": {
                        "minWidth": 60.0,
                        "maxWidth": 60.0,
                        "minHeight": 100.0,
                        "maxHeight": 100.0
                      },
                      "child": {
                        "type": "DecoratedBox",
                        "decoration": {"borderRadius": "5", "color": "005C99"},
                        "child": {
                          "type": "Container",
                          "width": 200.0,
                          "height": 300.0,
                          "child": {
                            "type": "Icon",
                            "data": "fa.google",
                            "color": "#f5f5f5",
                            "size": 20.0
                          }
                        }
                      }
                    },
                    {
                      "type": "Expanded",
                      "flex": 1,
                      "child": {
                        "type": "Container",
                        "alignment": null,
                        "padding": null,
                        "margin": null,
                        "constraints": {
                          "minWidth": 100.0,
                          "maxWidth": 100.0,
                          "minHeight": 100.0,
                          "maxHeight": 100.0
                        },
                        "child": {
                          "type": "Column",
                          "crossAxisAlignment": "start",
                          "children": [
                            {
                              "type": "Text",
                              "data": "Scan QR Attendance",
                              "style": {
                                "debugLabel": null,
                                "decoration": "none",
                                "fontSize": 16.0,
                                "fontFamily": null,
                                "fontStyle": "normal",
                                "fontWeight": "w700"
                              }
                            },
                            {"type": "SizedBox", "height": 2.0},
                            {
                              "type": "Container",
                              "child": {
                                "type": "Row",
                                "mainAxisAlignment": "spaceBetween",
                                "children": [
                                  {
                                    "type": "Text",
                                    "data": "Attendance with a quick scan",
                                    "style": {
                                      "debugLabel": null,
                                      "decoration": "none",
                                      "fontSize": 12.0,
                                      "fontFamily": null,
                                      "fontStyle": "normal",
                                      "fontWeight": "w700",
                                      "color": "005C99"
                                    }
                                  },
                                  {
                                    "type": "Icon",
                                    "data": "arrow_forward_ios",
                                    "size": 14.0
                                  }
                                ]
                              }
                            },
                            {"type": "SizedBox", "height": 15.0},
                            {
                              "type": "Container",
                              "width": 400.0,
                              "height": 1.0,
                              "color": "#7a7a78"
                            }
                          ]
                        }
                      }
                    }
                  ]
                }
              },
              {
                "type": "Container",
                "alignment": null,
                "padding": null,
                "margin": null,
                "constraints": {
                  "minWidth": 393.0,
                  "maxWidth": 393.0,
                  "minHeight": 80.0,
                  "maxHeight": 80.0
                },
                "child": {
                  "type": "Row",
                  "crossAxisAlignment": "center",
                  "mainAxisAlignment": "spaceBetween",
                  "mainAxisSize": "max",
                  "textBaseline": "ideographic",
                  "textDirection": null,
                  "verticalDirection": "down",
                  "children": [
                    {
                      "type": "Container",
                      "alignment": null,
                      "padding": "0, 0, 20, 40",
                      "margin": null,
                      "constraints": {
                        "minWidth": 60.0,
                        "maxWidth": 60.0,
                        "minHeight": 100.0,
                        "maxHeight": 100.0
                      },
                      "child": {
                        "type": "DecoratedBox",
                        "decoration": {"borderRadius": "5", "color": "005C99"},
                        "child": {
                          "type": "Container",
                          "width": 200.0,
                          "height": 300.0,
                          "child": {
                            "type": "Icon",
                            "data": "time_to_leave",
                            "color": "#f5f5f5",
                            "size": 20.0
                          }
                        }
                      }
                    },
                    {
                      "type": "Expanded",
                      "flex": 1,
                      "child": {
                        "type": "Container",
                        "alignment": null,
                        "padding": null,
                        "margin": null,
                        "constraints": {
                          "minWidth": 100.0,
                          "maxWidth": 100.0,
                          "minHeight": 100.0,
                          "maxHeight": 100.0
                        },
                        "child": {
                          "type": "Column",
                          "crossAxisAlignment": "start",
                          "children": [
                            {
                              "type": "Text",
                              "data": "Request Leave",
                              "style": {
                                "debugLabel": null,
                                "decoration": "none",
                                "fontSize": 16.0,
                                "fontFamily": null,
                                "fontStyle": "normal",
                                "fontWeight": "w700"
                              }
                            },
                            {"type": "SizedBox", "height": 2.0},
                            {
                              "type": "Container",
                              "child": {
                                "type": "Row",
                                "mainAxisAlignment": "spaceBetween",
                                "children": [
                                  {
                                    "type": "Text",
                                    "data": "Manage your time off easily",
                                    "style": {
                                      "debugLabel": null,
                                      "decoration": "none",
                                      "fontSize": 12.0,
                                      "fontFamily": null,
                                      "fontStyle": "normal",
                                      "fontWeight": "w700",
                                      "color": "005C99"
                                    }
                                  },
                                  {
                                    "type": "Icon",
                                    "data": "arrow_forward_ios",
                                    "size": 14.0
                                  }
                                ]
                              }
                            },
                            {"type": "SizedBox", "height": 15.0},
                            {
                              "type": "Container",
                              "width": 400.0,
                              "height": 1.0,
                              "color": "#7a7a78"
                            }
                          ]
                        }
                      }
                    }
                  ]
                }
              },
              {
                "type": "Container",
                "alignment": null,
                "padding": null,
                "margin": null,
                "constraints": {
                  "minWidth": 393.0,
                  "maxWidth": 393.0,
                  "minHeight": 80.0,
                  "maxHeight": 80.0
                },
                "child": {
                  "type": "Row",
                  "crossAxisAlignment": "center",
                  "mainAxisAlignment": "spaceBetween",
                  "mainAxisSize": "max",
                  "textBaseline": "ideographic",
                  "textDirection": null,
                  "verticalDirection": "down",
                  "children": [
                    {
                      "type": "Container",
                      "alignment": null,
                      "padding": "0, 0, 20, 40",
                      "margin": null,
                      "constraints": {
                        "minWidth": 60.0,
                        "maxWidth": 60.0,
                        "minHeight": 100.0,
                        "maxHeight": 100.0
                      },
                      "child": {
                        "type": "DecoratedBox",
                        "decoration": {"borderRadius": "5", "color": "005C99"},
                        "child": {
                          "type": "Container",
                          "width": 200.0,
                          "height": 300.0,
                          "child": {
                            "type": "Icon",
                            "data": "timelapse",
                            "color": "#f5f5f5",
                            "size": 20.0
                          }
                        }
                      }
                    },
                    {
                      "type": "Expanded",
                      "flex": 1,
                      "child": {
                        "type": "Container",
                        "alignment": null,
                        "padding": null,
                        "margin": null,
                        "constraints": {
                          "minWidth": 100.0,
                          "maxWidth": 100.0,
                          "minHeight": 100.0,
                          "maxHeight": 100.0
                        },
                        "child": {
                          "type": "Column",
                          "crossAxisAlignment": "start",
                          "children": [
                            {
                              "type": "Text",
                              "data": "Scan QR Attendance",
                              "style": {
                                "debugLabel": null,
                                "decoration": "none",
                                "fontSize": 16.0,
                                "fontFamily": null,
                                "fontStyle": "normal",
                                "fontWeight": "w700"
                              }
                            },
                            {"type": "SizedBox", "height": 2.0},
                            {
                              "type": "Container",
                              "child": {
                                "type": "Row",
                                "mainAxisAlignment": "spaceBetween",
                                "children": [
                                  {
                                    "type": "Text",
                                    "data": "Attendance with a quick scan",
                                    "style": {
                                      "debugLabel": null,
                                      "decoration": "none",
                                      "fontSize": 12.0,
                                      "fontFamily": null,
                                      "fontStyle": "normal",
                                      "fontWeight": "w700",
                                      "color": "005C99"
                                    }
                                  },
                                  {
                                    "type": "Icon",
                                    "data": "arrow_forward_ios",
                                    "size": 14.0
                                  }
                                ]
                              }
                            },
                            {"type": "SizedBox", "height": 15.0},
                            {
                              "type": "Container",
                              "width": 400.0,
                              "height": 1.0,
                              "color": "#7a7a78"
                            }
                          ]
                        }
                      }
                    }
                  ]
                }
              },
              {
                "type": "Text",
                "data": "Overview",
                "textAlign": "start",
                "overflow": null,
                "maxLines": null,
                "semanticsLabel": null,
                "softWrap": null,
                "textDirection": "ltr",
                "style": {
                  "debugLabel": null,
                  "decoration": "none",
                  "fontSize": 20.0,
                  "fontFamily": null,
                  "fontStyle": "normal",
                  "fontWeight": "w700"
                }
              },
              {
                "type": "SizedBox",
                "width": 300.0,
                "height": 160.0,
                "child": {
                  "type": "Container",
                  
                  "child": {
                    "type": "GridView",
                    "crossAxisCount": 2,
                    "padding": "10, 10, 10, 10",
                    "mainAxisSpacing": 12.0,
                    "crossAxisSpacing": 5.0,
                    "childAspectRatio": 2,
                    "children": [
                      {
                        "type": "DecoratedBox",
                        "decoration": {
                          "borderRadius": "10",
                          "color": "#f5f5f5",
                          "boxShadow": [
                            {
                              "xOffset": 1.0,
                              "yOffset": 0.0,
                              "blurRadius": 5.0,
                              "spreadRadius": 0.0,
                              "color": "80000000"
                            }
                          ]
                        },
                        "child": {
                          "type": "Container",
                          "alignment": null,
                          "padding": null,
                          "margin": null,
                          "constraints": {
                            "minWidth": 200.0,
                            "maxWidth": 200.0,
                            "minHeight": 100.0,
                            "maxHeight": 100.0
                          },
                          "child": {
                            "type": "Padding",
                            "padding": "10.0,10.0,10.0,10.0",
                            "child": {
                              "type": "Column",
                              "crossAxisAlignment": "start",
                              "mainAxisAlignment": "spaceEvenly",
                              "mainAxisSize": "max",
                              "textBaseline": "ideographic",
                              "textDirection": null,
                              "verticalDirection": "down",
                              "children": [
                                {
                                  "type": "Row",
                                  "crossAxisAlignment": "center",
                                  "mainAxisAlignment": "spaceBetween",
                                  "mainAxisSize": "max",
                                  "textBaseline": "ideographic",
                                  "textDirection": null,
                                  "verticalDirection": "down",
                                  "children": [
                                    {
                                      "type": "Text",
                                      "data": "10",
                                      "textAlign": "start",
                                      "overflow": null,
                                      "maxLines": null,
                                      "semanticsLabel": null,
                                      "softWrap": null,
                                      "textDirection": "ltr",
                                      "style": {
                                        "debugLabel": null,
                                        "decoration": "none",
                                        "fontSize": 25.0,
                                        "fontFamily": null,
                                        "fontStyle": "normal",
                                        "fontWeight": "w800"
                                      }
                                    },
                                    {
                                      "type": "Icon",
                                      "data": "fa.google",
                                      "color": "#000000"
                                    }
                                  ]
                                },
                                {"type": "Text", "data": "Late Check In"}
                              ]
                            }
                          }
                        }
                      },
                      {
                        "type": "DecoratedBox",
                        "decoration": {
                          "borderRadius": "10",
                          "color": "#f5f5f5",
                          "boxShadow": [
                            {
                              "xOffset": 1.0,
                              "yOffset": 0.0,
                              "blurRadius": 5.0,
                              "spreadRadius": 0.0,
                              "color": "80000000"
                            }
                          ]
                        },
                        "child": {
                          "type": "Container",
                          "alignment": null,
                          "padding": null,
                          "margin": null,
                          "constraints": {
                            "minWidth": 200.0,
                            "maxWidth": 200.0,
                            "minHeight": 100.0,
                            "maxHeight": 100.0
                          },
                          "child": {
                            "type": "Padding",
                            "padding": "10.0,10.0,10.0,10.0",
                            "child": {
                              "type": "Column",
                              "crossAxisAlignment": "start",
                              "mainAxisAlignment": "spaceEvenly",
                              "mainAxisSize": "max",
                              "textBaseline": "ideographic",
                              "textDirection": null,
                              "verticalDirection": "down",
                              "children": [
                                {
                                  "type": "Row",
                                  "crossAxisAlignment": "center",
                                  "mainAxisAlignment": "spaceBetween",
                                  "mainAxisSize": "max",
                                  "textBaseline": "ideographic",
                                  "textDirection": null,
                                  "verticalDirection": "down",
                                  "children": [
                                    {
                                      "type": "Text",
                                      "data": "10",
                                      "textAlign": "start",
                                      "overflow": null,
                                      "maxLines": null,
                                      "semanticsLabel": null,
                                      "softWrap": null,
                                      "textDirection": "ltr",
                                      "style": {
                                        "debugLabel": null,
                                        "decoration": "none",
                                        "fontSize": 25.0,
                                        "fontFamily": null,
                                        "fontStyle": "normal",
                                        "fontWeight": "w800"
                                      }
                                    },
                                    {
                                      "type": "Icon",
                                      "data": "fa.google",
                                      "color": "#000000"
                                    }
                                  ]
                                },
                                {"type": "Text", "data": "Early Check Out"}
                              ]
                            }
                          }
                        }
                      },
                      {
                        "type": "DecoratedBox",
                        "decoration": {
                          "borderRadius": "10",
                          "color": "#f5f5f5",
                          "boxShadow": [
                            {
                              "xOffset": 1.0,
                              "yOffset": 0.0,
                              "blurRadius": 5.0,
                              "spreadRadius": 0.0,
                              "color": "80000000"
                            }
                          ]
                        },
                        "child": {
                          "type": "Container",
                          "alignment": null,
                          "padding": null,
                          "margin": null,
                          "constraints": {
                            "minWidth": 200.0,
                            "maxWidth": 200.0,
                            "minHeight": 100.0,
                            "maxHeight": 100.0
                          },
                          "child": {
                            "type": "Padding",
                            "padding": "10.0,10.0,10.0,10.0",
                            "child": {
                              "type": "Column",
                              "crossAxisAlignment": "start",
                              "mainAxisAlignment": "spaceEvenly",
                              "mainAxisSize": "max",
                              "textBaseline": "ideographic",
                              "textDirection": null,
                              "verticalDirection": "down",
                              "children": [
                                {
                                  "type": "Row",
                                  "crossAxisAlignment": "center",
                                  "mainAxisAlignment": "spaceBetween",
                                  "mainAxisSize": "max",
                                  "textBaseline": "ideographic",
                                  "textDirection": null,
                                  "verticalDirection": "down",
                                  "children": [
                                    {
                                      "type": "Text",
                                      "data": "10",
                                      "textAlign": "start",
                                      "overflow": null,
                                      "maxLines": null,
                                      "semanticsLabel": null,
                                      "softWrap": null,
                                      "textDirection": "ltr",
                                      "style": {
                                        "debugLabel": null,
                                        "decoration": "none",
                                        "fontSize": 25.0,
                                        "fontFamily": null,
                                        "fontStyle": "normal",
                                        "fontWeight": "w800"
                                      }
                                    },
                                    {
                                      "type": "Icon",
                                      "data": "fa.google",
                                      "color": "#000000"
                                    }
                                  ]
                                },
                                {"type": "Text", "data": "On Leave"}
                              ]
                            }
                          }
                        }
                      },
                      {
                        "type": "DecoratedBox",
                        "decoration": {
                          "borderRadius": "10",
                          "color": "#f5f5f5",
                          "boxShadow": [
                            {
                              "xOffset": 1.0,
                              "yOffset": 0.0,
                              "blurRadius": 5.0,
                              "spreadRadius": 0.0,
                              "color": "80000000"
                            }
                          ]
                        },
                        "child": {
                          "type": "Container",
                          "alignment": null,
                          "padding": null,
                          "margin": null,
                          "constraints": {
                            "minWidth": 200.0,
                            "maxWidth": 200.0,
                            "minHeight": 100.0,
                            "maxHeight": 100.0
                          },
                          "child": {
                            "type": "Padding",
                            "padding": "10.0,10.0,10.0,10.0",
                            "child": {
                              "type": "Column",
                              "crossAxisAlignment": "start",
                              "mainAxisAlignment": "spaceEvenly",
                              "mainAxisSize": "max",
                              "textBaseline": "ideographic",
                              "textDirection": null,
                              "verticalDirection": "down",
                              "children": [
                                {
                                  "type": "Row",
                                  "crossAxisAlignment": "center",
                                  "mainAxisAlignment": "spaceBetween",
                                  "mainAxisSize": "max",
                                  "textBaseline": "ideographic",
                                  "textDirection": null,
                                  "verticalDirection": "down",
                                  "children": [
                                    {
                                      "type": "Text",
                                      "data": "10",
                                      "textAlign": "start",
                                      "overflow": null,
                                      "maxLines": null,
                                      "semanticsLabel": null,
                                      "softWrap": null,
                                      "textDirection": "ltr",
                                      "style": {
                                        "debugLabel": null,
                                        "decoration": "none",
                                        "fontSize": 25.0,
                                        "fontFamily": null,
                                        "fontStyle": "normal",
                                        "fontWeight": "w800"
                                      }
                                    },
                                    {
                                      "type": "Icon",
                                      "data": "fa.google",
                                      "color": "#000000"
                                    }
                                  ]
                                },
                                {"type": "Text", "data": "Day off"}
                              ]
                            }
                          }
                        }
                      }
                    ]
                  }
                }
              }
            ]
          }
        }
      }
    }
  ]
}''';

var rowTest = '''{
  "type": "Container",
  "alignment": null,
  "padding": null,
  "margin": null,
  "constraints": {
    "minWidth": 393.0,
    "maxWidth": 393.0,
    "minHeight": 80.0,
    "maxHeight": 80.0
  },
  "child": {
    "type": "Row",
    "crossAxisAlignment": "center",
    "mainAxisAlignment": "spaceBetween",
    "mainAxisSize": "max",
    "textBaseline": "ideographic",
    "textDirection": null,
    "verticalDirection": "down",
    "children": [
      {
        "type": "Container",
        "alignment": null,
        "padding": "5, 5, 10, 30",
        "margin": null,
        "constraints": {
          "minWidth": 60.0,
          "maxWidth": 60.0,
          "minHeight": 100.0,
          "maxHeight": 100.0
        },
        "child": {
          "type": "DecoratedBox",
          "decoration": {"borderRadius": "5", "color": "005C99"},
          "child": {
            "type": "Container",
            "width": 200.0,
            "height": 300.0,
            "child": {
              "type": "Icon",
              "data": "fa.google",
              "color": "#000000",
              "size": 20.0
            }
          }
        }
      },
      {
        "type": "Expanded",
        "flex": 1,
        "child": {
          "type": "Container",
          "alignment": null,
          "padding": null,
          "margin": null,
          "constraints": {
            "minWidth": 100.0,
            "maxWidth": 100.0,
            "minHeight": 100.0,
            "maxHeight": 100.0
          },
          "child": {
            "type": "Column",
            "crossAxisAlignment": "start",
            "mainAxisAlignment": "spaceEvenly",
            "children": [
              {
                "type": "Text",
                "data": "Scan QR Attendance",
                "style": {
                  "debugLabel": null,
                  "decoration": "none",
                  "fontSize": 16.0,
                  "fontFamily": null,
                  "fontStyle": "normal",
                  "fontWeight": "w700"
                }
              },
              {
                "type": "Container",
                "child": {
                  "type": "Row",
                  "mainAxisAlignment": "spaceBetween",
                  "children": [
                    {
                      "type": "Text",
                      "data": "Attendance with a quick scan",
                      "style": {
                        "debugLabel": null,
                        "decoration": "none",
                        "fontSize": 12.0,
                        "fontFamily": null,
                        "fontStyle": "normal",
                        "fontWeight": "w700",
                        "color": "005C99"
                      }
                    },
                    {"type": "Icon", "data": "arrow_forward_ios", "size": 14.0}
                  ]
                }
              },
              {
                "type": "Container",
                "width": 400.0,
                "height": 1.0,
                "color": "#7a7a78"
              }
            ]
          }
        }
      }
    ]
  }
}''';

var gridviewJson = '''{
  "type": "GridView",
  "crossAxisCount": 2,
  "padding": "10, 10, 10, 10",
  "mainAxisSpacing": 4.0,
  "crossAxisSpacing": 4.0,
  "childAspectRatio": 2.5,
  "children": [
    {
      "type": "DecoratedBox",
      "decoration": {
        "borderRadius": "10",
        "color": "#f5f5f5",
        "boxShadow": [
          {
            "xOffset": 1.0,
            "yOffset": 0.0,
            "blurRadius": 5.0,
            "spreadRadius": 0.0,
            "color": "80000000"
          }
        ]
      },
      "child": {
        "type": "Container",
        "alignment": null,
        "padding": null,
        "margin": null,
        "constraints": {
          "minWidth": 200.0,
          "maxWidth": 200.0,
          "minHeight": 100.0,
          "maxHeight": 100.0
        },
        "child": {
          "type": "Padding",
          "padding": "10.0,10.0,10.0,10.0",
          "child": {
            "type": "Column",
            "crossAxisAlignment": "start",
            "mainAxisAlignment": "spaceEvenly",
            "mainAxisSize": "max",
            "textBaseline": "ideographic",
            "textDirection": null,
            "verticalDirection": "down",
            "children": [
              {
                "type": "Row",
                "crossAxisAlignment": "center",
                "mainAxisAlignment": "spaceBetween",
                "mainAxisSize": "max",
                "textBaseline": "ideographic",
                "textDirection": null,
                "verticalDirection": "down",
                "children": [
                  {
                    "type": "Text",
                    "data": "10",
                    "textAlign": "start",
                    "overflow": null,
                    "maxLines": null,
                    "semanticsLabel": null,
                    "softWrap": null,
                    "textDirection": "ltr",
                    "style": {
                        "debugLabel": null,
                        "decoration": "none",
                        "fontSize": 25.0,
                        "fontFamily": null,
                        "fontStyle": "normal",
                        "fontWeight": "w800"
                     
                      }
                    
                  },
                  {
                    "type" : "Icon",
                    "data" : "fa.google",
                    "color" : "#000000"

                  }
                ]
              },
              {"type": "Text", "data": "Late Check In"}
            ]
          }
        }
      }
    }
  ]
}''';
