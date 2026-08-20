import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import 'package:islamy_app/reusable_components/AppBarImage.dart';

class OnBoarding3 extends StatelessWidget {
  static const String routeName = "onboarding 3";
  const OnBoarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      appBar: AppBar(
        title: AppBarImage(),

      ),
      body: Padding(
        padding: context.edgeInsets(all:12),
        child: Column(
          children: [
            context.verticalSpace(20),
            Image.asset("assets/images/onboarding3.png",
            height: context.h(350),
            width: context.w(350),),
            Text("Reading the Quran",style:
            Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor
            ),),
            context.verticalSpace(20),
            Text("Read, and your Lord is the Most Generous",textAlign:
            TextAlign.center,style:
            Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor,
                fontSize: context.sp(16),
            ),)
          ],

        ),
      ),
    );
  }
}
