import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:islamy_app/tabs/HadithTab.dart';
import 'package:islamy_app/tabs/QuranTab.dart';
import 'package:islamy_app/tabs/RadioTab.dart';
import 'package:islamy_app/tabs/SebhaTab.dart';
import 'package:islamy_app/tabs/TimeTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

 HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=2;
List<Widget> tabs =[
  QuranTab(),
  HadithTab(),
  SebhaTab(),
  RadioTab(),
  TimeTab()
];
  @override
  Widget build(BuildContext context) {
    return
      Container(
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill,image: AssetImage("assets/images/home_bg.png")
          )
      ),
      child:
    Scaffold(
        // appBar: AppBar(
        //   title:  Image.asset(height: context.h(130),
        //       width: context.w(250),
        //       "assets/images/img_header.png"),
        // ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,

          onTap: (index){
          setState(() {
            selectedIndex=index;
          });
        },
          currentIndex: selectedIndex,items: [
        BottomNavigationBarItem( icon: Container(
          padding: context.edgeInsets(vertical:  5,horizontal: 17),
          decoration: BoxDecoration(
              borderRadius: BorderRadiusGeometry.circular(context.r(20)
              ),
              color: selectedIndex ==0? Color(0xff6d5f46):null
          ),
          child: Image.asset("assets/images/ic_quran.png",
            color: selectedIndex == 0? Colors.white:Colors.black ,
          fit: BoxFit.cover,
          width: context.w(16),
          height: context.h(20),
          ),
        ),label: "Quran"
        ,backgroundColor: Theme.of(context).colorScheme.primary
        ),
        BottomNavigationBarItem(icon: Container(
          padding: context.edgeInsets(vertical:  5,horizontal: 17),
          decoration: BoxDecoration(
              borderRadius: BorderRadiusGeometry.circular(context.r(20)),
              color: selectedIndex ==1? Color(0xff6d5f46):null
          ),
          child: Image.asset("assets/images/ic_hadeth.png",
            color: selectedIndex == 1? Colors.white:Colors.black ,
            fit: BoxFit.cover,
            width: context.w(18),
            height: context.h(20),
          ),
        ),label: "Hadith",
            backgroundColor:
            Theme.of(context).colorScheme.primary
        ),
        BottomNavigationBarItem(icon: Container(
          
          padding: context.edgeInsets(vertical:  2,horizontal: 15),
          decoration: BoxDecoration(
             borderRadius: BorderRadiusGeometry.circular(context.r(20)
             ),

            color: selectedIndex ==2? Color(0xff6d5f46):null
          ),
          child: Image.asset("assets/images/ic_sebha.png",
            fit: BoxFit.cover,
            color: selectedIndex == 2? Colors.white:Colors.black ,
            width: context.w(26),
            height: context.h(28),),
        ),label: "Tasbeeh",
            backgroundColor: Theme.of(context).colorScheme.primary),
        BottomNavigationBarItem(icon:
        Container(
          padding: context.edgeInsets(vertical: 5,horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadiusGeometry.circular(context.r(20)
              ),
              color: selectedIndex ==3? Color(0xff6d5f46):null
          ),
          child: Image.asset("assets/images/ic_radio.png",
            color: selectedIndex == 3? Colors.white:Colors.black ,
            fit: BoxFit.cover,
            width: context.w(24),
            height: context.h(22),),
        ),label: "Radio",
            backgroundColor: Theme.of(context).colorScheme.primary),
        BottomNavigationBarItem(icon: Container(
          padding: context.edgeInsets(vertical:  5,horizontal: 17),
          decoration: BoxDecoration(
              borderRadius: BorderRadiusGeometry.circular(context.r(20)
              ),
              color: selectedIndex ==4? Color(0xff6d5f46):null
          ),
          child: Image.asset("assets/images/ic_time.png",
            color: selectedIndex == 4? Colors.white:Colors.black ,
            fit: BoxFit.cover,
            width: context.w(18),
            height: context.h(20),),
        ),label: "Time",
            backgroundColor: Theme.of(context).colorScheme.primary),
      ]
      ),
      // bottomNavigationBar: NavigationBar(
      //
      //     selectedIndex:selectedIndex,
      //      backgroundColor: Theme.of(context).colorScheme.primary,
      //     destinations:  [
      //     NavigationDestination(icon: Image.asset("assets/images/ic_quran.png",
      //       fit: BoxFit.cover,
      //       width: context.w(18),
      //       height: context.h(22),
      //       ),label: "Quran"
      //     ),
      //       NavigationDestination(icon:
      //       Image.asset("assets/images/ic_hadeth.png",
      //             fit: BoxFit.cover,
      //             width: context.w(18),
      //             height: context.h(22),
      //           ),label: "Hadith",
      //       )
      //
      //
      //
      //
      // ]),
      body: tabs[selectedIndex],
      ),
   );
  }
}
