import 'package:flutter/material.dart';
import 'package:football_betting_flutter/state/bet_state.dart';
import 'package:football_betting_flutter/ui/bet_list_screen.dart';
import 'package:football_betting_flutter/ui_kit/_ui_kit.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: BetState().isLight,
    builder: (_, isLight, __) {
      return MaterialApp(
        title: 'Football Betting',
        theme: isLight
            ? AppTheme.lightTheme
            : AppTheme.darkTheme,
        home: const BetList(),
      );
    },
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: AppTextStyle.h1Style,
            ),

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Image.asset('assets/images/manchester2.png'),
            Icon(AppIcon.outlinedHeart, color: Theme.of(context).indicatorColor,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
