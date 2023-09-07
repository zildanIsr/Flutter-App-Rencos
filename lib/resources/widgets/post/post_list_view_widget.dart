import 'package:flutter/material.dart';
import 'post_widget.dart';

class PostListView extends StatelessWidget {
  const PostListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Post(),
        ),
        childCount: 10, // Jumlah item yang ingin ditampilkan
      ),
    );
  }
}
