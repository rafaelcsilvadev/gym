import 'package:flutter/material.dart';

class LayoutTree extends StatelessWidget {
  final Widget child;

  const LayoutTree({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: child,
    );
  }
}
