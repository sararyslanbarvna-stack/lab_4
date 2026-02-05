import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: const MyHomePage(title: 'I LOVE BOSTON'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Снимок экрана 2026-02-03 в 09.13.38.png",
            ),
            Image.asset(
              "assets/images/Снимок экрана 2026-02-03 в 09.13.56.png",
            ),
            const SizedBox(height: 30),
            buildTypesButton(),
          ],
        ),
      ),
    );
  }
}

Widget buildTypesButton() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextButton(
        onPressed: () {},
        child: const Text('TextButton'),
      ),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {},
        child: const Text('ElevatedButton'),
      ),
      const SizedBox(height: 20),
      OutlinedButton(
        onPressed: () {},
        child: const Text('OutlinedButton'),
      ),
    ],
  );
}
