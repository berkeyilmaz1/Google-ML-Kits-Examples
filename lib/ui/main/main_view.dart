import 'package:flutter/material.dart';
import 'package:image_labeling/common/create_bottom_nav_item.dart';
import 'package:image_labeling/ui/main/main_view_model.dart';
import 'package:stacked/stacked.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => MainViewModel(),
        onViewModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              items: [
                createNavItem(TabItem.ImageLabeling),
                createNavItem(TabItem.FaceDetection),
                createNavItem(TabItem.TextRecognition),
              ],
              onTap: (value) {
                model.setTabIndex(value);
              },
              currentIndex: model.currentTabIndex,
            ),
            backgroundColor: Colors.white,
            body: getViewForIndex(model.currentTabIndex)));
  }
}
