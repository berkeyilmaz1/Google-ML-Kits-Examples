import 'package:image_labeling/ui/main/main_view.dart';
import 'package:image_labeling/ui/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView, initial: true),
  MaterialRoute(page: MainView),
])
class App {}
