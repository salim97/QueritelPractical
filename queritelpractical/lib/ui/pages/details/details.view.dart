library details_view;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queritelpractical/app/theme.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'details.controller.dart';

part 'details_mobile.view.dart';
part 'details_desktop.view.dart';

class DetailsView extends StatelessWidget {
  final dynamic model;

  const DetailsView({Key? key, required this.model}) : super(key: key);


  // DetailsView() {
  //   Get.lazyPut<DetailsController>(() => DetailsController());
  // }
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailsController>(
      init: DetailsController(model),
      builder: (_) {
        return ScreenTypeLayout(
          breakpoints: ScreenBreakpoints(tablet: 760, desktop: 1380, watch: 300),
          desktop: _DetailsDesktop(detailsController: _),
          tablet: _DetailsDesktop(detailsController: _),
          mobile: _DetailsMobile(detailsController: _),
        );
      },
    );
  }
}
