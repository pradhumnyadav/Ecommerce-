import 'package:flutter/material.dart';
class Cart_Products extends StatefulWidget {
  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var Products_in_cart=[{
      "name": "Blazer",
      "picture": "images/fashionproducts/blazer1.jpeg",
      "size":"M",
      "color":"red",
      "quantity":1,
      "price": 85,
    },
    {
      "name": "Dress 1",
      "picture": "images/fashionproducts/dress1.jpeg",
      "size":"M",
      "color":"red",
      "quantity":1, 
      "price": 65,
    },
    
  
    {
      "name": "skirt 2",
      "picture": "images/fashionproducts/skt2.jpeg", 
      "size":"M",
      "color":"red",
      "quantity":1,
      "price": 55,
    },
    ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 3,itemBuilder: (context,index){
   return Single_Cart_Product(
     cart_prod_name:Products_in_cart[index]["name"] ,
     cart_prod_picture:Products_in_cart[index]["picture"] ,
     cart_prod_size:Products_in_cart[index]["size"] ,
     cart_prod_color:Products_in_cart[index]["color"] ,
     cart_prod_quantity:Products_in_cart[index]["quantity"] ,
     cart_prod_price:Products_in_cart[index]["price"] ,
   );
    });
  }
}

class Single_Cart_Product  extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_color;
  final cart_prod_quantity;
  final cart_prod_size;
  Single_Cart_Product({
    this.cart_prod_color,
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_quantity,
    this.cart_prod_size,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(leading: Image.asset(cart_prod_picture),
        title: Text(cart_prod_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child: Text("Size: ${cart_prod_size}"),),
                Expanded(child: Text("Color: ${cart_prod_color}"),),
                
                
              ],
            ),
            Padding(padding: EdgeInsets.all(2)),
            Container(
                  alignment: Alignment.topLeft,
                  child: Text("\$${cart_prod_price}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                )

          ],
        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
                  child: Column(
            children: <Widget>[
              IconButton(icon: Icon(Icons.arrow_drop_up,size: 60,), onPressed: null),
              Text("    ${cart_prod_quantity}",style: TextStyle(fontSize: 30),),
              IconButton(icon: Icon(Icons.arrow_drop_down,size: 60,), onPressed: null)


            ],
          ),
        ),
      ),
    );
  }
}

