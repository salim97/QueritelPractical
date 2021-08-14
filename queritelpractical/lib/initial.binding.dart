import 'package:get/get.dart';
import 'package:queritelpractical/common/services/cat.service.dart';

import 'common/services/dog.service.dart';
import 'common/services/cat.service.dart';


class InitialBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut< InitialController>(() => InitialController(
    //   repository: MyUserRepository()));
    Get.lazyPut<DogService>(() => DogServiceImpl());
    Get.lazyPut<CatService>(() => CatServiceImpl());
    // Get.put(FirebaseAuthService());
    // Get.put(FirebaseAuthService());
  }
}
