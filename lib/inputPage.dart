import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'component/maCarte.dart';
import 'component/selectGenre.dart';

const activeColor = Color(0xFF1D1E33);
const inactiveCouleur = Color(0xFF111328);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color carteHommeCouleur = inactiveCouleur;
  Color carteFemmeCouleur = inactiveCouleur;

  updateCouleur(int genre) {
    if (genre == 1 && carteHommeCouleur == inactiveCouleur) {
      carteFemmeCouleur = inactiveCouleur;
      carteHommeCouleur = activeColor;
    } else if (genre == 2 && carteFemmeCouleur == inactiveCouleur) {
      carteFemmeCouleur = activeColor;
      carteHommeCouleur = inactiveCouleur;
    } else if (genre == 1) {
      carteHommeCouleur = inactiveCouleur;
    } else if (genre == 2) {
      carteFemmeCouleur = inactiveCouleur;
    }
    ;
  }

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
                    carteHommeCouleur,
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            updateCouleur(1);
                          });
                        },
                        child: SelectGenre("Homme", FontAwesomeIcons.mars)),
                  ),
                ),
                Expanded(
                  child: MaCarte(
                      carteFemmeCouleur,
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              updateCouleur(2);
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
