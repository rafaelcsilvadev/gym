import 'package:flutter/material.dart';
import 'package:gym/core/widgets/app_float_button.dart';
import 'package:gym/core/widgets/layout.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      floatingActionButton: AppFloatButton(
        onPressed: () {},
      ),
      child: Container(),
    );
  }
}
