import 'package:flutter/material.dart';
import 'package:loja_virtual_flutter/data/product_data.dart';
import 'package:loja_virtual_flutter/screens/details_product.dart';
import 'package:loja_virtual_flutter/screens/products_screen.dart';

class ProductTile extends StatelessWidget {

  final String type;
  final ProductData product;

  ProductTile(this.type, this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>DetailsProduct(product))
        );
      },
      child: Card(
        child: type == "GRID" ?
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.8,
              child: Image.network(
                product.foto[0],
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
                child: Container(
                padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(product.titulo,
                          style: TextStyle(
                              fontWeight: FontWeight.w500)),
                      Text("R\$ ${product.preco.toStringAsFixed(2)}",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)
                      ),
                    ],
                  ),
                ),
            ),
          ],
        ) : Row(
          children: <Widget> [
            Flexible(flex: 1, child: Image.network(product.foto[0], fit: BoxFit.cover, height: 250.0),
            ),
            Flexible(flex: 1, child: Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(product.titulo,
                      style: TextStyle(
                          fontWeight: FontWeight.w500)),
                  Text("R\$ ${product.preco.toStringAsFixed(2)}",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)
                  ),
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
