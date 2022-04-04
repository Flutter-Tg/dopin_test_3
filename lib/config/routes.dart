import 'package:dopin_test_3/screens/dopin_detail/dopin_detail_screen.dart';
import 'package:dopin_test_3/screens/dopin_detail/pages/dopin_manage_page/dopin_manage_page.dart';
import 'package:dopin_test_3/screens/main/main_screen.dart';
import 'package:dopin_test_3/screens/sign/sign_in/sign_in_screen.dart';
import 'package:dopin_test_3/screens/sign/sign_up/sign_up_screen.dart';
import 'package:dopin_test_3/screens/sign/sing_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter routes = GoRouter(
  initialLocation: '/home',
  routes: <GoRoute>[
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) =>
          const MainScreen(),
      routes: [
        GoRoute(
          path: 'sign/:',
          name: 'sign',
          pageBuilder: (context, state) => rightToLeftTransition(
            state,
            const SignScreen(),
          ),
          routes: [
            GoRoute(
              path: 'signIn/:',
              name: 'signIn',
              pageBuilder: (context, state) => noTransition(
                state,
                const SingInScreen(),
              ),
            ),
            GoRoute(
              path: 'signUp/:',
              name: 'signUp',
              pageBuilder: (context, state) => noTransition(
                state,
                const SingUpScreen(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: 'dopin_detail/:',
          name: 'dopin_detail',
          pageBuilder: (context, state) => rightToLeftTransition(
            state,
            const DopinDetailScreen(),
          ),
          routes: [
            GoRoute(
              path: 'dopin_manage/:',
              name: 'dopin_manage',
              pageBuilder: (context, state) => rightToLeftTransition(
                state,
                const DopinManagePage(),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);

NoTransitionPage<void> noTransition(GoRouterState state, Widget page) {
  return NoTransitionPage<void>(
    key: state.pageKey,
    child: page,
  );
}

CustomTransitionPage<void> rightToLeftTransition(
    GoRouterState state, Widget page) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: page,
    transitionDuration: const Duration(milliseconds: 100),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      final tween = Tween(begin: begin, end: end);
      final offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
