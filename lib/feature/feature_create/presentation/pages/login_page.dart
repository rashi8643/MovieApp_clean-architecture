import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/constants/login_constans.dart';
import 'package:movie_app/core/theme/app_theme.dart';
import 'package:movie_app/feature/feature_create/presentation/widgets/google_container_widget.dart';
import 'package:movie_app/feature/feature_create/presentation/widgets/login_button_widget.dart';
import 'package:movie_app/feature/feature_create/presentation/widgets/login_widgets/shape_login_widget.dart';
import 'package:movie_app/feature/feature_create/presentation/widgets/login_widgets/shape_loginback_widget.dart';

class MyLoginPage extends ConsumerWidget {
  static const routePath = '/login';
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = AppTheme.of(context).colors;
    final space = AppTheme.of(context).spaces;
    final textStyle = AppTheme.of(context).typography;
    final data = ref.watch(loginConstansProvider);
    return Scaffold(
      backgroundColor: colors.primary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: space.space_500,
            ),
            Text(
              data.welcomeText,
              style: textStyle.h800.copyWith(color: colors.text),
            ),
            Text(
              data.loginAccount,
              style: textStyle.h500.copyWith(color: colors.text),
            ),
            SizedBox(
              height: space.space_500,
            ),
            const Stack(
              alignment: Alignment.center,
              children: [
                ShapeWidgetRight(),
                ShapeWidget(),
              ],
            ),
            SizedBox(
              height: space.space_500,
            ),
            Text(
              data.signUpWith,
              style: textStyle.h500.copyWith(color: colors.text),
            ),
            const GoogleContainerWidget(),
          ],
        ),
      ),
    );
  }
}
