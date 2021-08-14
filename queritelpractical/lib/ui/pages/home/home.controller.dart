import 'package:get/get.dart';
import 'package:queritelpractical/common/services/cat.service.dart';
import 'package:queritelpractical/common/services/dog.service.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  DogService dogService = Get.find<DogService>();
  CatService catService = Get.find<CatService>();

  int tabIndex = 1;
  List<String> menuTab = ["Cats", "Dogs"];

  void changeTabIndex(int index) async {
    tabIndex = index;
    print(tabIndex);
    if (tabIndex == 0)
      await catService.getAll();
    else
      await dogService.getAll();
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();

    changeTabIndex(0);
  }
}
