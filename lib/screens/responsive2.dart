import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveScreenTwo extends StatelessWidget {
  ResponsiveScreenTwo({super.key});
  final bodyHeight = 1.sh -
      ScreenUtil().statusBarHeight -
      ScreenUtil().bottomBarHeight -
      AppBar().preferredSize.height -
      3;

  @override
  Widget build(BuildContext context) {
    print(bodyHeight);
    print(1.sh < 844.0 ? bodyHeight - 40 : 0.65.sh);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Screen 2'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            children: [
              Container(
                // color: Colors.lightGreen,
                height: 1.sh < 844.0 ? bodyHeight - 20 : 0.65.sh,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Featured',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30.sp),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 180.w,
                            child: Text(
                              'Lorems sjdnsakdas kjdasjdkjasb dkjashkjdas',
                              style: TextStyle(),
                            )),
                        ElevatedButton(
                            onPressed: (() {}), child: Text('View all'))
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Container(
                      height: 200.sm,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('List Of Foods'),
                        Text('View all'),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 100.h,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('List Of Foods'),
                        Text('View all'),
                      ],
                    ),
                    Container(
                      height: 100.h,
                      color: Colors.amber,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
