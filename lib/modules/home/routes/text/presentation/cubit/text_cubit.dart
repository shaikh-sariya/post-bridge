import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'text_state.dart';

class TextCubit extends Cubit<TextState> {
  TextCubit() : super(TextInitial());

  final posts = [
    '''
When you're working with bytes in Dart, try using Uint8List for memory and performance improvements. 💡

You'll save precious time with Uint8List, a fixed-length list of unsigned 8-bit integers.''',
    '''
🤯 When a future or stream can't handle your asynchronous operation, it's time for a Completer ↓

The #TechniqueOfTheWeek is Completers, which allow you to programmatically control the resolution of a Future. Watch the video to learn more!''',
    '''
Need space between widgets? ↔️

Use Gap to add space between widgets without keeping track of whether its parent is a Row or a Column.'''
  ];

  final links = [
    'https://youtu.be/9lhN5QXyZQc?si=2ne7u2x4Uk4yOumk',
    'https://youtu.be/N8sBC_eK7Z4?si=Atuv9mmwsOUkSHRS',
    'https://youtu.be/MqjCIITfCIA?si=HXDRTWcIOtuR6uky'
  ];
}
