import 'package:flutter/material.dart';

import 'post_comments_widget.dart';

class PostButtonList extends StatefulWidget {
  final bool like;
  final bool save;

  const PostButtonList({
    super.key,
    required this.like,
    required this.save,
  });

  @override
  State<PostButtonList> createState() => _PostButtonListState();
}

class _PostButtonListState extends State<PostButtonList> {
  bool _likePost = false;
  bool _savePost = false;

  @override
  void initState() {
    _likePost = widget.like;
    _savePost = widget.save;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
                enableFeedback: true,
                isSelected: _likePost,
                iconSize: 28,
                selectedIcon: Icon(
                  Icons.favorite_rounded,
                  color: Colors.red,
                ),
                onPressed: () {
                  setState(() {
                    _likePost = !_likePost;
                  });
                },
                icon: Icon(Icons.favorite_border_rounded)),
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      useSafeArea: true,
                      showDragHandle: true,
                      builder: (context) {
                        return PostComments();
                      });
                },
                iconSize: 28,
                icon: Icon(Icons.mode_comment_outlined)),
            IconButton(
                onPressed: () {},
                iconSize: 28,
                icon: Icon(Icons.attach_money_rounded)),
            IconButton(
                onPressed: () {},
                iconSize: 28,
                icon: Icon(Icons.near_me_outlined)),
          ],
        ),
        IconButton(
            enableFeedback: true,
            iconSize: 28,
            isSelected: _savePost,
            selectedIcon: Icon(
              Icons.bookmark_rounded,
              color: Colors.black87,
            ),
            onPressed: () {
              setState(() {
                _savePost = !_savePost;
              });
            },
            icon: Icon(Icons.bookmark_border_rounded))
      ],
    );
  }
}
