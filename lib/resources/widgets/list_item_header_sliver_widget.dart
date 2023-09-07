import 'package:flutter/material.dart';
import 'package:flutter_app/app/controllers/sliver_scroll_controller.dart';
import 'package:flutter_app/app/models/header.dart';
import 'package:flutter_app/resources/widgets/get_box_offset_widget.dart';

class ListItemHeaderSliver extends StatelessWidget {
  final SliverScrollController bloc;

  const ListItemHeaderSliver({Key? key, required this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final itemsOffset = bloc.listOffSetItemHeader;

    return NotificationListener<ScrollNotification>(
      onNotification: (notification) => true,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
            right: size.width -
                (itemsOffset[itemsOffset.length - 1] -
                    itemsOffset[itemsOffset.length - 2])),
        controller: bloc.scrollControllerItemHeader,
        scrollDirection: Axis.horizontal,
        child: ValueListenableBuilder(
          valueListenable: bloc.headerNotifier,
          builder: (context, Header? snapshot, __) {
            return Row(
              children: List.generate(
                bloc.listCategory.length,
                (index) {
                  return GetBoxOffset(
                    offset: (offSet) {
                      return itemsOffset[index] = offSet.dx;
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        right: 8,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: index == snapshot?.index
                            ? Colors.black
                            : Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        bloc.listCategory[index].category!,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: index == snapshot?.index
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
