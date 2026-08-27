import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:islamy_app/tabs/hadith_screen/HadithDetailsScreen.dart';
import 'package:islamy_app/home_screen/HomeScreen.dart';
import 'package:islamy_app/on_boarding/OnBoarding1.dart';
import 'package:islamy_app/on_boarding/OnboardingScreen.dart';
import 'package:islamy_app/tabs/SebhaTab.dart';

import 'on_boarding/OnBoarding2.dart';
import 'on_boarding/OnBoarding3.dart';
import 'on_boarding/OnBoarding4.dart';
import 'on_boarding/OnBoarding5.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        autoRebuild: false,
        splitScreenMode: true,
    builder :(context,child){
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "JannaLT",
          dividerTheme: DividerThemeData(
            color: Colors.white,
            thickness: 1.5,
            endIndent: 2.0
          ),
          textTheme: TextTheme(
            headlineSmall: TextStyle(
              fontSize: context.sp(17),
              fontWeight: FontWeight.w700,
              color: Color(0xffe2be7f),
            ),
           bodyLarge: TextStyle(
               //fontFamily: "JannaLT",
             fontWeight: FontWeight.bold,
             color: Colors.white,
             fontSize: context.sp(20)
           ),bodySmall: TextStyle(
               //fontFamily: "JannaLT",
             fontWeight: FontWeight.bold,
             color: Colors.white,
             fontSize: context.sp(13)
           ),
            bodyMedium: TextStyle(
                letterSpacing: 0.7,
              color: Color(0xfffeffe8),
              fontWeight: FontWeight.w700,
              fontSize: context.sp(14)
            )
          ),
          inputDecorationTheme: InputDecorationTheme(
             contentPadding: context.edgeInsets(all: 12),
               prefixIconColor: Color(0xffe2be7f),
              enabledBorder: OutlineInputBorder(
                  borderRadius: context.borderRadius(all: 7),
                  borderSide: BorderSide( color: Color(0xffe2be7f),width: 2,  )
              ),
            hintStyle: TextStyle(
         letterSpacing: 0.7,
                color: Color(0xfffeffe8),
                  fontSize: context.sp(13),
              fontWeight: FontWeight.w500
            ),
            fillColor: Colors.black.withOpacity(0.3),
            filled: true,
              border: OutlineInputBorder(
                borderRadius: context.borderRadius(all: 7),
                borderSide: BorderSide( color: Color(0xffe2be7f),width: 1,  )
              ),
          ),
          useMaterial3: true,
          // navigationBarTheme: NavigationBarThemeData(
          //    iconTheme: WidgetStatePropertyAll(IconThemeData(
          //      color: Colors.white,
          //
          //    )),
          //   shadowColor: Color(0xff6d5f46),
          //   indicatorColor: Color(0xff6d5f46),
          // ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(

            showSelectedLabels: true,
            // unselectedIconTheme:IconThemeData(
            //     color: Colors.black,
            //     //size: context.sp(40),
            //     fill: 0.5
            // ),
            // type: BottomNavigationBarType.shifting,
             selectedItemColor: Colors.white,
             unselectedItemColor: Colors.black,
             unselectedLabelStyle: TextStyle(
               color: Colors.black,
                fontSize: context.sp(12),
               fontWeight: FontWeight.w500
             ),
            // selectedIconTheme: IconThemeData(
            //   color: Colors.white,
            //   size: context.sp(30),
            //    fill: 0.5
            // ),
            selectedLabelStyle: TextStyle(
              color: Colors.white,
              fontSize: context.sp(12),
              fontWeight: FontWeight.w500,

            )
          ),
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            toolbarHeight: context.h(130),

          ),
            colorScheme: .fromSeed(seedColor: Colors.deepPurple,
         onPrimary: Colors.black,
         onSecondary: Colors.white,
         tertiary: Color(0xff856b3f),
        secondary: Color(0xff232120),
        primary: Color(0xffe2be7f)),

      ),
      initialRoute: HomeScreen.routeName,
      debugShowCheckedModeBanner: false,
      routes: {
      HomeScreen.routeName:(_)=>HomeScreen(),
      OnboardingScreen.routeName:(_)=>OnboardingScreen(),
      SebhaTab.routeName:(_)=>SebhaTab(),
      OnBoarding1.routeName:(_)=>OnBoarding1(),
      OnBoarding2.routeName:(_)=>OnBoarding2(),
      OnBoarding3.routeName:(_)=>OnBoarding3(),
      OnBoarding4.routeName:(_)=>OnBoarding4(),
      OnBoarding5.routeName:(_)=>OnBoarding5(),
      HadithDetailsScreen.routeName:(_)=>HadithDetailsScreen()
      },
      );
    }
    );
  }
}

