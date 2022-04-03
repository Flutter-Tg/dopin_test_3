import 'package:dopin_test_3/screens/dopin_detail/dopin_detail_screen.dart';
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
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const SignScreen(),
            transitionDuration: const Duration(milliseconds: 200),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              final tween = Tween(begin: begin, end: end);

              final offsetAnimation = animation.drive(tween);
              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
          ),
          routes: [
            GoRoute(
              path: 'signIn/:',
              name: 'signIn',
              pageBuilder: (context, state) => NoTransitionPage<void>(
                key: state.pageKey,
                child: const SingInScreen(),
              ),
            ),
            GoRoute(
              path: 'signUp/:',
              name: 'signUp',
              pageBuilder: (context, state) => NoTransitionPage<void>(
                key: state.pageKey,
                child: const SingUpScreen(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: 'dopin_detail/:',
          name: 'dopin_detail',
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const DopinDetailScreen(),
            transitionDuration: const Duration(milliseconds: 100),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              final tween = Tween(begin: begin, end: end);
              final offsetAnimation = animation.drive(tween);
              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
          ),
          routes: [
            // GoRoute(
            //   path: 'signIn/:',
            //   name: 'signIn',
            //   pageBuilder: (context, state) => NoTransitionPage<void>(
            //     key: state.pageKey,
            //     child: const SingInScreen(),
            //   ),
            // ),
            // GoRoute(
            //   path: 'signUp/:',
            //   name: 'signUp',
            //   pageBuilder: (context, state) => NoTransitionPage<void>(
            //     key: state.pageKey,
            //     child: const SingUpScreen(),
            //   ),
            // ),
          ],
        ),
      ],
    ),
  ],
);

// List<GetPage> appRoutes = [
//   GetPage(
//     name: '/home',
//     page: () => const HomeScreen(),
//     binding: HomeBinding(),
//   ),
//   GetPage(
//     name: '/sign',
//     page: () => const SignScreen(),
//     transition: Transition.downToUp,
//     transitionDuration: const Duration(milliseconds: 100),
//   )
// ];
