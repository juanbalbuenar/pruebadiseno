import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logoApp.png'),
              fit: BoxFit.fitWidth
            )
          ),
        ),
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      body: Stack(
        children: [
          _crearMenu(context)
        ],
      ),
    );
  }

  Widget _crearFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
          image: AssetImage('assets/fondoHome.png'),
          fit: BoxFit.cover
        )
      ),
    );
  }

  Widget _crearMenu(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        _crearFondo(),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _circulos('Boletas', 'assets/bill.png', Color.fromRGBO(28, 187, 155, 1), () {} ),
              SizedBox(height: 20),
              _circuloCentral(),
              SizedBox(height: 20),
              _circulos('Directorio', 'assets/directorio.png', Color.fromRGBO(230, 127, 34, 1), () {
                Navigator.pushNamed(context, 'directorio');
              } )
            ],
          ),
        ),
        Positioned(top: size.height * 0.27, left: size.width * 0.02, child: _circulos('En contacto', 'assets/iconrojo.png', Color.fromRGBO(246, 103, 112, 1), () {} ) ),
        Positioned(bottom: size.height * 0.23, left: size.width * 0.02, child: _circulos('Equipo', 'assets/team.png', Color.fromRGBO(242, 195, 17, 1), () {} ),),
        Positioned(top: size.height * 0.27, left: size.width * 0.70, child: _circulos('Desempeño', 'assets/desempeno.png', Color.fromRGBO(19, 72, 106, 1), () {} ) ),
        Positioned(bottom: size.height * 0.23, left: size.width * 0.70, child: _circulos('Vacaciones', 'assets/beach.png', Color.fromRGBO(241, 186, 77, 1), () {} ) ),
        
        
        
        
        
      ],
    );
  }

  Widget _circuloCentral() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 140,
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ImageIcon(AssetImage('assets/user.png'), color: Colors.blueAccent, size: 65, ),
            ),
            SizedBox(height: 10),
            Text('Mis datos', style: TextStyle(color: Colors.blue, fontSize: 15) )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(width: 4, color: Colors.blueAccent)
        ),
      ),
    );
  }

  Widget _circulos( String titulo, String assetname, Color color, Function function) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: 100,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ImageIcon(AssetImage(assetname), color: color, size: 40, ),
            ),
            SizedBox(height: 10),
            Text(titulo, style: TextStyle(color: color, fontSize: 12) )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(width: 4, color: color)
        ),
      ),
    );
  }
}