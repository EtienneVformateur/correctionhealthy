import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'component/maCarte.dart';
import 'component/selectGenre.dart';

const activeColor = Color(0xFF1D1E33);
const inactiveCouleur = Color(0xFF111328);
enum Genre { Nondefini, Homme, Femme }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Genre genreSelectionne = Genre.Nondefini;

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
                    genreSelectionne == Genre.Homme
                        ? activeColor
                        : inactiveCouleur,
                    SelectGenre("Homme", FontAwesomeIcons.mars),
                    mafonction: () => setState(() {
                      genreSelectionne = Genre.Homme;
                    }),
                  ),
                ),
                Expanded(
                  child: MaCarte(
                    genreSelectionne == Genre.Femme
                        ? activeColor
                        : inactiveCouleur,
                    SelectGenre("Femme", FontAwesomeIcons.venus),
                    mafonction: () => setState(() {
                      genreSelectionne = Genre.Femme;
                    }),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: MaCarte(inactiveCouleur, Container())),
          Expanded(
            child: Row(
              children: [
                Expanded(child: MaCarte(inactiveCouleur, Container())),
                Expanded(child: MaCarte(inactiveCouleur, Container())),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
