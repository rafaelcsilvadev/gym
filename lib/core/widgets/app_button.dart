import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final bool loading;
  final String text;
  final Color textColor;
  final Color background;
  final Color? borderColor;
  final Color? progressColor;
  final Function() onPressed;
  final Key? circleProgressKey;

  const AppButton({
    super.key,
    required this.onPressed,
    this.loading = false,
    required this.text,
    required this.textColor,
    required this.background,
    this.borderColor,
    this.progressColor,
    this.circleProgressKey,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => background,
        ),
        elevation: MaterialStateProperty.all(1),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: borderColor ?? background,
              width: 2,
            ),
          ),
        ),
      ),
      onPressed: !loading ? onPressed : null,
      child: !loading
          ? Text(
              text,
              style: TextStyle(
                color: textColor,
                fontFamily: 'Inter Bold',
              ),
            )
          : SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                key: circleProgressKey,
                color: progressColor,
                strokeWidth: 2,
              ),
            ),
    );
  }
}
