import 'Cuenta.dart';
class Transaccion{
  Transaccion(
    [
      this.fecha,
      this.monto,
      this.cuentaDestino,
      this.cuentaOrigen
    ]
  );

  DateTime? fecha;
  int? monto;
  Cuenta? cuentaOrigen;
  Cuenta? cuentaDestino;

  
}