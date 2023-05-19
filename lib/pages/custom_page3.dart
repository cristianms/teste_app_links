import 'package:flutter/material.dart';

class CustomPage3 extends StatelessWidget {
  const CustomPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Page 3')),
      body: const Center(
        child: Text('Conteúdo custom 3'),
      ),
    );
  }
}
