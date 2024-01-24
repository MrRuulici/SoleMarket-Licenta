import 'package:flutter/material.dart';


class SneakerListScreen extends StatefulWidget {
  const SneakerListScreen({super.key});

  @override
  State<SneakerListScreen> createState() => _SneakerListScreenState();
}

class _SneakerListScreenState extends State<SneakerListScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Sneakers Screen',
      style: TextStyle(fontSize: 30),
    ));
  }
}
