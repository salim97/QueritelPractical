import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queritelpractical/common/services/cat.service.dart';
import 'package:queritelpractical/common/services/dog.service.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  //TODO: Implement HomeController
  DogService dogService = Get.find<DogService>();
  CatService catService = Get.find<CatService>();

  int tabIndex = 1;

  changeTabIndex(int index) async {
    tabIndex = index;
    controller.index = index;
    print(tabIndex);
    if (tabIndex == 0)
      await catService.getAll();
    else
      await dogService.getAll();
    update();
  }

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: 2);
    controller.addListener(() async {
      // print(controller.index);
      changeTabIndex(controller.index);
    });
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();

    changeTabIndex(0);
  }
}
