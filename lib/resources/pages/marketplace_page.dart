import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/app/controllers/sliver_scroll_controller.dart';
import 'package:flutter_app/bootstrap/helpers.dart';
import 'package:flutter_app/resources/widgets/category_list_widget.dart';
import 'package:flutter_app/resources/widgets/list_item_header_sliver_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/controller.dart';

class MarketplacePage extends NyStatefulWidget {
  final Controller controller = Controller();

  static const path = '/marketplace';

  MarketplacePage({Key? key}) : super(key: key);

  @override
  _MarketplacePageState createState() => _MarketplacePageState();
}

class _MarketplacePageState extends NyState<MarketplacePage> {
  final bloc = SliverScrollController();

  @override
  void initState() {
    bloc.init();
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          controller: bloc.scrollControllerGlobally,
          slivers: [
            _FlexibleHeader(),
            SliverPersistentHeader(
              delegate: CostumHeader(),
              pinned: true,
            ),
            SliverPersistentHeader(
              delegate: CategoryListWidget(bloc),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: ValueListenableBuilder(
                  valueListenable: bloc.goingDown,
                  builder: (context, value, _) {
                    return AnimatedOpacity(
                        duration: Duration(milliseconds: 300),
                        opacity: bloc.goingDown.value ? 0 : 1,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child:
                              Text('Top Recommendations').titleLarge(context),
                        ));
                  }),
            ),
            SliverMasonryGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                itemBuilder: (build, index) {
                  return Card(
                      // Give each item a random background color
                      color: Color.fromARGB(
                          Random().nextInt(256),
                          Random().nextInt(256),
                          Random().nextInt(256),
                          Random().nextInt(256)),
                      key: ValueKey(int),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Stack(fit: StackFit.passthrough, children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(13),
                                  topRight: Radius.circular(13)),
                              child: Image.network(
                                'https://picsum.photos/100/120?random=$index',
                                width: 100,
                                //height: Random().nextInt(130) + 100,
                                fit: BoxFit.cover,
                                frameBuilder: (BuildContext context,
                                        Widget child,
                                        int? frame,
                                        bool wasSynchronouslyLoaded) =>
                                    wasSynchronouslyLoaded
                                        ? child
                                        : AnimatedOpacity(
                                            child: child,
                                            opacity: frame == null ? 0 : 1,
                                            duration:
                                                const Duration(seconds: 2),
                                            curve: Curves.easeOut,
                                          ),
                                loadingBuilder: (context, child, progress) =>
                                    progress == null
                                        ? child
                                        : Container(
                                            width: 100,
                                            height: 130,
                                            color: Colors.grey,
                                          ),
                                errorBuilder: (BuildContext context,
                                        Object exception,
                                        StackTrace? stackTrace) =>
                                    Text('Failed to load image'),
                              ),
                            ),
                            Positioned(
                                top: 10,
                                right: 10,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 2.0, sigmaY: 2.0),
                                    child: Container(
                                        color: Colors.white.withOpacity(0.3),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 4),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star_rate_rounded,
                                              color: Colors.amber,
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Text('4.5').fontWeightBold()
                                          ],
                                        )),
                                  ),
                                )),
                          ]),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Costum Raiden Shogun',
                              maxLines: 2,
                            ).titleMedium(context).fontWeightBold(),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('Rp. 135.000 / 3 days')
                                .bodyMedium(context),
                          )
                        ],
                      ));
                }),
          ],
        ),
      ),
    );
  }
}

// height: Random().nextInt(170) + 150,
//                         child: Center(
//                           child: Text('Text $int'),
//                         ),

double _maxCategoryHeader = 190;
double _minCategoryHeader = 60;

class CategoryListWidget extends SliverPersistentHeaderDelegate {
  final SliverScrollController bloc;

  CategoryListWidget(this.bloc);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final percent = shrinkOffset / _maxExtentHigh;
    return Stack(children: [
      Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 300),
            opacity: percent > 0.1 ? 0 : 1,
            child: Container(
              height: _maxCategoryHeader,
              color: Colors.white,
            ),
          )),
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Align(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            switchInCurve: Curves.easeIn,
            switchOutCurve: Curves.easeInOut,
            child: percent > 0.1
                ? Container(
                    height: _minCategoryHeader,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: ListItemHeaderSliver(bloc: bloc))
                : CategoryList(),
          ),
        ),
      )
    ]);
  }

  @override
  double get maxExtent => _maxCategoryHeader;

  @override
  double get minExtent => _minCategoryHeader;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

class _FlexibleHeader extends StatefulWidget {
  const _FlexibleHeader();

  @override
  State<_FlexibleHeader> createState() => _FlexibleHeaderState();
}

class _FlexibleHeaderState extends State<_FlexibleHeader> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: ThemeColor.get(context).appBarBackground,
        pinned: false,
        floating: false,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
        expandedHeight: 200,
        flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.pin,
          stretchModes: [StretchMode.zoomBackground],
          titlePadding: EdgeInsets.zero,
          centerTitle: false,
          title: Container(
              width: MediaQuery.sizeOf(context).width * .4,
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Find your costum here',
                maxLines: 3,
              ).displayMedium(context)),
        ));
  }
}

const double _maxExtentHigh = 70.0;

class CostumHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final percent = shrinkOffset / _maxExtentHigh;
    return Stack(children: [
      Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 300),
            opacity: percent > 0.1 ? 1 : 0,
            child: Container(
                height: _maxExtentHigh,
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 8.0)),
          )),
      Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: _maxExtentHigh,
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            prefixIconColor: Colors.black54,
                            filled: true,
                            fillColor: Colors.black12,
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 12.0, top: 12.0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0))),
                      ),
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 4.0, vertical: 12.0)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0)))),
                        child: Icon(Icons.search))
                  ],
                ),
              ],
            ),
          ))
    ]);
  }

  @override
  double get maxExtent => _maxExtentHigh;

  @override
  double get minExtent => _maxExtentHigh;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
