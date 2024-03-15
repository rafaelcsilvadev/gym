import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Layout extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final Color? statusBarColor;
  final Color? systemNavigationBarColor;
  final Color? systemNavigationBarDividerColor;
  final Brightness? statusBarIconBrightness;
  final bool? systemNavigationBarContrastEnforced;
  final bool? systemStatusBarContrastEnforced;
  final Brightness? statusBarBrightness;
  final Brightness? systemNavigationBarIconBrightness;

  const Layout({
    super.key,
    required this.child,
    this.appBar,
    this.floatingActionButton,
    this.backgroundColor,
    this.statusBarColor,
    this.statusBarIconBrightness,
    this.statusBarBrightness,
    this.systemNavigationBarColor,
    this.systemNavigationBarDividerColor,
    this.systemNavigationBarContrastEnforced,
    this.systemNavigationBarIconBrightness,
    this.systemStatusBarContrastEnforced,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        systemNavigationBarColor: systemNavigationBarColor,
        systemNavigationBarDividerColor: systemNavigationBarDividerColor,
        systemNavigationBarContrastEnforced:
            systemNavigationBarContrastEnforced,
        systemStatusBarContrastEnforced: systemStatusBarContrastEnforced,
        systemNavigationBarIconBrightness: systemNavigationBarIconBrightness,
        statusBarIconBrightness: statusBarIconBrightness,
        statusBarBrightness: statusBarBrightness,
      ),
    );

    return Scaffold(
      appBar: appBar,
      backgroundColor: backgroundColor,
      floatingActionButton: floatingActionButton,
      body: SafeArea(
        child: child,
      ),
    );
  }
}
