import '/resources/pages/marketplace_page.dart';
import '../resources/widgets/bottom-bar_widget.dart';
import '/resources/pages/profile_page.dart';
import '/resources/pages/notif_page.dart';
import '/resources/pages/add_page.dart';
import '/resources/pages/explore_page.dart';
import '/resources/pages/home_page.dart';
import 'package:nylo_framework/nylo_framework.dart';

/*
|--------------------------------------------------------------------------
| App Router
|
| * [Tip] Create pages faster 🚀
| Run the below in the terminal to create new a page.
| "dart run nylo_framework:main make:page profile_page"
| Learn more https://nylo.dev/docs/5.x/router
|--------------------------------------------------------------------------
*/

appRouter() => nyRoutes((router) {
      router.route("/", (context) => BottomBar(),
          initialRoute: true, transition: PageTransitionType.fade);

      router.route(HomePage.path, (context) => HomePage());
      // Add your routes here

      // router.route(NewPage.path, (context) => NewPage(), transition: PageTransitionType.fade);

      router.route(ExplorePage.path, (context) => ExplorePage());

      router.route(AddPage.path, (context) => AddPage());

      router.route(NotifPage.path, (context) => NotifPage());

      router.route(ProfilePage.path, (context) => ProfilePage());

      router.route(MarketplacePage.path, (context) => MarketplacePage());
    });
