import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULATEUR IMC"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MaCarte(
                    activeColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 120,
                        ),
                        Text(
                          "HOMME",
                          style: TextStyle(fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaCarte(
                    activeColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 120,
                        ),
                        Text(
                          "FEMME",
                          style: TextStyle(fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: MaCarte(activeColor, Container())),
          Expanded(
            child: Row(
              children: [
                Expanded(child: MaCarte(activeColor, Container())),
                Expanded(child: MaCarte(activeColor, Container())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MaCarte extends StatelessWidget {
  final Color couleur;
  final Widget carteChild;

  MaCarte(this.couleur, this.carteChild);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: carteChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: couleur,
      ),
    );
  }
}
