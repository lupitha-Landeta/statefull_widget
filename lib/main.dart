import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MiStateFull(),
    debugShowCheckedModeBanner: false,
  ));
}

class MiStateFull extends StatefulWidget {
  @override
  _MiStateFullState createState() => _MiStateFullState();
}

class _MiStateFullState extends State<MiStateFull> {
  String textoMostrar = "";
  int index = 0;
  List<String> collections = [
    'Fluter',
    'es',
    'Genial',
    'Amo',
    ' Y Me',
    'Divierto'
  ];

  void onPressButton() {
    setState(() {
      textoMostrar = collections[index];
      index = index < 5 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFul Widget'),
        backgroundColor: Colors.lime,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                textoMostrar,
                style: TextStyle(fontSize: 50.0),
              ),
              RaisedButton(
                onPressed: onPressButton,
                child: Text(
                  'Actualizar',
                  style: TextStyle(fontSize: 30.0, color: Colors.green),
                ),
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
