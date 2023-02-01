part of 'animated_bloc.dart';

@immutable
abstract class AnimatedEvent {}

class ChangeContainerEvent extends AnimatedEvent {
  final int maxSize;
  final int minSize;

  ChangeContainerEvent({this.maxSize=300, this.minSize=30});

 
}
