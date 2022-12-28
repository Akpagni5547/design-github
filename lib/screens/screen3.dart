import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 5),
            child: const Icon(
              CupertinoIcons.heart,
              color: Colors.black,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xfff8874b), Color(0xfff75c64)]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height / 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        '2 items',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '\$',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            '19.24',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                        child: const Icon(
                          Icons.shop_2,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.35,
            width: double.maxFinite,
            padding: const EdgeInsets.only(left: 15),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.blue,
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: const Text(
                    'Grilled Beef Steak with Sauce ABC',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      'By Resto Parmato Bapo',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 10,
                              top: 30,
                              bottom: MediaQuery.of(context).size.width / 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 3),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: const Color(0xffeceff3)),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Color(0xfff9b44d),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('4,9')
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.0,
                                        color: const Color(0xffeceff3)),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Icon(Icons.motorcycle),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('20 min')
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                // height: 100,
                                width: MediaQuery.of(context).size.width / 7,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(13),
                                      decoration: const BoxDecoration(
                                          color: Color(0xff363943),
                                          shape: BoxShape.circle),
                                      child: const Icon(Icons.add,
                                          size: 30, color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Container(
                                        padding: const EdgeInsets.all(13),
                                        decoration: const BoxDecoration(
                                            // color: Color(0xff363943),
                                            shape: BoxShape.circle),
                                        child: Transform.rotate(
                                            angle: 90 * math.pi / 180,
                                            child: const Icon(Icons.remove,
                                                size: 30,
                                                color: Colors.white))),

                                    // const Icon(Icons.add,
                                    //     color: Colors.white),
                                  ],
                                ),
                                // child: ,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                            padding: EdgeInsets.zero,
                            height: double.maxFinite,
                            width: double.maxFinite,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: -MediaQuery.of(context).size.width / 10,
                                  bottom:
                                      -MediaQuery.of(context).size.width / 6.4,
                                  child: Image.asset(
                                    'assets/images/food.png',
                                    fit: BoxFit.cover,
                                    height: MediaQuery.of(context).size.height /
                                        1.65,
                                  ),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 7,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Description',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Text(
                            "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0xffaab2b8),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
