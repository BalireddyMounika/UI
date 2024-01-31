import 'package:get/get.dart';

import '../modules/search/views/search_view.dart';

class Routes {
  static const search = '/search';
  static const details = '/details';
}

class Pages {
  static final pages = [
    GetPage(
        name: Routes.search,
        page: () =>  detailpage()),
  ];
}
