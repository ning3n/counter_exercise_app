import 'package:flutter/material.dart';

class CounterExercise extends StatefulWidget {
  const CounterExercise({super.key});

  @override
  State<CounterExercise> createState() => _CounterExerciseState();
}

class _CounterExerciseState extends State<CounterExercise> {
  int counter = 0;

  void sumar(){
    setState(() {
      counter++;
    });
  }

  void restar(){
    setState(() {
      counter--;
    });
  }

  void resetear(){
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Exercise App", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Text(counter.toString()),
            SizedBox(child: ElevatedButton(onPressed: sumar, child: Text("Sumar"))),
            SizedBox(child: ElevatedButton(onPressed: restar, child: Text("Restar"))),
            SizedBox(child: ElevatedButton(onPressed: resetear, child: Text("Resetear"))),
          ],
        ),
      ),
    );
  }
}