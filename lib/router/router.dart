import 'package:admin_dashboard/router/admin_handlers.dart';
import 'package:admin_dashboard/router/dashboard_handlers.dart';
import 'package:admin_dashboard/router/no_page_found_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static String rootRoute = '/';
  // Auht Router
  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';

  // DashBoard
  static String dashboardRoute = '/dashboard';
  static String iconsRoute = '/dashboard/icons';
  static String blankRoute = '/dashboard/blank';

  static void configureRoutes() {
    // Auth Routes
    router.define(rootRoute,
        handler: AdminHandlers.login, transitionType: TransitionType.none);
    router.define(loginRoute,
        handler: AdminHandlers.login, transitionType: TransitionType.none);
    router.define(registerRoute,
        handler: AdminHandlers.register, transitionType: TransitionType.none);

    // Dashboard
    router.define(dashboardRoute,
        handler: DashBoardHandlers.dashboard,
        transitionType: TransitionType.fadeIn);
    router.define(iconsRoute,
        handler: DashBoardHandlers.icons,
        transitionType: TransitionType.fadeIn);
    router.define(blankRoute,
        handler: DashBoardHandlers.blank,
        transitionType: TransitionType.fadeIn);
    // 404 Route
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}
