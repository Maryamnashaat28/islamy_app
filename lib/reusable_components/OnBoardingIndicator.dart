import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class OnBoardingIndicator extends StatelessWidget {
  bool active ;
   OnBoardingIndicator({super.key,required this.active});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: Duration(milliseconds: 250),
      width: active ? context.w(15): context.w(5),
      height: active ? context.w(6): context.w(5),
      decoration: BoxDecoration(
        color: active? Theme.of(context).colorScheme.primary : Color(0xff666666),
        borderRadius:  BorderRadiusGeometry.circular(active?context.r(10):context.r(35)),

      ),
    );
  }
}
