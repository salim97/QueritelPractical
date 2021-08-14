library home_view;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queritelpractical/app/theme.dart';
import 'package:queritelpractical/ui/pages/details/details.view.dart';
import 'package:queritelpractical/ui/widgets/mycard.widget.dart';

import 'package:queritelpractical/ui/widgets/mynavbarlogo.widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'home.controller.dart';
part 'home_mobile.view.dart';
part 'home_desktop.view.dart';

class HomeView extends StatelessWidget {
  // HomeView() {
  //   Get.lazyPut<HomeController>(() => HomeController());
  // }
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) {
        return ScreenTypeLayout(
          breakpoints: ScreenBreakpoints(tablet: 760, desktop: 1380, watch: 300),
          desktop: _HomeDesktop(homeController: _),
          tablet: _HomeDesktop(homeController: _),
          mobile: _HomeMobile(homeController: _),
        );
      },
    );
  }
}
