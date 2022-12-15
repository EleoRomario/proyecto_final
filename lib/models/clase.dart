class Clase {
  final String nombre;
  final String horaLimite;
  final String idProfesor;
  final List<String> alumnos;

  Clase({
    required this.nombre,
    required this.horaLimite,
    required this.idProfesor,
    required this.alumnos,
  });

  factory Clase.fromJson(Map<String, dynamic> json) {
    return Clase(
      nombre: json['nombre'],
      horaLimite: json['horaLimite'],
      idProfesor: json['idProfesor'],
      alumnos: json['alumnos'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nombre': nombre,
      'horaLimite': horaLimite,
      'idProfesor': idProfesor,
      'alumnos': alumnos,
    };
  }
}