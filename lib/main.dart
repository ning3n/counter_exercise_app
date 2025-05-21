import 'package:counter_exercise_app/screens/counter_exercise.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter app",
      theme: ThemeData.light(),
      home: CounterExercise(),      
    );
  }
}
