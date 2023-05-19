import 'package:flutter/material.dart';

class CustomPage2 extends StatelessWidget {
  const CustomPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Page 2')),
      body: const Center(
        child: Text('Conteúdo custom 2'),
      ),
    );
  }
}
