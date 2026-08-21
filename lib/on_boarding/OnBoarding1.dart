import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import 'package:islamy_app/reusable_components/AppBarImage.dart';

class OnBoarding1 extends StatelessWidget {
  static const String routeName = "onboarding 1";
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      body: Padding(
        padding:  context.edgeInsets(all: 12),
        child: Column(
          children: [
            //Spacer(),
             Expanded(
               child: Image.asset("assets/images/onboarding1.png",
                 fit: BoxFit.contain,
                 ),
             ),
            context.verticalSpace(50),
           // Spacer(flex: 4,),
           Transform.translate(
             offset: Offset(0, -50),
               child: Text("Welcome To Islmi App",style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).primaryColor),)),



          ],
        ),
      ),
    );
  }
}
