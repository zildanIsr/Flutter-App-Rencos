import 'package:flutter/material.dart';

class SafeAreaWidget extends StatefulWidget {
  final Widget child;
  const SafeAreaWidget({Key? key, required this.child}) : super(key: key);

  @override
  State<SafeAreaWidget> createState() => _SafeAreaWidgetState();
}

class _SafeAreaWidgetState extends State<SafeAreaWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: widget.child,
    );
  }
}
