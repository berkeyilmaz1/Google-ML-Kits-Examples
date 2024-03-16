import 'package:image_labeling/app/app.router.dart';
import 'package:image_labeling/ui/main/main_view_model.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends MainViewModel {
  init() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        NavigationService().pushNamedAndRemoveUntil(Routes.mainView);
      },
    );
  }
}
