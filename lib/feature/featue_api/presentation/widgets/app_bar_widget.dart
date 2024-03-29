import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/constants/login_constans.dart';
import 'package:movie_app/core/theme/app_theme.dart';
import 'package:movie_app/feature/featue_api/presentation/pages/searchpage.dart';
import 'package:movie_app/feature/feature_create/presentation/provider/auth_provaider.dart';

class AppBarWidget extends ConsumerWidget {
  final String title;
  const AppBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = AppTheme.of(context).colors;
    final space = AppTheme.of(context).spaces;
    final data = ref.watch(loginConstansProvider);
    final typography = AppTheme.of(context).typography;
    return AppBar(
      backgroundColor: colors.backgroundDanger,
      centerTitle: true,
      title: Text(
        title,
        style: typography.h600.copyWith(color: colors.textSubtle),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.menu,
          size: space.space_400,
          color: colors.secondary,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            context.push(SearchPage.routePath);
          },
          icon: Icon(
            Icons.search,
            size: space.space_300,
            color: colors.secondary,
          ),
        )
      ],
    );
  }
}
