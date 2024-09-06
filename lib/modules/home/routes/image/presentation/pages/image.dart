import 'package:cached_network_image/cached_network_image.dart';
import 'package:post_bridge/core/constants/imports.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.imageCubit;

    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          itemBuilder: (context, index) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Align(
                  child: CachedNetworkImage(
                    height: AppResponsive.isDesktop ? 600 : 300,
                    imageUrl: cubit.images[index],
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              IconButton(
                onPressed: () => Share.share(cubit.links[index]),
                icon: const Icon(Icons.share),
              ),
            ],
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: cubit.images.length,
        ),
      ),
    );
  }
}
