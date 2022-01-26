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
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            genreSelectionne = Genre.Homme;
                          });
                        },
                        child: SelectGenre("Homme", FontAwesomeIcons.mars)),
                  ),
                ),
                Expanded(
                  child: MaCarte(
                      genreSelectionne == Genre.Femme
                          ? activeColor
                          : inactiveCouleur,
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              genreSelectionne = Genre.Femme;
                            });
                          },
                          child: SelectGenre("Femme", FontAwesomeIcons.venus))),
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
