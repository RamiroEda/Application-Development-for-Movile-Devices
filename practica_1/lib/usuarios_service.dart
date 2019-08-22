import 'datos_prueba.dart';
import 'package:http/http.dart';

class Usuario{
  String nombre;

  Usuario(Map<dynamic, dynamic> json, String fotoUrl){
    this.nombre = json["nombre"];
    this.nombre = json["nombre"];
    this.nombre = json["nombre"];
  }
}


Future<List<Usuario>> getUsuarios() async{
  final users = [];

  return users;
}