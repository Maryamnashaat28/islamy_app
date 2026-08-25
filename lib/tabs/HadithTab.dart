import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class HadithTab extends StatefulWidget {

  HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> with SingleTickerProviderStateMixin{
  List<String> suraNames = [
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];
  PageController controller =PageController(viewportFraction: 0.6);
 // late AnimationController _controller ;
 // late Animation<double> _animation;
  double currentPage =0;
  // late Animation<double> _animation;
  // @override
  // void dispose() {
  //   controller.dispose(); // Dispose of the animation controller
  //   super.dispose();
  // }
  // @override
  // void initState() {
  //   super.initState();
  //   controller = AnimationController(vsync: TickerProvider(),
  //     duration: Duration(seconds: 2), // Animation duration
  //
  //   );
  //   // Tween animation
  //   _animation = Tween<double>(begin: 50.0, end: 200.0).animate(controller);
  //   controller.forward(); // Start the animation
  // }
  @override
  void initState(){
    super.initState();
    // _controller = AnimationController(vsync: this,duration: Duration(milliseconds: 200));
    // _animation = Tween<double>(begin: 50.0, end: 200.0).animate(_controller);
   // _controller.forward();
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
               itemCount: suraNames.length,
               itemBuilder:
                   (_,index){
               double value = currentPage - index;
               double scale = 1- (value.abs()*0.1);
                 return Transform.scale(
                   scale: scale,
                   child: Container(
                     padding:context.edgeInsets(top: 10),
                     margin: context.edgeInsets(top: 30,bottom: 10),
                     width: context.w(210),
                     //height: context.h(150),
                     child:Stack(
                       children: [
                         Positioned(
                             right:context.w(7),
                             child: Image.asset(fit: BoxFit.cover,
                                 "assets/images/right_corner_hadith_background.png")),
                         Positioned(
                           left:context.w(7),
                             child: Image.asset(fit: BoxFit.cover,
                                 "assets/images/left_corner_hadith_background.png")),
                         Center(child: Text("$index",)),
                         Positioned(
                            bottom:context.h(0.1),
                             child: Image.asset("assets/images/mosque_card.png",
                               width: context.w(200),
                               fit: BoxFit.fill
                             )),
                         Center(

                             child: Image.asset(
                                 "assets/images/hadith_card_background.png"))
                       ],
                     ),
                     decoration: BoxDecoration(
                         color: Theme.of(context).primaryColor,
                         borderRadius: BorderRadius.all(Radius.circular(context.r(20)))
                     ),
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
}
