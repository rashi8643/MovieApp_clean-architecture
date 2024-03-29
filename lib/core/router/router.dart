import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/feature/featue_api/domain/entity/model_entity.dart';
import 'package:movie_app/feature/featue_api/presentation/pages/homepage.dart';
import 'package:movie_app/feature/featue_api/presentation/pages/overview_page.dart';
import 'package:movie_app/feature/featue_api/presentation/pages/searchpage.dart';
import 'package:movie_app/feature/featue_api/presentation/widgets/pageview_widget.dart';
import 'package:movie_app/feature/feature_create/presentation/pages/login_page.dart';
import 'package:movie_app/feature/feature_create/presentation/pages/phone_signup_page.dart';
import 'package:movie_app/feature/feature_create/presentation/pages/pin_snakbar_page.dart';
import 'package:movie_app/feature/feature_create/presentation/pages/signup_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final _router = GoRouter(
  initialLocation: PageViewWidget.routePath,
  routes: [
    GoRoute(
      path: PageViewWidget.routePath,
      name: 'homepage',
      builder: (context, state) => PageViewWidget(),
      redirect: (context, state) {
        final user = FirebaseAuth.instance.currentUser;
        if (user == null || !user.emailVerified) {
          return MyLoginPage.routePath;
        }
        return null;
      },
    ),
    GoRoute(
      path: MyLoginPage.routePath,
      name: 'login',
      builder: (context, state) => const MyLoginPage(),
    ),
    GoRoute(
      path: SignUpPage.routePath,
      name: 'signup',
      builder: (context, state) => const SignUpPage(),
    ),
    GoRoute(
      path: PhoneSignUpPage.routePath,
      name: 'phone',
      builder: (context, state) => const PhoneSignUpPage(),
    ),
    GoRoute(
      path: SnakbarWidget.routePath,
      name: 'pincode',
      builder: (context, state) => const SnakbarWidget(),
    ),
    GoRoute(
      path: OverViewPage.routePath,
      name: 'overview',
      builder: (context, state) => OverViewPage(
        entity: state.extra as MovieEntity,
      ),
    ),
    GoRoute(
      path: SearchPage.routePath,
      name: 'search',
      builder: (context, state) => const SearchPage(),
    )
  ],
);
@riverpod
GoRouter router(RouterRef ref) {
  return _router;
}
