import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:islamy_app/tabs/hadith_screen/HadithTab.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routeName = "hadith details";

   HadithDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    HadithArgs args = ModalRoute.of(context)!.settings.arguments as HadithArgs;
    return Scaffold(
      backgroundColor:
      Color(0xff202020),
      appBar: AppBar(
        toolbarHeight: context.h(60),
        title: Text("Hadith ${args.index+1}",style: Theme.of(context).textTheme.headlineSmall,),
        leading: Padding(
          padding: context.edgeInsets(left: 20,top: 3),
          child: IconButton(icon: Icon(Icons.arrow_back_outlined,size: context.sp(20),color: Theme.of(context).primaryColor,),
              onPressed: (){
         Navigator.pop(context);
              },
        ),
      ),
      ),
      body: Stack(
        children: [
          Positioned(right: context.w(15),
            child: Image.asset("assets/images/corner1.png",
          fit: BoxFit.cover,
            width: context.w(90),),),
          Positioned(left: context.w(15),
            child: Image.asset("assets/images/corner2.png",
              fit: BoxFit.cover,
              width: context.w(90),),),
          Positioned(bottom: context.w(1),
            child: Image.asset("assets/images/mosque_hadith_details.png",
              fit: BoxFit.fill,
              width: context.w(360),),),
        ],
      ),
    );
  }
}
class HadithArgs{
  int index;
  HadithArgs({required this.index});
}