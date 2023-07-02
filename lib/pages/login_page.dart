import 'package:flutter/material.dart';
import 'package:loginpage/components/my_botton.dart';
import 'package:loginpage/components/my_textfields.dart';
import 'package:loginpage/components/square_tile.dart';
import 'package:loginpage/pages/index_page(temp).dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPwdShown = true;
  void _showpPwd() {
    setState(() {
      isPwdShown = !isPwdShown;
    });
  }

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // TODO sign user in methos
  void signUserIn() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: ((context) => const Index()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // logo
            Image.asset(
              'lib/images/Vez-Logo.png',
              height: 160,
            ),

            const SizedBox(height: 50),

            // welcome back
            const Text(
              'Welcome back! We\'ve been missing you!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            // username texfield
            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),

            const SizedBox(height: 25),

            //password textfield

            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: isPwdShown,
            ),

            const SizedBox(height: 10),

            //forgot password
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot your password?',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // sign in button
            MyButton(
              onTap: signUserIn,
            ),

            const SizedBox(height: 50),

            // or continue with
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ))
                ],
              ),
            ),
            const SizedBox(height: 50),

            // google + apple sign in buttons
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //google
                SquareTile(imagePath: 'lib/images/google.png'),

                SizedBox(width: 16),

                //apple
                SquareTile(imagePath: 'lib/images/apple.png'),
              ],
            )

            // not a member? register now
          ],
        ),
      )),
      //floatingActionButton: FloatingActionButton(onPressed: () => _showpPwd()),
    );
  }
}
