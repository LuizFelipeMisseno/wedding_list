import 'package:flutter/material.dart';

class PopularInput extends StatelessWidget {
  final String labelText;

  const PopularInput({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      constraints: BoxConstraints(maxWidth: 700, minWidth: 350),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              labelText,
              style: const TextStyle(
                fontFamily: 'Poppins',
                color: Colors.redAccent,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: TextFormField(
              decoration: const InputDecoration(
                  labelText: '',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.redAccent,
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.redAccent,
                  ))),
            ),
          ),
        ],
      ),
    );
  }
}
