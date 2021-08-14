import 'package:get/get.dart';
import 'package:queritelpractical/common/models/cat.model.dart';
import 'package:queritelpractical/common/models/dog.model.dart';

class DetailsController extends GetxController {
  //TODO: Implement HomeController
  // FirebaseAuthService firebaseAuthService = Get.find<FirebaseAuthService>();
  final dynamic model;
  int tabIndex = 0;

  DetailsController(this.model);

  void changeTabIndex(int index) {
    tabIndex = index;
    print(tabIndex);
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  get imageURL {
    if (model is CatModel) return (model as CatModel).photo;
    if (model is DogModel) return (model as DogModel).photo;
  }

  get name {
    if (model is CatModel) return (model as CatModel).name;
    if (model is DogModel) return (model as DogModel).name;
  }

  get description {
    if (model is CatModel) return (model as CatModel).description;
    if (model is DogModel) return (model as DogModel).description;
  }
}
