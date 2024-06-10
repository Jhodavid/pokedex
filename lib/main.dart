import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pokemon_johcode/application/router/app_router.dart';
import 'package:pokemon_johcode/application/localization/app_localization.dart';

import 'package:pokemon_johcode/infrastructure/clients/poke_api_graphql_client.dart';

import 'package:pokemon_johcode/presentation/theme/app_theme.dart';


void main() async {
  await initHiveForFlutter();
  PokeAPIGraphQLClient.initClient();

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