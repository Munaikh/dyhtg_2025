import 'package:flutter/material.dart';
 
 
class FakePage extends StatelessWidget {
  final Color color;
  final Widget? child;
  const FakePage({super.key, required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: color,
          child: Text('Fake Page'),
        ),
      ),
    );
  }
}