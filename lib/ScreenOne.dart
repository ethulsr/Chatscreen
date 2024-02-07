import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenOne extends StatelessWidget {
  ScreenOne({super.key});
  final name = 'Welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'CHAT',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('LogIn');
                },
                child: const Text('To Log In Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
