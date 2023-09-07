import 'package:flutter/material.dart';

import '../../bootstrap/helpers.dart';
import '../widgets/post/post_list_view_widget.dart';
import '/app/controllers/home_controller.dart';
import 'package:nylo_framework/nylo_framework.dart';

class HomePage extends NyStatefulWidget {
  @override
  final HomeController controller = HomeController();

  static const path = '/home-page';

  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends NyState<HomePage> {
  @override
  init() async {
    super.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          backgroundColor: ThemeColor.get(context).appBarBackground,
          pinned: false,
          floating: false,
          automaticallyImplyLeading: false,
          title: Text('Homepage').titleLarge(context),
        ),
        PostListView()
      ]),
    );
  }
}
