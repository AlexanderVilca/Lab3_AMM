//Ejercicio2

import 'dart:math';

// Clase Calculadora con métodos para operaciones básicas
class Calculadora {
  double suma(double a, double b) => a + b;
  double resta(double a, double b) => a - b;
  double multiplicacion(double a, double b) => a * b;
  double division(double a, double b) {
    if (b != 0) {
      return a / b;
    } else {
      throw Exception('No se puede dividir por cero');
    }
  }
}

// Mixin para operaciones adicionales
mixin OperacionesAdicionales {
  double potencia(double base, double exponente) => pow(base, exponente).toDouble();
}

// Mixin para operaciones avanzadas
mixin OperacionesAvanzadas {
  double raizCuadrada(double numero) => sqrt(numero);
}

// Clase CalculadoraAvanzada que utiliza ambos mixins
class CalculadoraAvanzada extends Calculadora with OperacionesAdicionales, OperacionesAvanzadas {}

void main() {
  var calculadoraAvanzada = CalculadoraAvanzada();
  
  print('Suma: ${calculadoraAvanzada.suma(5, 3)}');
  print('Resta: ${calculadoraAvanzada.resta(10, 7)}');
  print('Multiplicación: ${calculadoraAvanzada.multiplicacion(4, 6)}');
  print('División: ${calculadoraAvanzada.division(15, 3)}');
  print('Potencia: ${calculadoraAvanzada.potencia(2, 3)}');
  print('Raíz cuadrada: ${calculadoraAvanzada.raizCuadrada(25)}');
}