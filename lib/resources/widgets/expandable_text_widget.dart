import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:expandable_text/expandable_text.dart';

class ExpandablePostText extends StatefulWidget {
  final String text;

  ExpandablePostText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  _ExpandablePostTextState createState() => _ExpandablePostTextState();
}

class _ExpandablePostTextState extends NyState<ExpandablePostText> {
  bool isExpanded = false;

  @override
  init() async {
    super.init();
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableText(
      widget.text,
      expandText: 'show more'.tr(),
      maxLines: 2,
      collapseText: 'close'.tr(),
      linkColor: Colors.grey.shade400,
      linkStyle: TextStyle(fontWeight: FontWeight.bold),
      expanded: isExpanded,
      onExpandedChanged: (value) {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
    );
  }
}
