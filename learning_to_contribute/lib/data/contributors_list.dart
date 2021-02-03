import 'package:flutter/material.dart';
import 'package:learning_to_contribute/models/contributor.dart';

///
/// List contributors to show on the homeScreen of type <Contributors>
///
List<Contributor> contributors = [
  Contributor(
      name: "Creator",
      instagram: 'theflutterway',
      gradientColors: [Color(0xFF88CFFA), Color(0xFFE2E39B)],
      message: "You are Awesome \n Keep Learning Keep Growing"),
  Contributor(
      name: 'Flutter Coders Community',
      instagram: "fluttercoderscommunity",
      message: "Code Contribution is FUN"),
  Contributor(
      name: "Random example 1",
      instagram: 'randomboi',
      gradientColors: [
        Colors.white60,
        Colors.purpleAccent,
        Colors.orangeAccent,
        Colors.yellow,
      ],
      message:
          "This is a random example for showing use of more than two color gradient"),
  Contributor(
      name: "Random example 2",
      gradientColors: [Colors.white60, Colors.pink],
      message: "This is a random example with no instagram username passed"),
  Contributor(
      name: "yo",
      instagram: 'instagram',
      message: "This is a random example with no gradient colors passed"),
  Contributor(
    name: 'Sai Vishnu',
    instagram: '_sai.vishnu_',
    gradientColors: [Colors.grey, Colors.amber],
    message: 'Flutter your way to the top.'
  ),
  Contributor(
    name: 'WASSSUP !?',
    instagram: 'insta!!',
    gradientColors: [Colors.green, Colors.white],
    message: 'Thank you for this. Seriously !!'
  ),
  // TODO 2: Add your contribution details here above this line
];
