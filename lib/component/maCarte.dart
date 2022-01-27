import 'package:flutter/material.dart';

class MaCarte extends StatelessWidget {
  final Color couleur;
  final Widget carteChild;
  final void Function() mafonction;

  const MaCarte(this.couleur, this.carteChild,
      {this.mafonction = _dummyOnFocusChange});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: mafonction,
      child: Container(
        child: carteChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: couleur,
        ),
      ),
    );
  }

  static dynamic _dummyOnFocusChange() {}
}
