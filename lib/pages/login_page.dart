import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _crearFondo(),
          SingleChildScrollView(
            child: Column(
              children: [
                _logo(),
                _crearForm(context)
              ],
            ),
          )  
        ],
      ),
    );
  }

  Widget _crearFondo() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Image(image: AssetImage('assets/fondoLogin.png',),
          fit: BoxFit.fill,
          ),
        );
  }

  //Esto sera reemplazado cuando un cliente necesite cambiar el logo
  Widget _logo() {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 100 ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
            child: Text('FRACTAL', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),)
          ),
            Container(
              child: Text('Soluciones IT', style: TextStyle(color: Colors.white, fontSize: 20))
            ),
          ],
          )    
        ],
      ),
    );
  }

  Widget _crearForm(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SafeArea(
        child: Container(
        height: 100.0,
        )
      ),
        Container(
          width: size.width * 0.85,
          margin: EdgeInsets.symmetric(vertical: 30),
          padding: EdgeInsets.symmetric(vertical: 30),
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _crearEmail(),
              _crearPassword(),
              FlatButton(
                onPressed: () {},
                splashColor: Colors.transparent,
                child: Text('¿Olvidaste tu contraseña?', style: TextStyle(color: Colors.white),)
              ),
              _crearBotonIngresar(context),
              Row(
                children: [
                  Expanded(
                  child: Container(
                  margin: const EdgeInsets.only(left: 100.0, right: 10.0),
                  child: Divider(
                    color: Colors.white,
                    height: 50,
                      )
                    ),
                  ),
                  Text('o', style: TextStyle(color: Colors.white) ),
                 Expanded(
                  child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 100.0),
                  child: Divider(
                    color: Colors.white,
                    height: 50,
                      )
                    ),
                  ),
                ],
              ),
              Container(
                child: Center(child: Text('ingresa con tu huella digital', style: TextStyle(color: Colors.white) ) )
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/fingerprint.png')
                    )
                  )
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _crearEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.white),
          icon: Icon(Icons.perm_identity, color: Colors.white),
          hintText: 'Usuario',
          enabledBorder: UnderlineInputBorder(      
            borderSide: BorderSide(color: Colors.white),   
            ),
          focusedBorder: UnderlineInputBorder(
           borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
   Widget _crearPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.white),
          icon: Icon(Icons.vpn_key, color: Colors.white),
          hintText: 'Clave',
          enabledBorder: UnderlineInputBorder(      
            borderSide: BorderSide(color: Colors.white),   
            ),
          focusedBorder: UnderlineInputBorder(
           borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _crearBotonIngresar(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, 'home');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0)
        ),
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Center(child: Text('Ingresar', style: TextStyle(color: Colors.white) )
        ),
      ),
    );
  }
}