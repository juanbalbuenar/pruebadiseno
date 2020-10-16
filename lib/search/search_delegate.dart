import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {

  final usuario = [
    'Juan Balbuena 1',
    'Maria Perez 1',
    'Juan Carlos Asalde 1',
    'Juan Balbuena 2',
    'Maria Perez 2 ',
    'Juan Carlos Asalde 2',
    'Juan Balbuena 3',
    'Maria Perez 3',
    'Juan Carlos Asalde 3',
    'Juan Balbuena 4',
    'Maria Perez 4',
    'Juan Carlos Asalde 4',
    'Juan Balbuena 5',
    'Maria Perez 5',
    'Juan Carlos Asalde 5',
  ];

  final usuarioReciente = [
    'Juan Balbuena 1',
    'Maria Perez 1',
  ];


  @override
  List<Widget> buildActions(BuildContext context) {
      // Las acciones de nuestro AppBar
      return [
        IconButton(
          icon: Icon(Icons.clear), 
          onPressed: () {
            query = '';
          }
        )
      ];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      // TODO: Icono a la izquierda del Appbar
      return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, 
          progress: transitionAnimation
        ), 
        onPressed: () { 
          close(context, null);
        },
      );
    }
  
    @override
    Widget buildResults(BuildContext context) {
      // TODO: Resultados que vamos a mostrar
      return Container();
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
    // Sugerencias

      final listaSugerida = ( query.isEmpty ) 
                            ? usuarioReciente
                            : usuario.where( 
                              (p)=> p.toLowerCase().startsWith(query.toLowerCase()) 
                            ).toList();

    return ListView.builder(
      itemCount: listaSugerida.length,
      itemBuilder: (context, i) {
        return ListTile(
          leading: CircleAvatar(
            child: CircleAvatar(child: Text(usuario[i].substring(0,2) ) ) 
          ),
          title: Text(listaSugerida[i]),
          onTap: () {

          },
        );
      },
    );
  }

}