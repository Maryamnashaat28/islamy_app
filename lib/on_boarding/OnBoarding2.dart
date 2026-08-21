import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import 'package:islamy_app/reusable_components/AppBarImage.dart';

class OnBoarding2 extends StatelessWidget {
  static const String routeName = "onboarding 2";
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      // appBar: AppBar(
      //   title: AppBarImage(),
      //
      // ),
      body: Padding(
        padding: context.edgeInsets(all:12),
        child: Column(
          children: [
             Expanded(
               child: Image.asset("assets/images/onboarding2.png",
               fit: BoxFit.contain,
                ),
             ),
           // context.verticalSpace(10),
            Text("Welcome To Islami",style:
              Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor
              ),),
            context.verticalSpace(13),
            Text("We Are Very Excited To Have You In Our Community",textAlign:
              TextAlign.center,style:
              Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor,
                fontSize: context.sp(17)
              ),)


          ],
        ),
      ),
    );
  }
}
