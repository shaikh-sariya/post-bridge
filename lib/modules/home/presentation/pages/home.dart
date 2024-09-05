import 'package:post_bridge/core/constants/imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final cubit = context.homeCubit;
    final textTheme = context.theme.textTheme;

    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.appTitle), centerTitle: true),
      body: SafeArea(
        child: Row(
          children: [
            Visibility(
              visible: AppResponsive.isDesktop,
              child: ValueListenableBuilder(
                valueListenable: cubit.selectedIndex,
                builder: (context, value, child) => NavigationRail(
                  selectedIndex: value,
                  labelType: NavigationRailLabelType.all,
                  selectedLabelTextStyle: textTheme.labelMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                  onDestinationSelected: (val) => cubit.onDestinationSelected(
                    context: context,
                    value: val,
                  ),
                  destinations: [
                    NavigationRailDestination(
                      selectedIcon: const Icon(Icons.text_snippet),
                      icon: const Icon(Icons.text_snippet_outlined),
                      label: Text(AppStrings.text),
                    ),
                    NavigationRailDestination(
                      selectedIcon: const Icon(Icons.videocam),
                      icon: const Icon(Icons.videocam_outlined),
                      label: Text(AppStrings.video),
                    ),
                    NavigationRailDestination(
                      selectedIcon: const Icon(Icons.image),
                      icon: const Icon(Icons.image_outlined),
                      label: Text(AppStrings.image),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: child),
          ],
        ),
      ),
      bottomNavigationBar: Visibility(
        visible: !AppResponsive.isDesktop,
        child: ValueListenableBuilder(
          valueListenable: cubit.selectedIndex,
          builder: (context, value, child) => NavigationBar(
            onDestinationSelected: (val) => cubit.onDestinationSelected(
              context: context,
              value: val,
            ),
            selectedIndex: value,
            destinations: <NavigationDestination>[
              NavigationDestination(
                selectedIcon: const Icon(Icons.text_snippet),
                icon: const Icon(Icons.text_snippet_outlined),
                label: AppStrings.text,
              ),
              NavigationDestination(
                selectedIcon: const Icon(Icons.videocam),
                icon: const Icon(Icons.videocam_outlined),
                label: AppStrings.video,
              ),
              NavigationDestination(
                selectedIcon: const Icon(Icons.image),
                icon: const Icon(Icons.image_outlined),
                label: AppStrings.image,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
