import 'package:aris_sneakers_shop/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeDetail extends StatelessWidget {
  const ShoeDetail({Key key, this.shoe}) : super(key: key);
  final Shoe shoe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  Positioned(
                    child: Container(
                      alignment: Alignment.center,
                      width: 18,
                      height: 18,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
