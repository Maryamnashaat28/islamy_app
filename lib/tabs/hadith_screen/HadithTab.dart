import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:islamy_app/tabs/hadith_screen/HadithDetailsScreen.dart';
import 'package:islamy_app/tabs/hadith_screen/HadithWidget.dart';
class HadithTab extends StatefulWidget {
  HadithTab({super.key});
  @override
  State<HadithTab> createState() => _HadithTabState();
}
class _HadithTabState extends State<HadithTab> with SingleTickerProviderStateMixin{
  PageController controller =PageController(viewportFraction: 0.6,
  initialPage: 50);
  double currentPage =50;
  @override
  void initState(){
    super.initState();
    controller.addListener((){
      setState(() {
        currentPage = controller.page ?? 0;
      });
    });
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration:BoxDecoration(
        image:  DecorationImage(image:AssetImage( "assets/images/hadith_background.png"),fit:
        BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title:  Image.asset(height: context.h(130),
                width: context.w(250),
                "assets/images/img_header.png"),

        ),
        body: Column(

        children: [
         Expanded(
           child: PageView.builder(

             controller: controller,
               scrollDirection: Axis.horizontal,
               //itemCount:suraNames.length,
               itemBuilder:
                   (_,index){
                     int realIndex = index % 50 ;
                     if(hadithLines.isEmpty) {
                      loadFile(realIndex);
                     }
               double value = currentPage - index;
               double scale = 1- (value.abs()*0.1);
                 return Transform.scale(
                   scale: scale,
                   child: GestureDetector(
                     onTap: (){
                       Navigator.pushNamed(context, HadithDetailsScreen.routeName,
                           arguments:HadithArgs(index:realIndex));
                     },
                     child: HadithWidget(realIndexInt: "$realIndex"),
                   ),
                 );
               }),
           //        child:
           //             PageView.builder(
           //          scrollDirection: Axis.horizontal,
           //          controller: controller,
           //
           //          itemBuilder:(_,index){
           //            double value = currentPage - index;
           //            double scale = (1 - (value.abs()* 0.15).clamp(0.85 , 1.0));
           //            return
           //          AnimatedBuilder(
           //            animation: _controller, builder: (BuildContext context, Widget? child) {
           //
           // return Transform.scale(
           //
           // scale:scale,
           // child: child,
           // );
           // },
           //   child: Container(
           //   margin: context.edgeInsets(top: 40,horizontal: 7,bottom: 30),
           //   width: context.w(80),
           //   height: context.h(150),
           //   child:Stack(
           //   children: [
           //   Text("ajmsimsidjio")
           //   ],
           //   ),
           //   decoration: BoxDecoration(
           //   color: Theme.of(context).primaryColor,
           //   borderRadius: BorderRadius.all(Radius.circular(context.r(20)))
           //   ),
           //   ),
           // );
           //
           //          })
    //         child: ListView.builder(scrollDirection: Axis.horizontal,
    //         //itemCount: suraNames.length,
    //         itemBuilder:
    //         (_,index){
    //          return AnimatedContainer(
    //            duration: Duration(
    //              milliseconds: 250,
    //            ),
    //            margin: context.edgeInsets(top: 40,horizontal: 7,bottom: 30),
    //             width: context.w(230),
    //             //height: context.h(150),
    //             child:Stack(
    //               children: [
    //               Text("ajmsimsidjio")
    //               ],
    //             ),
    //           decoration: BoxDecoration(
    //               color: Theme.of(context).primaryColor,
    //               borderRadius: BorderRadius.all(Radius.circular(context.r(20)))
    //             ),
    //           );
    //         }),
         )
        ],

        ),
      ),
    );

  }
  List<String > hadithLines=[];
  loadFile(int index)async{
    String fileContent= await rootBundle.loadString("assets/files/ahadith_files/h${index+1}.txt");
     hadithLines = fileContent.split("\n");
    setState(() {

    });
    print(hadithLines);
  }

}
