import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suma de dos números',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _num1Controller = TextEditingController();
  final _num2Controller = TextEditingController();
  String _resultado = '';

  void _sumarNumeros() {
    if (_num1Controller.text.isNotEmpty && _num2Controller.text.isNotEmpty) {
      double num1 = double.parse(_num1Controller.text);
      double num2 = double.parse(_num2Controller.text);
      double resultado = num1 + num2;
      setState(() {
        _resultado = 'El resultado es: $resultado';
      });
    } else {
      setState(() {
        _resultado = 'Por favor, ingresa ambos números';
      });
    }
  }

  //Resta Inicio
  void _restaNumeros() {
    if (_num1Controller.text.isNotEmpty && _num2Controller.text.isNotEmpty) {
      double num1 = double.parse(_num1Controller.text);
      double num2 = double.parse(_num2Controller.text);
      double resultado = num1 - num2;
      setState(() {
        _resultado = 'El resultado es: $resultado';
      });
    } else {
      setState(() {
        _resultado = 'Por favor, ingresa ambos números';
      });
    }
  }
  //Resta Fin

  //Division Inicio
  void _divisionNumeros() {
    if (_num1Controller.text.isNotEmpty && _num2Controller.text.isNotEmpty) {
      double num1 = double.parse(_num1Controller.text);
      double num2 = double.parse(_num2Controller.text);
      double resultado = num1 / num2;
      setState(() {
        _resultado = 'El resultado es: $resultado';
      });
    } else {
      setState(() {
        _resultado = 'Por favor, ingresa ambos números';
      });
    }
  }
  //Fin Division

  //Inicio Multiplicacion

  void _multiplicacionNumeros() {
    if (_num1Controller.text.isNotEmpty && _num2Controller.text.isNotEmpty) {
      double num1 = double.parse(_num1Controller.text);
      double num2 = double.parse(_num2Controller.text);
      double resultado = num1 * num2;
      setState(() {
        _resultado = 'El resultado es: $resultado';
      });
    } else {
      setState(() {
        _resultado = 'Por favor, ingresa ambos números';
      });
    }
  }

  //Fin Multiplicacion

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suma de dos números'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _num1Controller,
              decoration: InputDecoration(
                labelText: 'Número 1',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _num2Controller,
              decoration: InputDecoration(
                labelText: 'Número 2',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            Wrap(
              direction: Axis.vertical,
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: _sumarNumeros,
                  child: Text('Sumar'),
                ),
                ElevatedButton(
                  onPressed: _restaNumeros,
                  child: Text('Resta'),
                ),
                ElevatedButton(
                    onPressed: _divisionNumeros, child: Text('Division')),
                ElevatedButton(
                    onPressed: _multiplicacionNumeros,
                    child: Text('Multiplicacion')),
                SizedBox(height: 10),
                Text(_resultado),
              ],
            )
          ],
        ),
      ),
    );
  }
}
