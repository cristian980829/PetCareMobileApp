import 'package:flutter/material.dart';
import 'package:pet_care_app/models/token.dart';
import 'package:pet_care_app/screen/login_screen.dart';

class HomeScreen extends StatefulWidget {
  final Token token;

  HomeScreen({required this.token});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PetCare'),
      ),
      body: _getBody(),
      drawer: _getMechanicMenu(),
    );
  }

  Widget _getBody() {
    return Container(
      margin: EdgeInsets.all(30),
      child: Center(
        child: Text(
          'Bienvenid@ ${widget.token.user.fullName}',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _getMechanicMenu() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              child: Image(
            image: AssetImage('assets/PetCareLogo.png'),
          )),
          ListTile(
            leading: Icon(Icons.star_rate_outlined),
            title: const Text('Razas'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.paste_outlined),
            title: const Text('Procedimientos'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.badge),
            title: const Text('Tipos de Documento'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.pets_outlined),
            title: const Text('Tipos de Mascotas'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: const Text('Usuarios'),
            onTap: () {},
          ),
          Divider(
            color: Colors.black,
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.face),
            title: const Text('Editar Perfil'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text('Cerras Sesión'),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
        ],
      ),
    );
  }
}
