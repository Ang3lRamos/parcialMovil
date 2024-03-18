port 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversor de Unidades',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversor de Unidades'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menú'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Celsius a Fahrenheit'),
              onTap: () {
                Navigator.pop(context); // Cerrar el Drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => CelsiusToFahrenheitPage()));
              },
            ),
            ListTile(
              title: Text('Otra conversión'),
              onTap: () {
                Navigator.pop(context); // Cerrar el Drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => OtraConversionPage()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Pantalla principal'),
      ),
    );
  }
}

class CelsiusToFahrenheitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Celsius a Fahrenheit'),
      ),
      body: Center(
        child: Text('Pantalla de conversión Celsius a Fahrenheit'),
      ),
    );
  }
}

class OtraConversionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Otra conversión'),
      ),
      body: Center(
        child: Text('Pantalla de otra conversión'),
      ),
    );
  }
}
