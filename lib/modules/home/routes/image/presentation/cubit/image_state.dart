part of 'image_cubit.dart';

sealed class ImageState extends Equatable {
  const ImageState();
}

final class ImageInitial extends ImageState {
  @override
  List<Object> get props => [];
}
