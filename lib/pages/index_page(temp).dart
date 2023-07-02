import 'package:flutter/material.dart';
import 'package:loginpage/pages/home_page.dart';
import 'package:loginpage/pages/points_page.dart';
import 'package:loginpage/pages/prenotation_page.dart';
import 'package:loginpage/pages/splash-animation_page(temp).dart';
import 'package:loginpage/pages/user_profile.dart';

class Index extends StatefulWidget {
  const Index({super.key});
  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  void goAnimTestPage() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const SplashAnimationTest()),
        ),
      );
    });
  }

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

  void goPointsPage() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const PointsPage()),
        ),
      );
    });
  }

  void goHomepage() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const HomePage()),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      // Appbar
      appBar: AppBar(
        title: const Text('Index page (temporary)'),
        automaticallyImplyLeading: false,
      ),
      // body
      body: Center(
        // Buttons
        child: SizedBox(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              // Homepage button tile
              Positioned(
                top: 0,
                left: 0,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  // Homepage Button
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () => goHomepage(),
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

              // Prenotation page button tile
              Positioned(
                top: 0,
                right: 0,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  // Prenotation page button
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

              // Points page button tile
              Positioned(
                bottom: 0,
                left: 0,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  // Point page button
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () => goPointsPage(),
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

              // User profile page button tile
              Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  // User profile button
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

      // Back button
      floatingActionButton: FloatingActionButton(
          heroTag: null, onPressed: () => goAnimTestPage()),
    );
  }
}
