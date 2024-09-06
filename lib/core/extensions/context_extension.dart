/// File: context_extension.dart
/// Description: Extension methods for the BuildContext class.
library;

import 'package:post_bridge/core/constants/imports.dart';

/// Extension class to add utility methods to the BuildContext class.
extension ContextExtension on BuildContext {
  /// Gets the current theme from the context.
  ThemeData get theme => Theme.of(this);

  /// Gets the GoRouterState from the context.
  GoRouterState get goRouterState => GoRouterState.of(this);

  /// Gets the HomeCubit from the context.
  HomeCubit get homeCubit => read<HomeCubit>();

  /// Gets the TextCubit from the context.
  TextCubit get textCubit => read<TextCubit>();

  /// Gets the VideoCubit from the context.
  VideoCubit get videoCubit => read<VideoCubit>();

  /// Gets the ImageCubit from the context.
  ImageCubit get imageCubit => read<ImageCubit>();
}
