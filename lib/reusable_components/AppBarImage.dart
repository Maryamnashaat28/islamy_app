import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
class AppBarImage  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return   Image.asset(height: context.h(130),
          width: context.w(250),
          "assets/images/img_header.png"
    );
  }
}
