import 'package:flutter/material.dart';
import 'package:loginpage/pages/home_page.dart';
import 'package:loginpage/pages/points_collection.dart';
import 'package:loginpage/pages/prenotation_page.dart';
import 'package:loginpage/pages/user_profile.dart';

class Index extends StatefulWidget {
  const Index({super.key});
  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
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
      appBar: AppBar(
        title: const Text('Index page (temporary)'),
        automaticallyImplyLeading: false,
      ),
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
