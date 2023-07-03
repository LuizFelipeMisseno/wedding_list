import 'package:flutter/material.dart';

class PopularInput extends StatelessWidget {
  final String labelText;

  const PopularInput({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 350,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(), // Define o formato da caixa do input
        ),
      ),
    );
  }
}
