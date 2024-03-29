import 'package:flutter/material.dart';
import 'celsiustofahrenheit.dart';
import 'mililitrostolitros.dart';

class NavigationPage extends StatelessWidget {
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => CelsiusToFahrenheit()));
              },
            ),
            ListTile(
              title: Text('Mililitros a litros'),
              onTap: () {
                Navigator.pop(context); // Cerrar el Drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => MililitrosToLitros()));
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
