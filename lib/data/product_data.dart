import 'package:cloud_firestore/cloud_firestore.dart';

class ProductData{

  String id;
  String categoria;
  String titulo;
  String descricao;
  double preco;
  List foto;
  List tamanho;


  ProductData.fromDocument(DocumentSnapshot snapshot){

    id = snapshot.documentID;
    titulo = snapshot.data["titulo"];
    descricao = snapshot.data["descricao"];
    preco = snapshot.data["preco"] + 0.0;
    foto = snapshot.data["foto"];
    tamanho = snapshot.data["tamanho"];

  }



}