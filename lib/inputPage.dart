import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'component/maCarte.dart';
import 'component/selectGenre.dart';

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
                    SelectGenre("Homme", FontAwesomeIcons.mars),
                  ),
                ),
                Expanded(
                  child: MaCarte(activeColor,
                      SelectGenre("Femme", FontAwesomeIcons.venus)),
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
