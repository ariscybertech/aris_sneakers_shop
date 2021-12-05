import 'package:aris_sneakers_shop/aris/models/shoe.dart';
import 'package:aris_sneakers_shop/aris/widgets/shoe_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          pinned: true,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: EdgeInsets.only(left: 15),
              height: 45,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                cursorColor: Colors.grey.shade500,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500,
                    fontSize: 16,
                  ),
                  border: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.mic,
                    color: Colors.black,
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 25,
                  bottom: 15,
                ),
                child: Text(
                  'TRENDING NOW',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
        ShoeGrid(shoes: categoriesShoes)
      ],
    );
  }
}
