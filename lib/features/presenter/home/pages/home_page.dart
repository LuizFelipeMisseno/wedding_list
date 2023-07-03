import 'package:flutter/material.dart';
import 'package:wedding_list/core/widgets/popular_input.dart';

import '../../../../core/widgets/popular_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PopularButton(
              textoBotaoPopular: 'Botão popular',
              onPressed: () {},
            ),
            const PopularInput(
              labelText: 'Input',
            ),
          ],
        ),
      ),
    );
  }
}
