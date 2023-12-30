import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const spinkit = SpinKitRotatingCircle(
  color: Colors.white,
  size: 50.0,
);

class SpinLoader extends StatelessWidget {
  const SpinLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return spinkit;
  }
}
