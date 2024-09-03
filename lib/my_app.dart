import 'package:post_bridge/core/constants/imports.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil to provide responsive design capabilities
    return ScreenUtilInit(
      builder: (_, child) {
        // MaterialApp.router is used for a more complex routing configuration
        return MaterialApp.router(
          // App title displayed in the app switcher/task manager
          title: AppStrings.appTitle,

          // Theme configuration using AppTheme class
          theme: AppTheme.theme,

          // Router configuration using the GoRouter package
          routeInformationProvider: AppRouter.router.routeInformationProvider,
          routeInformationParser: AppRouter.router.routeInformationParser,
          routerDelegate: AppRouter.router.routerDelegate,
        );
      },
    );
  }
}
