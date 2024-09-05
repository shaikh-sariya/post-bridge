import 'package:post_bridge/core/constants/imports.dart';

part 'video_state.dart';

class VideoCubit extends Cubit<VideoState> {
  VideoCubit() : super(VideoInitial());

  late VideoPlayerController controller;
}
