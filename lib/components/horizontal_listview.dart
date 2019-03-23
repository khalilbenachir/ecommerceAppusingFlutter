import 'package:flutter/material.dart';




class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
            Category(
               image_location:'assets/cats/accessories.png' ,
               image_caption:'accessories'
            ),
            Category(
                image_location:'assets/cats/dress.png' ,
                image_caption:'dress'
            ),
            Category(
                image_location:'assets/cats/formal.png' ,
                image_caption:'formal'
            ),
            Category(
                image_location:'assets/cats/informal.png' ,
                image_caption:'informal'
            ),
            Category(
                image_location:'assets/cats/jeans.png' ,
                image_caption:'jeans'
            ),
            Category(
                image_location:'assets/cats/shoe.png' ,
                image_caption:'shoe'
            ),
            Category(
                image_location:'assets/cats/tshirt.png' ,
                image_caption:'tshirt'
            ),


               /* image_location:'assets/cats/accessories.png',
                'accessories'),*/
        ],
      ),
    );
  }
}


class Category extends StatelessWidget {
  String image_location;
  String image_caption;

  Category({
    this.image_location,
    this.image_caption
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: InkWell(
        onTap: (){},
        child: Container(
            width: 100,
            child: ListTile(
            title: Image.asset(image_location,width: 130,height: 60,),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption,style: TextStyle(
                fontSize: 12
              )
              ),),
            ),
          ),
       ),

      );

  }
}

