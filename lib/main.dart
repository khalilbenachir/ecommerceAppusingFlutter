import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


import 'package:e_commerce_app/components/horizontal_listview.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget widget_carousel=Container(
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/c1.jpg'),
        AssetImage('assets/m1.jpeg'),
        AssetImage('assets/m2.jpg'),
        AssetImage('assets/w1.jpeg'),
        AssetImage('assets/w3.jpeg'),
        AssetImage('assets/w4.jpeg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 0.0,
      indicatorBgPadding: 0.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Shop App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,color: Colors.white),

          ),
          IconButton(
            icon: Icon(Icons.shopping_cart,color: Colors.white),

          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('benachir1996khalil@gmail.com'),
              accountName: Text('BENACHIR Khalil'),
              decoration: BoxDecoration(
                color: Colors.red,
                backgroundBlendMode: BlendMode.darken,

              ),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person,color: Colors.black12,size: 55,),
                ),
              ),


            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.redAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.account_circle,color: Colors.redAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.redAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard,color: Colors.redAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorite'),
                leading: Icon(Icons.favorite,color: Colors.redAccent,),
              ),
            ),
            Divider(height: 4,),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.redAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.redAccent,),
              ),
            ),


          ],
        ),
      ),

      body: ListView(
        children: <Widget>[
          widget_carousel,
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('Categories'),
          ),
          HorizontalListView()
        ],
      ),
    );
  }
}

