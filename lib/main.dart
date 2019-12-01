import 'package:flutter/material.dart';

import 'model/model.dart';
import 'screens/home_screen.dart';

void main() async {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
  Future<Model> _modelFuture;

  @override
  void initState() {
    super.initState();
    _modelFuture = Model().init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Black Book',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.grey[800],
        accentColor: Colors.purpleAccent[600],

        // Define the default font family.
        fontFamily: 'Montserrat',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),

        dividerTheme: DividerThemeData(
          thickness: 1,
          space: 1,
        ),
      ),
      home: FutureBuilder<Model>(
          future: _modelFuture,
          builder: (BuildContext context, AsyncSnapshot<Model> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return HomeScreen(model: snapshot.data);
            }
            /*else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } */
            else {
              //return Text(snapshot.connectionState.toString());
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
