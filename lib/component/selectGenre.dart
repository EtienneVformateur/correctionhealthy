import 'package:flutter/material.dart';

class SelectGenre extends StatelessWidget {
  final String texte;
  final IconData icone;

  SelectGenre(this.texte, this.icone);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icone,
          size: 120,
        ),
        Text(
          texte,
          style: TextStyle(fontSize: 25),
        )
      ],
    );
  }
}
