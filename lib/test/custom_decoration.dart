import 'dart:convert';
import 'package:flutter/material.dart';

// Function to parse JSON and create a decoration
BoxDecoration parseJsonDecoration(String jsonStr) {
  try {
    final Map<String, dynamic> data = json.decode(jsonStr);
    final String type = data['type'];

    if (type == 'custom_box') {
      final Color borderColor =
          Color(int.parse(data['borderColor'].replaceAll("#", "0xFF")));
      final double borderWidth = data['borderWidth'] ?? 0.0;
      final Color? backgroundColor = data['backgroundColor'] != null
          ? Color(int.parse(data['backgroundColor'].replaceAll("#", "0xFF")))
          : null;

      final BoxDecoration decoration = BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        color: backgroundColor,
      );

      return decoration;
    }

    // You can add more decoration types and customizations as needed.

    // Return a default decoration if the type is not recognized.
    return const BoxDecoration();
  } catch (e) {
    // Handle parsing errors here.
    print("Error parsing JSON: $e");
    return const BoxDecoration(); // Return a default decoration in case of an error.
  }
}
