import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Add_Image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peter',
      theme: ThemeData(backgroundColor: Colors.lightBlueAccent),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Clothes",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Models found",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ],
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 25,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(

        scrollDirection: Axis.vertical,
        child: Container(

          child: Padding(
            padding: const EdgeInsets.all(45.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
/*                mainAxisAlignment: MainAxisAlignment.spaceBetween,
     */           children: [
                  Column(
                    children: const [
                      AddItem(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9cNvS8tf9V4CNOBJh036AoUUMeu6iUPkptg&usqp=CAU",
                          "pant",
                          "found",
                          " 1"),
                      SizedBox(
                        height: 20,
                      ),
                      AddItem(
                          "https://m.media-amazon.com/images/I/41H2M5AAEsL._AC_.jpg",
                          "shirt",
                          "blue",
                          "1"),
                      SizedBox(
                        height: 20,
                      ),
                      AddItem(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFVCiogBy3eMU6YFmiJvkwE7RDP4pbQ3vpPA&usqp=CAU",
                          "shirt",
                          "blue",
                          "1"),
                      SizedBox(
                        height: 20,
                      ),
                      AddItem(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlbhGnmALjIMs7X_i9dQF24AIaQ2nLRepRgw&usqp=CAU",
                          "shirt",
                          "blue",
                          "1"),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: const [
                        AddItem(
                            "https://m.media-amazon.com/images/I/41H2M5AAEsL._AC_.jpg",
                            "shirt",
                            "found",
                            " 1"),
                        SizedBox(
                          height: 20,
                        ),
                        AddItem(
                            "https://m.media-amazon.com/images/I/41H2M5AAEsL._AC_.jpg",
                            "shirt",
                            "blue",
                            "1"),
                        SizedBox(
                          height: 20,
                        ),
                        AddItem(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpp6Rl1XqCjmBukb0dYBz-K4Zz8kCjrEkNOQ&usqp=CAU",
                            "pant",
                            "blue",
                            "1"),
                        SizedBox(
                          height: 20,
                        ),
                        AddItem(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpp6Rl1XqCjmBukb0dYBz-K4Zz8kCjrEkNOQ&usqp=CAU",
                            "pant",
                            "blue",
                            "1"),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "fav"),
        ],
      ),
    );
  }
}
