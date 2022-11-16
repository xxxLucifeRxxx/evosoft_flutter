import 'package:get/get_navigation/src/routes/get_route.dart';

import '../app/modules/confirm_phone_number/binding.dart';
import '../app/modules/confirm_phone_number/page.dart';
import '../app/modules/home/binding.dart';
import '../app/modules/home/page.dart';
import '../app/modules/login_number/binding.dart';
import '../app/modules/login_number/page.dart';
import '../app/modules/splash/binding.dart';
import '../app/modules/splash/page.dart';
import '../app/modules/view_image/binding.dart';
import '../app/modules/view_image/page.dart';

part './routes.dart';


abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.SPLASH, page:() => SplashPage(), binding: SplashBinding()),
    GetPage(name: Routes.LOGIN_NUMBER, page:() => LoginNumberPage(), binding: LoginNumberBinding()),
    GetPage(name: Routes.CONFIRMATION, page:() => ConfirmPhoneNumberPage(), binding: ConfirmPhoneNumberBinding()),
    GetPage(name: Routes.HOME, page:() => HomePage(), binding: HomeBinding()),
    GetPage(name: Routes.VIEW_IMAGE, page:() => ViewImagePage(), binding: ViewImageBinding()),
  ];
}
