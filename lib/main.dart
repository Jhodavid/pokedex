import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_johcode/presentation/theme/app_theme.dart';
import 'package:pokemon_johcode/presentation/router/app_router.dart';
import 'package:pokemon_johcode/presentation/localization/app_localization.dart';



void main() {
  runApp( const ProviderScope( child: MainApp() ));
}

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref )  {
    return MaterialApp.router(
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      routerConfig: appRouter,
      theme: AppTheme().getTheme(),
    );
  }
}