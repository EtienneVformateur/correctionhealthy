import 'package:flutter/material.dart';

void main() {
  runApp(const IMCApp());
}

const activeColor = Color(0xFF1D1E33);

class IMCApp extends StatelessWidget {
  const IMCApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(color: Color(0xFF0A0E21)),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
      ),
    );
  }
}

// primaryColor  à la couleur du background, appBarTheme color: Color(0xFF0A0E21) pour la appBar du dribble., scaffoldBackgroundColor à la couleur du background,  textTheme en blanc et floatingActionButtonTheme:
// FloatingActionButtonThemeData(backgroundColor: Colors.purple)
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
        title: Text("Calculateur IMC"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MaCarte(activeColor),
                ),
                Expanded(child: MaCarte(activeColor)),
              ],
            ),
          ),
          Expanded(child: MaCarte(activeColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: MaCarte(activeColor)),
                Expanded(child: MaCarte(activeColor)),
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

  MaCarte(this.couleur);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: couleur,
      ),
    );
  }
}
