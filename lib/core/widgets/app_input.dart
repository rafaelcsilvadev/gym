import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym/app/signin/controllers/app_input_controller.dart';
import 'package:gym/core/theme/app_colors.dart';

class AppInput extends StatefulWidget {
  final String labelText;
  final Function(String) onChange;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String tag;

  const AppInput({
    super.key,
    required this.labelText,
    required this.onChange,
    required this.obscureText,
    this.keyboardType,
    required this.tag
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  late String _tag;
  late AppInputController _appInputController;

  @override
  void initState() {
    _tag = widget.tag;
    _appInputController = Get.put(AppInputController(), tag: _tag);
    _appInputController.changeObscureTextLocal = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppInputController>(
      tag: _tag,
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
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
              cursorColor: AppColors.primaryColor,
              keyboardType: widget.keyboardType,
              obscureText: controller.obscureTextLocal,
              decoration: InputDecoration(
                fillColor: AppColors.neutralColor,
                filled: true,
                suffixIcon: widget.obscureText
                    ? controller.selectObscureIcons()
                    : null,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: AppColors.primaryColor,
                      width: 2,
                      style: BorderStyle.solid),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: AppColors.primaryColor,
                      width: 2,
                      style: BorderStyle.solid),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
