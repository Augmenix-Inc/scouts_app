import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var tabid = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150.0,
            width: 190.0,
            padding: const EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
            ),
            child: const Center(
              child: Text(
                  "Image Goes here"), // Image.asset('asset/images/flutter-logo.png'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'test@test.com'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'MyVerySafePassword'),
            ),
          ),
          Row(
            children: [
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text('Sign Up'),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text('Forgot Password'),
              ),
              const Spacer()
            ],
          ),
          ElevatedButton(
            child: Padding(
              child: Text('Sign In'),
              padding: EdgeInsets.only(left: 25, right: 25),
            ),
            //print hi
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
