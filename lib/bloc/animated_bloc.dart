import 'dart:math';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'animated_event.dart';
part 'animated_state.dart';

class AnimatedBloc extends Bloc<AnimatedEvent, AnimatedState> {
  AnimatedBloc() : super(AnimatedInitial()) {
    on<ChangeContainerEvent>((event, emit) {
      int height = event.height;
      int width = event.width;
      String text = event.text;
      Color colorText = event.colorText;
      Color colorContainer = event.colorContainer;
      height = event.min+Random().nextInt(event.maxHeight-event.min);
      width = event.min+Random().nextInt(event.maxWidth-event.min);
      int colorItem = Random().nextInt(event.colorArray.length);
      colorContainer = event.colorArray[colorItem];
      int textItem = Random().nextInt(event.listText.length);
      text = event.listText[textItem];
int colorItemText = Random().nextInt(event.colorArray.length);
      colorText = event.colorArray[colorItemText];
      
      emit(ChangeContainerState(
        colorText: colorText,
        colorContainer: colorContainer,
        height: height,
        width: width,
        text: text,
      ));
    });
  }
}
