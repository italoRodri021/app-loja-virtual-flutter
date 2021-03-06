import 'package:flutter/material.dart';
import 'package:loja_virtual_flutter/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {

  final PageController pageController;
  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[
            Color.fromARGB(255, 2, 70, 255),
            Color.fromARGB(255, 0, 183, 253)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        ),
      ),
    );

    return Drawer(
      child: Stack(
        children: <Widget> [
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget> [
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                child: Stack(
                  children: [
                    Positioned(
                        top: 8.0, left: 0.0,
                      child: Text("Minha Loja", style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold, color: Colors.white)),
                    ),
                    Positioned(
                        left: 0.0,
                        bottom: 0.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Olá Mundo!", style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                            )
                          ),
                          GestureDetector(
                            child: Text("Entre ou cadastre-se", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white)),
                            onTap: (){
                              print("Botao Clicado");
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              DrawerTile(Icons.home, "Início",pageController, 0),
              DrawerTile(Icons.list, "Produtos",pageController, 1),
              DrawerTile(Icons.location_on, "Lojas",pageController, 2),
              DrawerTile(Icons.home, "Meus Pedidos",pageController, 3),
            ],
          )
        ],
      ),
    );
  }
}
