import 'package:flutter/material.dart';

class Prenotation extends StatefulWidget {
  const Prenotation({super.key});
  @override
  State<Prenotation> createState() => _PrenotationState();
}

class _PrenotationState extends State<Prenotation> {
  void backToLogin() {
    setState(() {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Prenotation Page',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
