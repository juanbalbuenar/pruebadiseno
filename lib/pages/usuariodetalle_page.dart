import 'package:flutter/material.dart';
import 'package:fractal_mobile_flutter/models/usuario_model.dart';

class UsuarioDetalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Usuario usuario = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Center(
        child: Text(usuario.nombre)
      ),
    );
  }
}