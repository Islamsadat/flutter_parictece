import 'package:flutter/material.dart';

class SafetyCounterScreen extends StatefulWidget {
  const SafetyCounterScreen({super.key});

  @override
  State<SafetyCounterScreen> createState() => _SafetyCounterScreenState();
}

class _SafetyCounterScreenState extends State<SafetyCounterScreen> {
  int _counter = 0;


  Color get _counterColor {
    if (_counter <= 10) return Colors.green;
    if (_counter <= 15)
      return Colors.yellow[700]!; 
    return Colors.red;
  }

  String get _statusText {
    if (_counter <= 10) return 'Safe / Normal';
    if (_counter <= 15) return 'Warning / High';
    return 'Danger / Maximum';
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Safety Counter'),
        backgroundColor: _counterColor,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _statusText,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: _counterColor,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: _counterColor,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Reset Button
                OutlinedButton.icon(
                  onPressed: _reset,
                  icon: const Icon(Icons.refresh),
                  label: const Text('Reset'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.grey[700],
                  ),
                ),
                const SizedBox(width: 20),
                // Increment Button
                ElevatedButton.icon(
                  onPressed: _increment,
                  icon: const Icon(Icons.add),
                  label: const Text('Increment'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _counterColor,
                    foregroundColor:
                        _counterColor == Colors.yellow[700]
                            ? Colors.black
                            : Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
