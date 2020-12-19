import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual_flutter/screens/products_screen.dart';

class CategoryTile extends StatelessWidget {

  final DocumentSnapshot snapshot;

  CategoryTile(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(snapshot.data["titulo"]),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){
        // Passando documento para proxima tela
        Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=>ProductsScreen(snapshot))
        );
      }
    );
  }
}
