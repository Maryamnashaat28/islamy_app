import 'package:flutter/material.dart';
import 'package:islamy_app/reusable_components/AppBarImage.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarImage(),
      ),
    );
  }
}
