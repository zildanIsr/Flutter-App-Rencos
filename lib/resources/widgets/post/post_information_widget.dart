import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

import '../expandable_text_widget.dart';
import 'post_comments_widget.dart';

class PostInformation extends StatelessWidget {
  const PostInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('1000 like'.tr())
              .bodyMedium(context)
              .setStyle(TextStyle(fontWeight: FontWeight.w600)),
          ExpandablePostText(
              text:
                  'Pengguna loremQuis nisi sit et laborum. Anim incididunt proident incididunt non culpa sit officia do Lorem tempor. Anim esse nulla aute consequat ex irure cupidatat reprehenderit reprehenderit non do dolore minim. Reprehenderit non non quis minim duis.'),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  useSafeArea: true,
                  showDragHandle: true,
                  builder: (context) {
                    return PostComments();
                  });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text('See all comments'.tr())
                  .bodyMedium(context)
                  .fontWeightBold(),
            ),
          ),
          Text('27 August'.tr()).bodySmall(context)
        ],
      ),
    );
  }
}
