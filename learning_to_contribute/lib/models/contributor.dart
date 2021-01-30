import 'package:flutter/material.dart';

///
/// This is the data model class for Contributors
///

// TODO 1: Understand this DataModel Class

class Contributor {
  final String name;
  final String instagram;
  final List<Color> gradientColors;
  final String message;

  Contributor(
      {@required this.name,
      this.instagram,
      this.gradientColors = const [Colors.pinkAccent, Colors.yellow],
      this.message})
      : assert(name != null, "Name must be Provided");
}
