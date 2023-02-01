part of 'animated_bloc.dart';

@immutable
abstract class AnimatedState {}

class AnimatedInitial extends AnimatedState {}

class ChangeContainerState extends AnimatedState {
  
    

  final int height;
  final int width;
 
      
   final String text;
   final Color colorText;
   final Color colorContainer;


  ChangeContainerState({
    required this.colorText,
    required this.colorContainer,
    required this.height,
    required this.width,
    required this.text,
  });
}
