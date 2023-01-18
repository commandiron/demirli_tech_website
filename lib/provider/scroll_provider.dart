import 'package:flutter/cupertino.dart';

import '../configs/app_size.dart';

class ScrollProvider extends ChangeNotifier {
  final _scrollController = ScrollController();

  ScrollController get controller => _scrollController;

  double get offset {
    return _scrollController.offset;
  }

  void addOffsetListener(Function(double offset) listener) {
    controller.addListener(() {
      listener(_scrollController.offset);
    });
  }

  scrollDesktop(int index) {
    double offset =
    index == 0
      ? 0
      : index == 1
        ? AppSize.homeSectionHeight! - AppSize.navBarSize!
        : index == 2
          ? AppSize.homeSectionHeight! + AppSize.productsSectionHeight! - AppSize.navBarSize!
          : index == 3
            ? AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight! - AppSize.navBarSize!
            : index == 4
              ? AppSize.homeSectionHeight! + AppSize.productsSectionHeight! + AppSize.servicesSectionHeight! + AppSize.aboutSectionHeight! - AppSize.navBarSize!
              : 0;
    controller.animateTo(
      offset,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
