import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularButton extends StatelessWidget {
  final String textoBotaoPopular;
  final void Function() onPressed;
  const PopularButton(
      {super.key, required this.textoBotaoPopular, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 55,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.purple[300]),
        ),
        onPressed: () {},
        child: Text(textoBotaoPopular,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
            )),
      ),
    );
  }
}
