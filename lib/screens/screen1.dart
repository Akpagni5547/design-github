import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_apps/screens/screen2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesFood {
  final String urlImage;
  final String title;
  final bool isSelected;
  CategoriesFood(
      {required this.urlImage, required this.title, required this.isSelected});
}

class HomeScreenOne extends StatelessWidget {
  HomeScreenOne({super.key});

  final List<Category> courses = [
    Category(color: const Color(0xffeaf9e5), title: 'Salad', urlImage: ''),
    Category(color: const Color(0xffffe8ee), title: 'Steak', urlImage: ''),
    Category(color: const Color(0xffe5edfa), title: 'Chicken', urlImage: ''),
    Category(color: const Color(0xfffeefb6), title: 'Korean', urlImage: ''),
  ];

  final List<CategoriesFood> categoriesFoods = [
    CategoriesFood(title: 'Main', urlImage: '', isSelected: true),
    CategoriesFood(title: 'Appetizer', urlImage: '', isSelected: false),
    CategoriesFood(title: 'Drinks', urlImage: '', isSelected: false),
    CategoriesFood(title: 'Dessert', urlImage: '', isSelected: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        padding: const EdgeInsets.only(top: 25).r,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xffffecd8), Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.2, 0.3]),
        ),
        child: ListView(
          padding: const EdgeInsets.only(left: 15, top: 30).r,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Bacangan, Sambit!",
                          style:
                              TextStyle(color: Colors.black, fontSize: 15.sp),
                        ),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15).r,
                  child: const CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    // backgroundImage: Image.asset(
                    //   'assets/images/food.png',
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50.h,
              child: TextFormField(
                cursorColor: const Color(0xffe5d5c2),
                decoration: const InputDecoration(
                  // enabledBorder: BorderSide.none,
                  hintText: 'What would you like to eat?',
                  hintStyle: TextStyle(color: Color(0xffa7aaae)),

                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Text(
                  'Choose Category',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 75.h,
              child: ListView.builder(
                  itemCount: categoriesFoods.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => Container(
                        margin: const EdgeInsets.only(right: 30).w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // padding: const EdgeInsets.all(1),
                              decoration: categoriesFoods[index].isSelected
                                  ? const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xfffee3b8),
                                    )
                                  : const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                              child: Image.asset(
                                'assets/images/food.png',
                                fit: BoxFit.cover,
                                height: 50.h,
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              categoriesFoods[index].title,
                              style: TextStyle(fontSize: 12.sp),
                            )
                          ],
                        ),
                      ))),
            ),
            SizedBox(
              height: 17.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Main Course',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8).w,
                  child: Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffdb684d)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              height: 0.5.sh,
              child: GridView.builder(
                padding: const EdgeInsets.only(right: 12).w,
                itemCount: courses.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 13.w,
                    mainAxisSpacing: 13.h,
                    childAspectRatio: 0.9),
                itemBuilder: ((context, index) => Container(
                      decoration: BoxDecoration(
                          color: courses[index].color,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: double.maxFinite,
                              padding: const EdgeInsets.only(left: 15),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                courses[index].title,
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              width: double.maxFinite,
                              height: double.maxFinite,
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: -70,
                                    bottom: -85,
                                    child: Container(
                                      child: Image.asset(
                                        'assets/images/food.png',
                                        fit: BoxFit.cover,
                                        height: 250,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      // height: MediaQuery.of(context).size.height / 5,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
