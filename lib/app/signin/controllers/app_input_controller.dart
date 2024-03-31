import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym/core/theme/app_colors.dart';

class AppInputController extends GetxController {
  final RxBool _obscureTextLocal = true.obs;

  bool get obscureTextLocal => _obscureTextLocal.value;

  set changeObscureTextLocal(bool valor){
    _obscureTextLocal.value = valor;
  }

  void _negateObscureTextLocal() {
    _obscureTextLocal.value = !_obscureTextLocal.value;
    update();
  }

  Widget _iconButton({required IconData icon, required Color color}) {
    return IconButton(
      onPressed: () {
        _negateObscureTextLocal();
      },
      icon: Icon(icon),
      color: AppColors.primaryColor,
    );
  }

  Widget? selectObscureIcons() {
    if (_obscureTextLocal.value) {
      return _iconButton(
        color: AppColors.primaryColor,
        icon: Icons.visibility,
      );
    } else {
      return _iconButton(
        color: AppColors.primaryColor,
        icon: Icons.visibility_off,
      );
    }
  }
}
