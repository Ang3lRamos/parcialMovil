import 'package:flutter/material.dart';

class CelsiusToFahrenheit extends StatefulWidget {
  @override
  _CelsiusToFahrenheitState createState() => _CelsiusToFahrenheitState();
}

class _CelsiusToFahrenheitState extends State<CelsiusToFahrenheit> {
  TextEditingController celsiusController = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Celsius a Fahrenheit'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: celsiusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Celsius',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  double? celsius = double.tryParse(celsiusController.text);
                  if (celsius != null) {
                    double fahrenheit = (celsius * 9 / 5) + 32;
                    result = '$celsius Celsius = $fahrenheit Fahrenheit';
                  } else {
                    result = 'Ingrese un valor válido';
                  }
                });
              },
              child: Text('Convertir'),
            ),
            SizedBox(height: 20),
            Text(result),
          ],
        ),
      ),
    );
  }
}
