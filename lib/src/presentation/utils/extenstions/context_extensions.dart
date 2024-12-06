import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  bool get isDark {
    return Theme.of(this).brightness == Brightness.dark;
  }

  bool get isKeyboardUp {
    return EdgeInsets.fromViewPadding(WidgetsBinding.instance.window.viewInsets,
                WidgetsBinding.instance.window.devicePixelRatio)
            .bottom >
        0;
  }

  double get screenWidth {
    return MediaQuery.of(this).size.width;
  }

  double get screenHeight {
    return MediaQuery.of(this).size.height;
  }

  ColorScheme get colorScheme => Theme.of(this).colorScheme;


  TextTheme get textTheme => Theme.of(this).textTheme;

  double heightPercentage(double percentage) {
    return MediaQuery.of(this).size.height * (percentage / 100);
  }

  double widthPercentage(double percentage) {
    return MediaQuery.of(this).size.width * (percentage / 100);
  }

  Size get widgetSize {
    return (findRenderObject() as RenderBox).size;
  }

  bool get isModalOpen {
    return ModalRoute.of(this)?.isCurrent != true;
  }

  void dismissModal() {
    if (isModalOpen) {
      Navigator.pop(this);
    }
  }


  Future pushReplacementNamed(String route, {dynamic arguments}) async {
    return await Navigator.pushReplacementNamed(this, route,
        arguments: arguments);
  }

  Future pushNamedRemoveUntil(String route, {dynamic arguments}) async {
    return await Navigator.pushNamedAndRemoveUntil(
        this, route, (route) => false,
        arguments: arguments);
  }

  bool get canPop {
    return Navigator.canPop(this);
  }

  void popOrPushRemoveUntil(String route,
      {dynamic popArgs, dynamic navigateArgs}) {
    if (canPop) {
      pop(arguments: popArgs);
      return;
    }
    pushNamedRemoveUntil(route, arguments: navigateArgs);
  }

  void pop({dynamic arguments}) {
    return Navigator.pop(this, arguments);
  }

}
