import 'package:flutter/material.dart';
import 'package:gym/core/theme/app_colors.dart';

class AppFloatButton extends StatelessWidget {
  final Function() onPressed;

  const AppFloatButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 80,
      height: 80,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1000),
        ),
        child: const Icon(
          Icons.add,
          size: 50,
          color: AppColors.neutralColor,
        ),
      ),
    );
  }
}
