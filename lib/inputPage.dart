import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'component/maCarte.dart';
import 'component/selectGenre.dart';

const activeColor = Color(0xFF1D1E33);
const inactiveCouleur = Color(0xFF111328);
enum Genre { Homme, Femme }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color carteHommeCouleur = inactiveCouleur;
  Color carteFemmeCouleur = inactiveCouleur;

  updateCouleur(Genre genre) {
    // CAS 1 : HOMME ACTIF ET FEMME DESACTIVE
    // CAS 2 : FEMME ACTIVE et Homme DESACTIVE
    // CAS 3 : HOMME et FEMME DESACTIVE

    // CAS 3.1 : CLIQUE SUR HOMME
    // CAS 3.2 : CLIQUE SUR FEMME

    // CAS 1.1 : CLIQUE SUR HOMME
    // CAS 1.2 : CLIQUE SUR FEMME

    // CAS 2.1 : CLIQUE SUR HOMME
    // CAS 2.2 : CLIQUE SUR FEMME

    genre == Genre.Homme && carteHommeCouleur == inactiveCouleur
        ? carteHommeCouleur = activeColor
        : carteHommeCouleur = inactiveCouleur;
    genre == Genre.Femme && carteFemmeCouleur == inactiveCouleur
        ? carteFemmeCouleur = activeColor
        : carteFemmeCouleur = inactiveCouleur;
    // if (genre == Genre.Homme && carteHommeCouleur == inactiveCouleur) {
    //   carteFemmeCouleur = inactiveCouleur;
    //   carteHommeCouleur = activeColor;
    // }
    // else if (genre == Genre.Femme && carteFemmeCouleur == inactiveCouleur) {
    //   carteFemmeCouleur = activeColor;
    //   carteHommeCouleur = inactiveCouleur;
    // } else if (genre == Genre.Homme) {
    //   carteHommeCouleur = inactiveCouleur;
    // } else if (genre == Genre.Femme) {
    //   carteFemmeCouleur = inactiveCouleur;
    // }
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
                            updateCouleur(Genre.Homme);
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
                              updateCouleur(Genre.Femme);
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
