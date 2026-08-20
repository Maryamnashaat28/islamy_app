import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import 'package:islamy_app/reusable_components/AppBarImage.dart';

class OnBoarding5 extends StatelessWidget {
  static const String routeName = "onboarding 5";
  const OnBoarding5({super.key});

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
            Padding(
              padding:  context.edgeInsets(all:20),
              child: Image.asset("assets/images/onboarding5.png"),
            ),
            context.verticalSpace(5),
            Text("Holy Quran Radio",style:
            Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor
            ),),
            context.verticalSpace(17),
            Text("You can listen to the Holy Quran Radio through the application for free and easily"
              ,textAlign:
            TextAlign.center,style:
            Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).primaryColor,
              fontSize: context.sp(15),
            ),)
          ],
        ),
      ),
    );
  }
}
