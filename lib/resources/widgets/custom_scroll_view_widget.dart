import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

import '../../bootstrap/helpers.dart';

class CustomScrollWidget extends StatefulWidget {
  final Widget child;
  final String tittle;
  final Widget? header;

  CustomScrollWidget(
      {Key? key, required this.child, required this.tittle, this.header})
      : super(key: key);

  @override
  _CustomScrollWidgetState createState() => _CustomScrollWidgetState();
}

class _CustomScrollWidgetState extends NyState<CustomScrollWidget> {
  @override
  init() async {
    super.init();
  }

  @override
  Widget build(BuildContext context) {
    Widget header = widget.header!;

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: ThemeColor.get(context).appBarBackground,
          pinned: false,
          floating: false,
          automaticallyImplyLeading: false,
          title: Text(widget.tittle),
        ),
        header,
        widget.child
      ],
    );
  }
}
