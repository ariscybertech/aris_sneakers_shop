import 'package:aris_sneakers_shop/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeGrid extends StatelessWidget {
  const ShoeGrid({Key key, this.shoes}) : super(key: key);
  final List<Shoe> shoes;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.72,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: shoes[index].bgColor.withOpacity(0.75),
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset('${shoes[index].imageName}'),
                    ],
                  )
                ],
              ),
            );
          },
          childCount: shoes.length,
        ),
      ),
    );
  }
}
