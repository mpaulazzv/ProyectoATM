import 'Cuenta.dart';
import 'Transaccion.dart';
class Usuario{

  Usuario(
    [this.id,
     this.name,
     this.user,
     this.psswd,
     this.documentoID,
     this.cuenta]
  );

  String? id;
  String? name;
  String? user;
  String? psswd;
  int? documentoID;
  Cuenta? cuenta;
  List<Transaccion>? l_transacciones;

}