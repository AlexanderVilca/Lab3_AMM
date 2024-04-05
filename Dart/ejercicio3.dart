//Ejercicio3

// Clase base Empleado
class Empleado {
  String nombre;
  String apellido;
  double salario;
  int horasTrabajadas;

  // Constructor de Empleado
  Empleado(this.nombre, this.apellido, this.salario, this.horasTrabajadas);
}

// Mixin Bonificaciones
mixin Bonificaciones {
  double calcularBonificacion(double salario) {
    // Se puede definir la lógica para calcular la bonificación
    // en función del salario
    return salario * 0.1; // Ejemplo de bonificación del 10%
  }
}

// Clase EmpleadoConBonificaciones que hereda de Empleado y utiliza el mixin Bonificaciones
class EmpleadoConBonificaciones extends Empleado with Bonificaciones {
  EmpleadoConBonificaciones(
      String nombre, String apellido, double salario, int horasTrabajadas)
      : super(nombre, apellido, salario, horasTrabajadas);
}

void main() {
  // Crear una lista de objetos EmpleadoConBonificaciones
  List<EmpleadoConBonificaciones> empleados = [
    EmpleadoConBonificaciones("Juan", "Perez", 2000, 40),
    EmpleadoConBonificaciones("Maria", "Gomez", 2500, 35),
    EmpleadoConBonificaciones("Pedro", "Diaz", 1800, 45)
  ];

  // Calcular y mostrar la bonificación para cada empleado
  for (var empleado in empleados) {
    var bonificacion = empleado.calcularBonificacion(empleado.salario);
    print(
        "${empleado.nombre} ${empleado.apellido}: Bonificación \$${bonificacion.toStringAsFixed(2)}");
  }
}