import 'package:flutter/material.dart';
import 'package:e_commerce/cart_products.dart';


class Shopping_Cart extends StatefulWidget {
  @override
  _Shopping_CartState createState() => _Shopping_CartState();
}

class _Shopping_CartState extends State<Shopping_Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Shopping Cart"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
              title: Text("Total:"),
              subtitle: Text(("\$230")),
            )),
            Expanded(child: MaterialButton(onPressed: (){},
            child: Text("Check out",style: TextStyle(color: Colors.white),),
            color: Colors.red,
            
            )
            )

          ],
        ),
      ),
      body: Cart_Products() ,
    );
  }
}
