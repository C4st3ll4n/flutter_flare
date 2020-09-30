import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  FlareController c = new FlareControls();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Container(
            child: FlareActor("assets/coelhosouza.flr", animation: 'intro',
                callback: (str) {
              print(str);
            }, sizeFromArtboard: true, controller: c),
          ),
        ),
      ),
    );
  }
}
