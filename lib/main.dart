import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talepreview/features/talepreview/bloc/TalePreviewBloc.dart';
import 'package:talepreview/router/router.dart';

import 'features/talepreview/bloc/states/TalePreviewState.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // Enforce Portrait Mode
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('de')],
      path: 'assets/translations',
      fallbackLocale: const Locale('de'),
      child: BlocProvider(
        create: (context) => TalePreviewBloc(TalePreviewInitial()),
        child: Main(),
      )));
}

class Main extends StatelessWidget {
  Main({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1080, 2400),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Talepreviews',
          theme: ThemeData(
            useMaterial3: true,

          ),
          
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        );
      },
    );
  }
}
