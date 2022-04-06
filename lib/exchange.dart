import 'package:flutter/material.dart';

class Exchange extends StatefulWidget {
  const Exchange({Key? key}) : super(key: key);

  @override
  State<Exchange> createState() => _ExchangeState();
}

class _ExchangeState extends State<Exchange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exchange Page')),
      body: const Center(
        child: Text(
          'Exchange Page',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
