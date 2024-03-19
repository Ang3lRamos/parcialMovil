import 'package:flutter/material.dart';

class MililitrosToLitros extends StatefulWidget {
  @override
  _MililitrosToLitrosState createState() => _MililitrosToLitrosState();
}

class _MililitrosToLitrosState extends State<MililitrosToLitros> {
  TextEditingController mililitrosController = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mililitros a Litros'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: mililitrosController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Mililitros',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  double? mililitros = double.tryParse(mililitrosController.text);
                  if (mililitros != null) {
                    double litros = mililitros / 1000;
                    result = '$mililitros Mililitros = $litros Litros';
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

