import 'package:flutter/material.dart';
import '../controller/Calculo.dart';

class PaginaPrincial extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PaginaPrincialState();
}

class PaginaPrincialState extends State<PaginaPrincial> {

  //Inicializacion
  final Calculo calculo = Calculo();
  int _numeroAleatorio = 0;
  double _numeroDisminuido = 0.0;

  //funcion de asignacion de salida
  void _calcularSalida() {
    setState(() {
      _numeroAleatorio = calculo.generarNumero();
      _numeroDisminuido = calculo.calcularDisminucion(_numeroAleatorio);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generacion y disminucion de numero'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Número aleatorio: $_numeroAleatorio',
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 10),

            Text(
              'Número disminuido en 15%: ${_numeroDisminuido.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: _calcularSalida,
              child: Text('Generar Número'),
            ),
          ],
        ),
      ),
    );
  }
}
