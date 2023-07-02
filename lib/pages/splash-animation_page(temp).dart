import 'package:flutter/material.dart';
//import 'package:loginpage/pages/login_page.dart';

class SplashAnimationTest extends StatefulWidget {
  const SplashAnimationTest({super.key});
  @override
  State<SplashAnimationTest> createState() => _SplashAnimationTestState();
}

class _SplashAnimationTestState extends State<SplashAnimationTest> {
  @override
  void initState() {
    super.initState();
    _goLoginPage();
  }

  int time = 40;
  double size = 180;
  _goLoginPage() async {
    while (true) {
      for (time; time != 0; time--) {
        await Future.delayed(const Duration(milliseconds: 1), () {});
        setState(() {
          size += 0.2;
        });
      }
      for (time; time != 40; time++) {
        await Future.delayed(const Duration(milliseconds: 1), () {});
        setState(() {
          size -= 0.2;
        });
      }
    }

    /*if (!mounted) return;
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Image.asset(
                    'lib/images/Vez ring.png',
                    height: size,
                  ),
                  Image.asset(
                    'lib/images/LogoInner.png',
                    height: 190,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
                width: 50,
              ),
              const Text(
                // TODO Animation scale
                'Bella Vez',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ));
  }
}
