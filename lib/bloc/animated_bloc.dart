import 'dart:math';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:practice_bloc/models/models.dart';

part 'animated_event.dart';
part 'animated_state.dart';

class AnimatedBloc extends Bloc<AnimatedEvent, AnimatedState> {
  AnimatedBloc() : super(AnimatedInitial()) {
    on<ChangeContainerEvent>((event, emit) {
      int height = 
      (event.minSize + Random().nextInt(event.maxSize - event.minSize));
      int width = 
      (event.minSize + Random().nextInt(event.maxSize - event.minSize));

      // int height = event.height;
      // int width = event.width;
      // String text = event.text;
      // Color colorText = event.colorText;
      // Color colorContainer = event.colorContainer;
      // height = event.min + Random().nextInt(event.maxHeight - event.min);
      // width = event.min + Random().nextInt(event.maxWidth - event.min);
      // int colorItem = Random().nextInt(event.colorArray.length);
      // colorContainer = event.colorArray[colorItem];
      // int textItem = Random().nextInt(event.listText.length);
      // text = event.listText[textItem];
      // int colorItemText = Random().nextInt(state.colorArray.length);
      // colorText = state.colorArray[colorItemText];
      Color colorText = AnimatedContainermodel().colorArray[
          Random().nextInt(AnimatedContainermodel().colorArray.length)];
      Color colorContainer = AnimatedContainermodel().textColor[
          Random().nextInt(AnimatedContainermodel().textColor.length)];
      String text = AnimatedContainermodel()
          .listText[Random().nextInt(AnimatedContainermodel().listText.length)];
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
