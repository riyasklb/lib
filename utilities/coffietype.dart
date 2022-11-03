import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class typecoffee extends StatelessWidget {
  final String coffeetype;
  final bool isselected;
  const typecoffee({required this.coffeetype, required this.isselected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Text(
        coffeetype,
        style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: isselected ? Colors.orange : Colors.white),
      ),
    );
  }
}
