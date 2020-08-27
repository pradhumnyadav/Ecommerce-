import 'package:e_commerce/horizontal_listview.dart';
import 'package:e_commerce/pages/shoppingCart.dart';
import 'package:e_commerce/products.dart';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 300,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage("images/batman.jpg"),
          AssetImage("images/deadpool.jpg"),
          AssetImage("images/hulk.jpg"),
          AssetImage("images/ironman.jpg"),
          AssetImage("images/joker.jpg"),
          AssetImage("images/spiderman.jpg"),
          AssetImage("images/thor.jpg"),
          AssetImage("images/wolverine.jpg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 5,
        indicatorBgPadding: 2,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("APPNAME"),
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Pradhumn"),
              accountEmail: Text("Pradhumn@email.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                backgroundBlendMode: BlendMode.difference,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("HomePage"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("My Account"),
              ),
            ),
            InkWell(
               onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Shopping_Cart())),
              child: ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text("Orders"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.category),
                title: Text("Categories"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favourite"),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.blue,
                ),
                title: Text("About"),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          image_carousel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Categories"),
          ),
          Horizontallist(),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text("Recent Products"),
          ),

         Flexible(child: Products()),
         
        ],
      ),
    );
  }
}
