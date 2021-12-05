import 'package:aris_sneakers_shop/aris/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: shoes[index].bgColor.withOpacity(0.75),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 17,
                    ),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset(
                          '${shoes[index].imageName}',
                          height: 150,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 10,
                                blurRadius: 30,
                                offset: Offset(0, 10),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      shoes[index].name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      shoes[index].price,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            );
          },
          childCount: shoes.length,
        ),
      ),
    );
  }
}
