import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import 'package:islamy_app/reusable_components/AppBarImage.dart';

class OnBoarding4 extends StatelessWidget {
  static const String routeName = "onboarding 4";
  const OnBoarding4({super.key});

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
            Expanded(child: Image.asset("assets/images/onboarding4.png",fit: BoxFit.contain,)),
            context.verticalSpace(15),
            Text("Bearish",style:
            Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor
            ),),
            context.verticalSpace(17),
            Text("Praise the name of your Lord, the Most High",textAlign:
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
