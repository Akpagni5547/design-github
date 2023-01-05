import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveScreen extends StatelessWidget {
  ResponsiveScreen({super.key});
  final double heightEnPlus = ScreenUtil().statusBarHeight +
      ScreenUtil().bottomBarHeight +
      AppBar().preferredSize.height;

  @override
  Widget build(BuildContext context) {
    print(1.sh - heightEnPlus);
    return Scaffold(
      appBar: AppBar(
        title: const Text('App bar'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.r),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.r)),
              height: 1.sh - heightEnPlus - 30,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Element",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.amber,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
