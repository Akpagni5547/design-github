import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final String title;
  final Color color;
  final String urlImage;
  Category({required this.color, required this.title, required this.urlImage});
}

class Product {
  final String urlImage;
  final String rating;
  final String title;
  final String price;

  Product(
      {required this.price,
      required this.urlImage,
      required this.title,
      required this.rating});
}

class HomeScreenTwo extends StatelessWidget {
  HomeScreenTwo({super.key});
  final List<Category> categories = [
    Category(color: const Color(0xffeaf9e5), title: 'Salad', urlImage: ''),
    Category(color: const Color(0xffffe8ee), title: 'Steak', urlImage: ''),
    Category(color: const Color(0xffe5edfa), title: 'Chicken', urlImage: ''),
  ];

  final List<Product> products = [
    Product(
        price: '8.00',
        urlImage: '',
        title: 'Spaghetti with Spicy Mixed Seafood',
        rating: '4.9'),
    Product(
        price: '11.00',
        urlImage: '',
        title: 'Delicious Pad thai  Food Shrimp Yahut',
        rating: '4.9')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: 0,
        selectedItemColor: const Color(0xfffd451c),
        // unselectedItemColor: Colors.grey,
        selectedFontSize: 12.0,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
                // Colors.grey
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.heart,
                color: Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Container(
                  padding: const EdgeInsets.all(7),
                  decoration: const BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),
                  child: const Icon(Icons.store_outlined)),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.grey,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
                color: Colors.grey,
              ),
              label: ''),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(left: 15, top: 30, bottom: 15),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hello Azalea 👋🏼',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "it's lunch time!",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xfff2f6fb)),
                height: MediaQuery.of(context).size.height / 9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_pin,
                          color: Color(0xfff3bd65),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Your delivery address',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  'JI. Jendral Sudirman no. 80 A. Ponorogo',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios,
                        color: Color(0xff83909d))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Category',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffdb684d)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 9,
              child: ListView.builder(
                itemBuilder: ((context, index) => Container(
                      margin: const EdgeInsets.only(right: 15),
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: categories[index].color,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              padding: const EdgeInsets.only(top: 15, left: 3),
                              height: double.maxFinite,
                              child: Text(
                                categories[index].title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              // color: Colors.green,
                              decoration: BoxDecoration(
                                  // color: Colors.amber,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(150))),
                              child: Stack(children: [
                                Positioned(
                                    left: -MediaQuery.of(context).size.height /
                                        50,
                                    top:
                                        MediaQuery.of(context).size.height / 70,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(15)),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            // color: Colors.amber,
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(150))),
                                        child: Image.asset(
                                          'assets/images/food.png',
                                          fit: BoxFit.cover,
                                          height: 120,
                                        ),
                                      ),
                                    ))
                              ]),
                            ),
                          )
                        ],
                      ),
                    )),
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Nearby Food',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffdb684d)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Icon(
                  Icons.location_pin,
                  color: Color(0xff9d9eae),
                  size: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Bancangan, Sambit',
                  style: TextStyle(color: Color(0xff9d9eae)),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.7,
              color: const Color(0xffeef1f3),
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.only(right: 15),
                      width: MediaQuery.of(context).size.width / 2,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Stack(children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image.asset(
                                  'assets/images/food.jpeg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 15),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black.withAlpha(80),
                                      borderRadius: BorderRadius.circular(5)),
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        size: 17,
                                        color: Color(0xfff8b34b),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        products[index].rating,
                                        style: const TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ]),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 10),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      products[index].title,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            '\$',
                                            style: TextStyle(
                                                color: Color(0xffe1917e)),
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            products[index].price,
                                            style: const TextStyle(
                                                // color: Color(0xffe1917e),
                                                // fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      const Icon(CupertinoIcons.heart)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
