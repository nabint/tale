// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    TalePreviewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TalePreviewScreen(),
      );
    },
    TaleScreenRoute.name: (routeData) {
      final args = routeData.argsAs<TaleScreenRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TaleScreen(
          key: args.key,
          talePreview: args.talePreview,
        ),
      );
    },
  };
}

/// generated route for
/// [TalePreviewScreen]
class TalePreviewRoute extends PageRouteInfo<void> {
  const TalePreviewRoute({List<PageRouteInfo>? children})
      : super(
          TalePreviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'TalePreviewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TaleScreen]
class TaleScreenRoute extends PageRouteInfo<TaleScreenRouteArgs> {
  TaleScreenRoute({
    Key? key,
    required TalePreview talePreview,
    List<PageRouteInfo>? children,
  }) : super(
          TaleScreenRoute.name,
          args: TaleScreenRouteArgs(
            key: key,
            talePreview: talePreview,
          ),
          initialChildren: children,
        );

  static const String name = 'TaleScreenRoute';

  static const PageInfo<TaleScreenRouteArgs> page =
      PageInfo<TaleScreenRouteArgs>(name);
}

class TaleScreenRouteArgs {
  const TaleScreenRouteArgs({
    this.key,
    required this.talePreview,
  });

  final Key? key;

  final TalePreview talePreview;

  @override
  String toString() {
    return 'TaleScreenRouteArgs{key: $key, talePreview: $talePreview}';
  }
}
