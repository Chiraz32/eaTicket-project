import 'package:flutter/material.dart';

class Paiement extends StatefulWidget {
  const Paiement({Key? key}) : super(key: key);

  @override
  State<Paiement> createState() => _PaiementState();
}

class _PaiementState extends State<Paiement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Paiement Page')),
      body: const Center(
        child: Text(
          'Paiement Page',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
