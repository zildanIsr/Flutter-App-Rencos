import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class PostSetting extends StatelessWidget {
  const PostSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  child: IconButton(
                    padding: EdgeInsets.all(12.0),
                    onPressed: () {},
                    icon: Icon(Icons.share),
                    iconSize: 32.0,
                  ),
                ),
                Text('Share'.tr())
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  child: IconButton(
                    padding: EdgeInsets.all(12.0),
                    onPressed: () {},
                    icon: Icon(Icons.copy),
                    iconSize: 32.0,
                  ),
                ),
                Text('Copy'.tr())
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  child: IconButton(
                    padding: EdgeInsets.all(12.0),
                    onPressed: () {},
                    icon: Icon(Icons.bookmark_border_rounded),
                    iconSize: 32.0,
                  ),
                ),
                Text('Save'.tr())
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  child: IconButton(
                    color: Colors.red,
                    padding: EdgeInsets.all(12.0),
                    onPressed: () {},
                    icon: Icon(Icons.report_problem_outlined),
                    iconSize: 32.0,
                  ),
                ),
                Text('Report'.tr())
              ],
            )
          ],
        ),
        Divider(
          thickness: 0.5,
          color: Colors.black26,
        ),
        ListTile(
          leading: Icon(Icons.person_remove_alt_1_rounded),
          title: Text('Stop following'.tr()),
        ),
        ListTile(
          leading: Icon(Icons.person_rounded),
          title: Text('About this account'.tr()),
        ),
      ],
    );
  }
}
