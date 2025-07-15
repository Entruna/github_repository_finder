import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_repository_finder/dependency_injection.dart';
import 'package:github_repository_finder/presentation/bloc/search_cubit.dart';
import 'package:github_repository_finder/presentation/routes.dart';
import 'package:github_repository_finder/presentation/screens/search_screen.dart';
import 'package:github_repository_finder/style/app_theme.dart';

void main() {
  ///Dependency injection set up
  setupInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GitHub Repository Finder',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.search,
      routes: {AppRoutes.search: (context) => BlocProvider(create: (_) => getIt<SearchCubit>(), child: SearchScreen())},
    );
  }
}
