import 'package:flutter/material.dart';
class Horizontallist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
         category(
           imageloc: 'images/fashioncategories/formal.png',
           imagecaption: 'shirts',
         ),
        //  category(
        //    imageloc: 'images/fashioncategories/accessories.png',
        //    imagecaption: 'accessories',
        //  ),
         category(
           imageloc: 'images/fashioncategories/dress.png',
           imagecaption: 'dress',
         ),
         category(
           imageloc: 'images/fashioncategories/informal.png',
           imagecaption: 'informal',
         ),
         category(
           imageloc: 'images/fashioncategories/jeans.png',
           imagecaption: 'jeans',
         ),
         category(
           imageloc: 'images/fashioncategories/shoe.png',
           imagecaption: 'shoes',
         ),


        ],
      ),
    );
  }
}
class category extends StatelessWidget {
  final String imageloc;
final String imagecaption;
category({
  this.imageloc,
  this.imagecaption
  });
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(2),
    child: InkWell(
      onTap: (){},
      child: Container(
        width: 80,
        
              child: ListTile(
          title: Image.asset(imageloc,),
          
          subtitle: Text(imagecaption,style: TextStyle(fontSize: 12,),),

        ),
      ),
    ),
    );
  }
}
