import 'package:flutter/material.dart';
import 'package:image_labeling/ui/face_detection/face_detection_view.dart';
import 'package:image_labeling/ui/image_labeling/image_labeling_view.dart';
import 'package:image_labeling/ui/text_recognition/text_recognition_view.dart';

class TabItemData {
  String title;
  Widget icon;

  TabItemData({required this.title, required this.icon});
  static Map<TabItem, TabItemData> tabs = {
    TabItem.ImageLabeling:
        TabItemData(title: "Image Labeling", icon: const Icon(Icons.image)),
    TabItem.FaceDetection:
        TabItemData(title: "Face Detection", icon: const Icon(Icons.face)),
    TabItem.TextRecognition: TabItemData(
        title: "Text Recognition", icon: const Icon(Icons.text_fields)),
  };
}

BottomNavigationBarItem createNavItem(TabItem tabItem) {
  final currentTab = TabItemData.tabs[tabItem];
  return BottomNavigationBarItem(
      icon: currentTab!.icon, label: currentTab.title);
}

// ignore: constant_identifier_names
enum TabItem { ImageLabeling, FaceDetection, TextRecognition }

Widget getViewForIndex(int index) {
  switch (index) {
    case 0:
      return const ImageLabelingView();
    case 1:
      return const FaceDetectionView();
    case 2:
      return const TextRecognitionView();
    default:
      return Container();
  }
}
