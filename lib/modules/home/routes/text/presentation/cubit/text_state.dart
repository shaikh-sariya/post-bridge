part of 'text_cubit.dart';

sealed class TextState extends Equatable {
  const TextState();
}

final class TextInitial extends TextState {
  @override
  List<Object> get props => [];
}
