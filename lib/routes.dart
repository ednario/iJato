import 'package:routefly/routefly.dart';

import 'app/(public)/login_page.dart' as a0;
import 'app/(public)/register_page.dart' as a1;

List<RouteEntity> get routes => [
      RouteEntity(
        key: '/login',
        uri: Uri.parse('/login'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a0.LoginPage(),
        ),
      ),
      RouteEntity(
        key: '/register',
        uri: Uri.parse('/register'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a1.RegisterPage(),
        ),
      ),
    ];

const routePaths = (
  path: '/',
  login: '/login',
  register: '/register',
);
