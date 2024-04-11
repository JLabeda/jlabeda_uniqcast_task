import 'package:flutter/widgets.dart';

class WebVariables {
  static double webPadding(BuildContext context, int maxWidth) {
    final result = (MediaQuery.of(context).size.width - maxWidth) / 2;
    if (result.isNegative) {
      return 0;
    } else {
      return result;
    }
  }
}
