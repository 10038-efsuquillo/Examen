import 'package:flutter/material.dart';
import '../logica/logica_operaciones.dart';

class PantallaOperaciones extends StatefulWidget {
  @override
  _PantallaOperacionesState createState() => _PantallaOperacionesState();
}

class _PantallaOperacionesState extends State<PantallaOperaciones> {
  final TextEditingController _controllerX = TextEditingController();
  final TextEditingController _controllerY = TextEditingController();
  String _resultado = '';

  void _realizarOperaciones() {
    int x = int.parse(_controllerX.text);
    int y = int.parse(_controllerY.text);
    String resultado = realizarOperaciones(x, y);
    setState(() {
      _resultado = resultado;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operaciones Aritméticas"),
      ),
      body: Container(
        color: Colors.grey, // Puedes ajustar el tono de gris con otros valores
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[

            // Campo para el número X
            TextField(
              controller: _controllerX,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.numbers,
                  color: Colors.white,
                ),
                labelText: 'Ingresa un número (X)',
                labelStyle: TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.teal.withOpacity(0.23),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),

            // Campo para el número Y
            TextField(
              controller: _controllerY,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.numbers,
                  color: Colors.white,
                ),
                labelText: 'Ingresa otro número (Y)',
                labelStyle: TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.teal.withOpacity(0.23),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),

            // Botón operaciones
            ElevatedButton(
              onPressed: _realizarOperaciones,
              child: Text("Realizar Operaciones"),
            ),
            SizedBox(height: 20),

            // Resultado peraciones
            Text(
              _resultado,
              style: TextStyle(fontSize: 18, color: Colors.white60),
            ),
          ],
        ),
      ),
    );
  }
}
