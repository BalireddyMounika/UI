import 'package:get/get.dart';

import 'app/modules/search/controllers/search_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    // Get.put(ConfigRepository(), permanent: true);

    Get.put( searchcontroller(), permanent: true);
  }
}
