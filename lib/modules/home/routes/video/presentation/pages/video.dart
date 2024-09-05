import 'package:post_bridge/core/constants/imports.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  void initState() {
    super.initState();

    final cubit = context.videoCubit
      ..controller = VideoPlayerController.networkUrl(
        Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
        ),
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
      );

    cubit.controller.addListener(() {
      setState(() {});
    });
    cubit.controller.setLooping(true);
    cubit.controller.initialize();
  }

  @override
  void dispose() {
    final cubit = context.videoCubit;
    cubit.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.videoCubit;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: AspectRatio(
            aspectRatio: cubit.controller.value.aspectRatio,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                VideoPlayer(cubit.controller),
                ControllerWidget(controller: cubit.controller),
                VideoProgressIndicator(cubit.controller, allowScrubbing: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
