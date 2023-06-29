import 'package:flutter/material.dart';
import 'package:loginpage/pages/user_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void backToLogin() {
    setState(() {
      Navigator.pop(context);
    });
  }

  void goUserPage() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const UserProfile()),
        ),
      );
    });
  }

  void goPrenotationPage() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const Prenotation()),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () {},
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      Icons.home,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () => goPrenotationPage(),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      Icons.table_restaurant,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () {},
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      Icons.currency_bitcoin,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () => goUserPage(),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(heroTag: null, onPressed: () => backToLogin()),
    );
  }
}
