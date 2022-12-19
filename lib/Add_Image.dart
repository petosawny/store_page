import 'package:flutter/material.dart';

class AddItem extends StatelessWidget {
  final String? imageName;

  final String? goodsName;

  final String? goodsDesc;

  final String? price;

  // ignore: use_key_in_widget_constructors
  const AddItem(this.imageName, this.goodsName, this.goodsDesc, this.price);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Image(
            image: NetworkImage(imageName!),
            height: 120,
            width: 120,
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "$goodsName",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "  $goodsDesc ",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ),
        Row(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                " $price dolar",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
                width: 70,
                child: IconButton(
                  color: Colors.red,
                    onPressed: () {}, icon: Icon(Icons.favorite_border))),
          ],
        ),
      ],
    );
  }
}
