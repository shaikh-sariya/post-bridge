import 'package:post_bridge/core/constants/imports.dart';

/// Application router for handling navigation using the GoRouter library.
///
/// This class defines a static instance of GoRouter and configuration settings
/// for initial location, observers, and routes. It also includes a redirect
/// function(_authCheck) for handling authentication-related logic during
/// routing.
class AppRouter {
  // Private constructor to prevent instantiation.
  const AppRouter._();

  // Global key for accessing the root navigator state.
  static final _rootNavigator = GlobalKey<NavigatorState>(debugLabel: 'root');

  // Global key for accessing the shell navigator state.
  static final _shellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'shell');

  // Initial location for the app, pointing to the overview screen.
  static final _initialLocation = PAGES.home.screenPath;

  // Getter for accessing the GoRouter instance.
  static GoRouter get router => _router;

  // Singleton instance of GoRouter.
  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigator,
    initialLocation: _initialLocation,
    observers: [MyRouteObserver()],
    // List of routes defined for the application.
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        // Builder function for creating the HomePage and providing the
        // HomeCubit.
        builder: (context, state, child) => BlocProvider(
          create: (context) => sl<HomeCubit>(),
          child: HomePage(key: state.pageKey, child: child),
        ),
        routes: [
          GoRoute(
            path: PAGES.text.screenPath,
            name: PAGES.text.screenName,
            // Builder function for creating the MyLeadsPage and providing the
            // MyLeadsCubit.
            builder: (context, state) => const Scaffold(body: Placeholder()),
          ),
          GoRoute(
            path: PAGES.video.screenPath,
            name: PAGES.video.screenName,
            // Builder function for creating the MyLeadsPage and providing the
            // MyLeadsCubit.
            builder: (context, state) => const Scaffold(body: Placeholder()),
          ),
          GoRoute(
            path: PAGES.image.screenPath,
            name: PAGES.image.screenName,
            // Builder function for creating the MyLeadsPage and providing the
            // MyLeadsCubit.
            builder: (context, state) => const Scaffold(body: Placeholder()),
          ),
        ],
      ),
    ],
  );
}
