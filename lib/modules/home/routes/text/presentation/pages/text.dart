import 'package:post_bridge/core/constants/imports.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.textCubit;

    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          itemBuilder: (context, index) => Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Text(cubit.posts[index])),
                  IconButton(
                    onPressed: () => Share.share(cubit.links[index]),
                    icon: const Icon(Icons.share),
                  ),
                ],
              ),
            ),
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: cubit.posts.length,
        ),
      ),
    );
  }
}
