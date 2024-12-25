import 'package:flutter/material.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/text_widget.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/context_extensions.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/date_time_extensions.dart';

class DateTimeWidget extends StatelessWidget {
  final DateTime dateTime;

  const DateTimeWidget({super.key, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: TextWidget.regular(
          dateTime.dateFormat,
          context: context,
          additionalStyle: TextStyle(
            fontSize: 12,
            color: context.colorScheme.tertiary.withOpacity(0.6),
          ),
        ),
      ),
    );
  }
}
