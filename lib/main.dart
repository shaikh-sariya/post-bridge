import 'package:post_bridge/core/constants/imports.dart';

Future<void> main() async {
  // Perform app initialization, including configuration setup
  await AppInitializer.initialize();

  // Run the app by creating and running the root widget (MyApp)
  runApp(const MyApp());
}
