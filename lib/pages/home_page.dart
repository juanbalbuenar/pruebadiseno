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
        title: Text('Fractal', style: TextStyle(color: Colors.blue, fontSize: 30) ),
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      body: Stack(
        children: [
          _crearFondo(),
          Center(
            child: _crearMenu()
          )
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
          image: AssetImage('assets/mayas-fractal-blanco.png'),
          fit: BoxFit.cover
        )
      ),
    );
  }

  Widget _crearMenu() {
    return Stack(
      children: [
        _circuloCentral()
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

  Widget _circulos( String titulo, String assetname, Color color) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 140,
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ImageIcon(AssetImage(assetname), color: color, size: 65, ),
            ),
            SizedBox(height: 10),
            Text(titulo, style: TextStyle(color: Colors.blue, fontSize: 15) )
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