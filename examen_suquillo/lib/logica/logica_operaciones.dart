String realizarOperaciones(int x, int y) {
  double divisionXY = 0.0;
  double divisionYX = 0.0;
  String resultado = '';

  resultado += "Suma: $x + $y = ${x + y}\n";
  resultado += "Resta: \n $x - $y = ${x - y}\n";
  resultado += "$y - $x = ${y - x}\n";
  resultado += "Producto: $x * $y = ${x * y}\n";

  // Verificación para evitar división por cero
  if (y != 0) {
    divisionXY = x / y;
    resultado += "División: \n $x / $y = ${divisionXY.toStringAsFixed(2)}\n";
  } else {
    resultado += "División: \n No se puede dividir por cero\n";
  }

  if (x != 0) {
    divisionYX = y / x;
    resultado += "$y / $x = ${divisionYX.toStringAsFixed(2)}\n";
  } else {
    resultado += "$y / $x = No se puede dividir por cero\n";
  }

  // Verificación para evitar módulo por cero
  if (y != 0) {
    resultado += "Módulo: \n $x % $y = ${x % y}\n";
  } else {
    resultado += "Módulo: \n No se puede realizar módulo con cero\n";
  }

  if (x != 0) {
    resultado += "$y % $x = ${y % x}\n";
  } else {
    resultado += "$y % $x = No se puede realizar módulo con cero\n";
  }

  return resultado;
}
