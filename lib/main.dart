import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:islamy_app/home_screen/HomeScreen.dart';

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
      HomeScreen.routeName:(_)=>HomeScreen()
      },
      );
    }
    );
  }
}

