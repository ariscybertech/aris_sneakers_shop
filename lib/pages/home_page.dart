import 'package:aris_sneakers_shop/models/shoe.dart';
import 'package:aris_sneakers_shop/widgets/background_clipper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Browse by Categories',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  height: MediaQuery.of(context).size.height / 4.15,
                  child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemCount: categoriesShoes.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipPath(
                            clipper: BackgroundClipper(),
                            child: Container(
                              color: categoriesShoes[index]
                                  .bgColor
                                  .withOpacity(0.75),
                              width: MediaQuery.of(context).size.width / 1.8,
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(
                                        '${categoriesShoes[index].imageName}',
                                        height: 130,
                                      ),
                                      Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width / 3.5,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(0.25),
                                              spreadRadius: 10,
                                              blurRadius: 30,
                                            )
                                          ]
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
