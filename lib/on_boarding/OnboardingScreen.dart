import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:islamy_app/home_screen/HomeScreen.dart';
import 'package:islamy_app/on_boarding/OnBoarding1.dart';
import 'package:islamy_app/reusable_components/AppBarImage.dart';
import 'package:islamy_app/reusable_components/OnBoardingIndicator.dart';

import 'OnBoarding2.dart';
import 'OnBoarding3.dart';
import 'OnBoarding4.dart';
import 'OnBoarding5.dart';
class OnboardingScreen  extends StatefulWidget {
  static const String routeName = "on boarding";
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      appBar: AppBar(
        title: AppBarImage(),
      ),
      body: Column(
          children: [
            Expanded(
              child: PageView(controller: _controller,
                 onPageChanged: (value){
                setState(() {
                  index = value;
                });
                 },
                 children: [
                   OnBoarding1(),
                   OnBoarding2(),
                   OnBoarding3(),
                   OnBoarding4(),
                   OnBoarding5(),
                 ],
              ),
            ),
             // SafeArea(
             //   top: false,
             //   child: Padding(
             //     padding: context.edgeInsets(bottom:  18,top: 10),
             //     child: Row(mainAxisAlignment: MainAxisAlignment.center,
             //        children: [
             //
             //          OnBoardingIndicator(active: index ==0),
             //          context.horizontalSpace(6),
             //          OnBoardingIndicator(active: index ==1),
             //          context.horizontalSpace(6),
             //          OnBoardingIndicator(active: index ==2),
             //          context.horizontalSpace(6),
             //          OnBoardingIndicator(active: index ==3),
             //          context.horizontalSpace(6),
             //          OnBoardingIndicator(active: index ==4),
             //          // context.horizontalSpace(80),
             //
             //        ],
             //      ),
             //   ),
          //   ),
            SafeArea(
              child: Stack(
                children: [
                  if (index > 0)
                    Positioned(
                      left: context.w(10),
                      bottom: context.h(5),
         // bottom: context.h(20),
                child: TextButton(onPressed: (){
                            _controller.previousPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                            }, child: Text("Back",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).primaryColor))),
              ),
            // index ==0? context.horizontalSpace(155):context.horizontalSpace(90),
                   Positioned(
                     child: Padding(
                      padding: context.edgeInsets(bottom:  18,top: 10),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          OnBoardingIndicator(active: index ==0),
                          context.horizontalSpace(6),
                          OnBoardingIndicator(active: index ==1),
                          context.horizontalSpace(6),
                          OnBoardingIndicator(active: index ==2),
                          context.horizontalSpace(6),
                          OnBoardingIndicator(active: index ==3),
                          context.horizontalSpace(6),
                          OnBoardingIndicator(active: index ==4),
                          // context.horizontalSpace(80),

                        ],
                      ),
                                       ),
                   ),
    Positioned(
  left: context.w(300),
      bottom: context.h(7),
      child: TextButton(onPressed: (){
        if(index==4){
          Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        }else{
          _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.bounceInOut);
        }
      }, child: Text(index==4?"Finish":"Next",style: Theme.of(context).textTheme.bodyMedium?.copyWith(
      color: Theme.of(context).primaryColor))),
    ),
                ],
              ),
            )
        
          ],
        ),

    );
  }
}
