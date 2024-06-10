import 'package:go_router/go_router.dart';

import 'package:pokemon_johcode/presentation/pages/pages.dart';
import 'package:pokemon_johcode/application/router/app_routes_enum.dart';


final appRouter = GoRouter(
  initialLocation: AppRoutesEnum.home.path,
  routes: [
    GoRoute(
      path: AppRoutesEnum.home.path,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoutesEnum.detail.path,
      builder: (context, state) {
        final name = state.pathParameters['name']!;
        final imageUrl = state.extra as String;
        return DetailPage(
          imageUrl: imageUrl,
          pokemonName: name
        );
      },
    )
  ]
);