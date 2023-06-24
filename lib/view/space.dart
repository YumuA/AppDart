import 'package:flutter/material.dart';

class Space extends StatefulWidget {
  const Space({super.key});

  @override
  State<StatefulWidget> createState() => _SpaceState();
}

class _SpaceState extends State<Space> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      alignment: Alignment.center,
      child: const Text('Space'),
    );
  }
}