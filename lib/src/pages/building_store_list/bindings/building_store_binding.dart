import 'package:get/get.dart';
import 'package:ipsb_visitor_app/src/pages/building_store_list/controllers/building_store_controller.dart';

class BuildingStoreBinding extends Bindings {
  @override
  void dependencies() {
    // Bind Building stores controller
    Get.lazyPut<BuildingStoreController>(() => BuildingStoreController());
  }
}
