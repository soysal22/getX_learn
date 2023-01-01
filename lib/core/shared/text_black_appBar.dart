// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:http_get_use/core/constants/constants.dart';

class TextBlackAppBar extends StatelessWidget {
  TextBlackAppBar({super.key, this.title = ""});

  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.start,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: Constants.colorAppbar),
    );
  }
}
