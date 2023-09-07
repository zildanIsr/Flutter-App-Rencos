import 'package:flutter/material.dart';
import 'package:flutter_app/bootstrap/helpers.dart';
import 'package:nylo_framework/nylo_framework.dart';

import 'post_setting_widget.dart';

class Headers_Post extends StatelessWidget {
  const Headers_Post({
    super.key,
  });

  void _showBottomModal(context) {
    showModalBottomSheet(
        showDragHandle: true,
        backgroundColor: ThemeColor.get(context).surfaceBackground,
        context: context,
        builder: (context) {
          return PostSetting();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.red,
            ),
            SizedBox(
              width: 16,
            ),
            Text('Gojo Satoru')
                .titleMedium(context)
                .setStyle(TextStyle(fontWeight: FontWeight.w600))
          ],
        ),
        IconButton(
            onPressed: () {
              _showBottomModal(context);
            },
            icon: Icon(Icons.more_vert))
      ],
    );
  }
}
