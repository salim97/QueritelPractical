import 'package:get/get.dart';
import 'package:queritelpractical/common/services/cat.service.dart';

import 'common/services/dog.service.dart';
import 'common/services/cat.service.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DogService>(() => DogServiceImpl());
    // Get.lazyPut<DogService>(() => DogServiceFake());
    Get.lazyPut<CatService>(() => CatServiceImpl());
    // Get.lazyPut<CatService>(() => CatServiceFake());
  }
}
