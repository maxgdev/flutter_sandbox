import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(AnyAppHere());
}

// Everythings a Widget. "AnyAppHere" main Widget
class  AnyAppHere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Plandemic 2020"),
    );
  }
}