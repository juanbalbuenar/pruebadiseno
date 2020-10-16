import 'package:flutter/material.dart';

import 'package:fractal_mobile_flutter/models/usuario_model.dart';
import 'package:fractal_mobile_flutter/search/search_delegate.dart';

class DirectorioPage extends StatefulWidget {
  @override
  _DirectorioPageState createState() => _DirectorioPageState();
}

class _DirectorioPageState extends State<DirectorioPage> {

  //Lista estatica, borrar cuando se obtenga la lista desde la BD
  final usuario = [
    Usuario(nombre: 'Juan Balbuena', puesto: 'Desarrollador', image: 'https://image.freepik.com/vector-gratis/perfil-avatar-hombre-icono-redondo_24640-14044.jpg'),
    Usuario(nombre: 'Maria Perez', puesto: 'Ventas'),
    Usuario(nombre: 'Juan Carlos Asalde', puesto: 'Diseñador', image: 'https://i.pinimg.com/originals/19/87/90/198790eb7e08830027c1ae1686496c72.png'),
    Usuario(nombre: 'Juan Balbuena', puesto: 'Desarrollador', image: 'https://image.freepik.com/vector-gratis/perfil-avatar-hombre-icono-redondo_24640-14044.jpg'),
    Usuario(nombre: 'Maria Perez', puesto: 'Ventas'),
    Usuario(nombre: 'Juan Carlos Asalde', puesto: 'Diseñador', image: 'https://i.pinimg.com/originals/19/87/90/198790eb7e08830027c1ae1686496c72.png'),
    Usuario(nombre: 'Juan Balbuena', puesto: 'Desarrollador', image: 'https://image.freepik.com/vector-gratis/perfil-avatar-hombre-icono-redondo_24640-14044.jpg'),
    Usuario(nombre: 'Maria Perez', puesto: 'Ventas'),
    Usuario(nombre: 'Juan Carlos Asalde', puesto: 'Diseñador', image: 'https://i.pinimg.com/originals/19/87/90/198790eb7e08830027c1ae1686496c72.png'),
    Usuario(nombre: 'Juan Balbuena', puesto: 'Desarrollador', image: 'https://image.freepik.com/vector-gratis/perfil-avatar-hombre-icono-redondo_24640-14044.jpg'),
    Usuario(nombre: 'Maria Perez', puesto: 'Ventas'),
    Usuario(nombre: 'Juan Carlos Asalde', puesto: 'Diseñador', image: 'https://i.pinimg.com/originals/19/87/90/198790eb7e08830027c1ae1686496c72.png'),
    Usuario(nombre: 'Juan Balbuena', puesto: 'Desarrollador', image: 'https://image.freepik.com/vector-gratis/perfil-avatar-hombre-icono-redondo_24640-14044.jpg'),
    Usuario(nombre: 'Maria Perez', puesto: 'Ventas'),
    Usuario(nombre: 'Juan Carlos Asalde', puesto: 'Diseñador', image: 'https://i.pinimg.com/originals/19/87/90/198790eb7e08830027c1ae1686496c72.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Directorio'),
        actions: [
          IconButton(
            icon: Icon(Icons.search), 
            onPressed: () {
              showSearch(context: context, delegate: DataSearch() );
            }
          )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (_, i) => usuarioListTile(usuario[i]), 
        separatorBuilder: (_, i) => Divider(), 
        itemCount: usuario.length
      ),
    );
  }

  ListTile usuarioListTile(Usuario usuario) {
    return ListTile(
        onTap: () {
          print(usuario.nombre);
          Navigator.pushNamed(context, 'detalle', arguments: usuario);
        },
        title: Text(usuario.nombre),
        subtitle: Text(usuario.puesto),
        leading: CircleAvatar(
          child: usuario.image == null ? CircleAvatar(child: Text(usuario.nombre.substring(0,2) ) ) : Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: NetworkImage(usuario.image),
              )
            )
          ) 
        ),
      );
  }
}