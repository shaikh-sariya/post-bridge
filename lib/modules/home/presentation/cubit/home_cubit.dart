import 'package:post_bridge/core/constants/imports.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  final selectedIndex = ValueNotifier<int>(0);

  Future<void> onDestinationSelected({
    required int value,
    required BuildContext context,
  }) async {
    selectedIndex.value = value;
    switch (value) {
      case 0:
        context.goNamed(PAGES.text.screenName);
      case 1:
        context.goNamed(PAGES.video.screenName);
      case 2:
        context.goNamed(PAGES.image.screenName);
    }
  }
}
