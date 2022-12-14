import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AdaptiveIndicator extends StatelessWidget {

  String os;
  AdaptiveIndicator({Key? key,
    required this.os,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (os=="android") {
      return const CircularProgressIndicator();
    }
    return const CupertinoActivityIndicator();
  }
}
