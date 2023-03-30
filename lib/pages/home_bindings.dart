import 'package:get/get.dart';
import 'package:getxstatemixin/pages/home_controller.dart';
import 'package:getxstatemixin/pages/home_controller_state_mixin.dart';
import 'package:getxstatemixin/repository/viacep_repository.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViacepRepository());
    Get.put(HomeController(Get.find()));
    Get.put(HomeControllerStateMixin(Get.find()));
  }
}
