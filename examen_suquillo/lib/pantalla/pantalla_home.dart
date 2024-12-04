import 'package:flutter/material.dart';
import 'pantalla_operaciones.dart';

class PantallaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenido"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'EDWIN FERNANDO SUQUILLO',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.teal),
            ),
            SizedBox(height: 10),
            Text(
              'Examen Práctico', // Texto agregado aquí
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.cyan),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PantallaOperaciones(),
                  ),
                );
              },
              child: Text("Ir a Operaciones"),
            ),
          ],
        ),
      ),
    );
  }
}
