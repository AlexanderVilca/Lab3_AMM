// Definición de la clase Usuario
class Usuario {
  String nombre;
  String email;
  String password;
  
  Usuario(this.nombre, this.email, this.password);
}

// Definición del mixin Autenticacion
mixin Autenticacion {
  void iniciarSesion() {
    print('Sesión iniciada correctamente');
  }
}

// Clase UsuarioAutenticado que hereda de Usuario y utiliza el mixin Autenticacion
class UsuarioAutenticado extends Usuario with Autenticacion {
  UsuarioAutenticado(String nombre, String email, String password)
      : super(nombre, email, password);
}

void main() {
  var usuarioAutenticado = UsuarioAutenticado('Alexander', 'alexander@gmail.com', '123456');
  usuarioAutenticado.iniciarSesion(); 
}