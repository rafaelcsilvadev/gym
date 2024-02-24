import 'package:flutter/material.dart';
import 'package:gym/core/theme/app_colors.dart';

class AppInput extends StatefulWidget {
  final String labelText;
  final Function(String) onChange;

  const AppInput({super.key, required this.labelText, required this.onChange});

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, bottom: 10),
          child:  Text(
            widget.labelText,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: 'Inter Bold',
              fontSize: 15,
              color: AppColors.neutralColor,
            ),
          ),
        ),
        TextFormField(
          onChanged: (value) => widget.onChange(value),
          cursorColor: AppColors.secondaryColor,
          decoration: InputDecoration(
            fillColor: AppColors.neutralColor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                  color: AppColors.secondaryColor,
                  width: 2,
                  style: BorderStyle.solid),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                  color: AppColors.secondaryColor,
                  width: 2,
                  style: BorderStyle.solid),
            ),
          ),
        ),
      ],
    );
  }
}
