import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_bloc/bloc/animated_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AnimatedBloc _animatedBloc = AnimatedBloc();
  int _width = 100;
  int _height = 100;
  String _text = "bek";
  Color _colorText = Colors.red;
  Color _colorContainer = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: BlocBuilder<AnimatedBloc, AnimatedState>(
          bloc: _animatedBloc,
          builder: (context, state) {
            if (state is ChangeContainerState) {
              return AnimatedContainer(
                height: state.height.toDouble(),
                width: state.width.toDouble(),
                duration: Duration(seconds: 1),
               color: state.colorContainer,
                alignment: Alignment.center,
                child: Text(
                  state.text,
                  style: TextStyle(color: state.colorText),
                ),
              );
            }
            return AnimatedContainer(
              height: _height.toDouble(),
              width: _width.toDouble(),
              duration: Duration(seconds: 2),
              decoration: BoxDecoration(color: _colorContainer),
              alignment: Alignment.center,
              child: Text(
                _text,
                style: TextStyle(color: _colorText),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _animatedBloc.add(ChangeContainerEvent(
              height: _height,
              width: _width,
              text: _text,
              colorText: _colorText,
              colorContainer: _colorContainer));
          print(_height);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
