import 'package:e_commerce/homepage.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/main.dart';
import 'shoppingCart.dart';

class ProductDetails extends StatefulWidget {
  final Product_detail_name;
  final Product_detail_new_price;
  final Product_detail_old_price;
  final Product_detail_picture;
  ProductDetails({
    this.Product_detail_name,
    this.Product_detail_new_price,
    this.Product_detail_old_price,
    this.Product_detail_picture,
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomePage())),
            child: Text("APPNAME")),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Shopping_Cart())))
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.Product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.Product_detail_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      )),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "\$${widget.Product_detail_old_price}",
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      )),
                      Expanded(
                          child: Text(
                        "\$${widget.Product_detail_new_price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Size"),
                          content: Text("Choose the size"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.black,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text("Size",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10))),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            title: Text("Qty"),
                            content: Text("Select Qty"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () => {
                                  Navigator.of(context).pop(context),
                                },
                                child: Text("close"),
                              )
                            ],
                          ));
                },
                color: Colors.white,
                textColor: Colors.black,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text("Qty",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10))),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            title: Text("Color"),
                            content: Text("Choose Color"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () => {
                                  Navigator.of(context).pop(context),
                                },
                                child: Text("close"),
                              )
                            ],
                          ));
                },
                color: Colors.white,
                textColor: Colors.black,
                elevation: .2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text("Color",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10))),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              ))
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.red,
                textColor: Colors.black,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "BUY NOW",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
              )),
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.red,
                ),
                onPressed: null,
              ),
              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: null),
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product details"),
            subtitle: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  widget.Product_detail_name,
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Brand XYZ",
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Condition",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Condition",
                ),
              )
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Similar Text",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 300,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Similar_single_prod(
          product_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Similar_single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  Similar_single_prod({
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
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
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
