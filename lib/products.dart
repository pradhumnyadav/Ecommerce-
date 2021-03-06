import 'package:flutter/material.dart';
import 'package:e_commerce/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/fashionproducts/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Dress 1",
      "picture": "images/fashionproducts/dress1.jpeg",
      "old_price": 120,
      "price": 65,
    },
    {
      "name": "Dress 2",
      "picture": "images/fashionproducts/dress2.jpeg",
      "old_price": 120,
      "price": 65,
    },
    {
      "name": "Heels 1",
      "picture": "images/fashionproducts/hills1.jpeg",
      "old_price": 120,
      "price": 65,
    },
    {
      "name": "Heels 2",
      "picture": "images/fashionproducts/hills2.jpeg",
      "old_price": 120,
      "price": 65,
    },
    {
      "name": "skirt 1",
      "picture": "images/fashionproducts/skt1.jpeg",
      "old_price": 120,
      "price": 65,
    },
    {
      "name": "skirt 2",
      "picture": "images/fashionproducts/skt2.jpeg",
      "old_price": 120,
      "price": 65,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          product_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  Single_prod({
    this.product_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetails(
                        Product_detail_name: product_name,
                        Product_detail_new_price: prod_price,
                        Product_detail_old_price: prod_old_price,
                        Product_detail_picture: prod_picture,
                      ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              product_name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                          Text(
                            "\$${prod_price}",
                            style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
