import 'package:flutter/material.dart';

void main() {
  runApp(const TooltipDemoApp());
}

class TooltipDemoApp extends StatelessWidget {
  const TooltipDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tooltip Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const TooltipDemoPage(),
    );
  }
}

class TooltipDemoPage extends StatelessWidget {
  const TooltipDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Tooltip Demo'),
        backgroundColor: Colors.deepPurple.shade100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Task Actions',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Long-press an icon to see its Tooltip',
            ),
            const SizedBox(height: 35),

            // Property 1: message
            Tooltip(
              message: 'Edit this task',
              child: IconButton(
                icon: const Icon(Icons.edit),
                iconSize: 40,
                color: Colors.blue,
                tooltip: '',
                onPressed: () {},
              ),
            ),

            const SizedBox(height: 30),

            // Property 2: preferBelow
            Tooltip(
              message: 'Delete this task',
              preferBelow: false,
              child: IconButton(
                icon: const Icon(Icons.delete),
                iconSize: 40,
                color: Colors.red,
                tooltip: '',
                onPressed: () {},
              ),
            ),

            const SizedBox(height: 30),

            // Property 3: waitDuration
            Tooltip(
              message: 'More information',
              waitDuration: const Duration(seconds: 2),
              child: IconButton(
                icon: const Icon(Icons.info),
                iconSize: 40,
                color: Colors.deepPurple,
                tooltip: '',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}