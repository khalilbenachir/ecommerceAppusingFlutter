import 'package:flutter/material.dart';
import 'package:e_commerce_app/pages/product_details.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var products_list = [
    {
      'name': "Man Blazer",
      'picture': "assets/products/blazer1.jpeg",
      'old_price': 120,
      'price': 80
    },
    {
      'name': "Women Blazer",
      'picture': "assets/products/blazer2.jpeg",
      'old_price': 120,
      'price': 80
    },
    {
      'name': "Red Dress",
      'picture': "assets/products/dress1.jpeg",
      'old_price': 120,
      'price': 80
    },
    {
      'name': "Black Dress",
      'picture': "assets/products/dress2.jpeg",
      'old_price': 120,
      'price': 80
    },
    {
      'name': "Hills",
      'picture': "assets/products/hills1.jpeg",
      'old_price': 120,
      'price': 80
    },
    {
      'name': "Red Hills",
      'picture': "assets/products/hills2.jpeg",
      'old_price': 120,
      'price': 80
    },
    {
      'name': "Man pants",
      'picture': "assets/products/pants1.jpg",
      'old_price': 120,
      'price': 80
    },
    {
      'name': "Sport pants",
      'picture': "assets/products/pants2.jpg",
      'old_price': 120,
      'price': 80
    },
    {
      'name': "Shoe",
      'picture': "assets/products/shoe1.jpg",
      'old_price': 120,
      'price': 80
    },
    {
      'name': "Shoe",
      'picture': "assets/products/shoe1.jpg",
      'old_price': 120,
      'price': 80
    },
    {
      'name': "Skirt",
      'picture': "assets/products/skt1.jpeg",
      'old_price': 120,
      'price': 80
    },
    {
      'name': "Skirt",
      'picture': "assets/products/skt2.jpeg",
      'old_price': 120,
      'price': 80
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: products_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
            name: products_list[index]['name'],
            picture: products_list[index]['picture'],
            old_price: products_list[index]['old_price'],
            price: products_list[index]['price'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  String name, picture;
  int old_price, price;

  Single_product({this.name, this.picture, this.old_price, this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: name,
          child: InkWell(
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProductDetails(
                    product_details_name:name,
                    product_details_picture:picture,
                    product_details_old_price:old_price,
                    product_details_price:price
                ))),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      "\$$price",
                      style: TextStyle(
                          color: Colors.redAccent, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "\$$old_price",
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                child: Image.asset(
                  picture,
                  fit: BoxFit.cover,
                )),
          )),
    );
  }
}
