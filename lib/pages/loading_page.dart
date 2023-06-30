import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loginpage/pages/login_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});
  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    _goLoginPage();
  }

  int time = 7;
  _goLoginPage() async {
    for (int i = time; i != 0; i--) {
      await Future.delayed(const Duration(seconds: 1), () {});
      setState(() {
        time--;
      });
    }

    if (!mounted) return;
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              // TODO Loading animation
              'lib/images/Vez-Logo.png',
              height: 150,
            ),
            const SizedBox(
              height: 50,
              width: 50,
            ),
            Text(
              // TODO Animation scale
              'Bella Vez$time',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
