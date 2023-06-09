import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../features/tale/TaleScreen.dart';
import '../features/talepreview/TalePreviewScreen.dart';
import '../features/talepreview/models/TalePreview.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route,Screen')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/talepreviews',
      page: TalePreviewRoute.page,
      initial: true,
    ),
    AutoRoute(
      path: '/talescreen',
      page: TaleScreenRoute.page,

    )
  ];
}
