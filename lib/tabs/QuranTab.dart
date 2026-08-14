import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
class QuranTab extends StatelessWidget {
  QuranTab({super.key});
  //int number = index+1;
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
  List<int> versesNumber = [7,286,200,176,120,165,206,75,129,109,123,111,43,52,99,128,111,110,98,135,112,78,118,64,77,227,93,88,
    69,60,34,30,73,54,45,83,182,88,75,85,54,53,89,59,37,35,38,29,18,45,60,49,62,55,78,96,29,22,24,13,14,11,11,18,12,12,30,52,52,
    44,28,28,20,56,40,31,50,40,46,42,29,19,36,25,22,17,19,26,30,20,15,21,11,8,5,19,5,8,8,11,11,8,3,9,5,4,6,3,6,3,5,4,5,6
  ];
  List<String> surahNames = ['Al-Fatiha', 'Al-Baqarah','Aal-E-Imran','An-Nisa','Al-Ma-idah',"Al-Anam",'Al-Araf','Al-Anfal', 'At-Tawbah', 'Yunus', 'Hud', 'Yusuf', 'Ar-Rad','Ibrahim',
'Al-Hijr', 'An-Nahl', 'Al-Isra', 'Al-Kahf', 'Maryam', 'Ta-Ha', 'Al-Anbiya', 'Al-Hajj','Al-Muminun', 'An-Nur', 'Al-Furqan', 'Ash-Shuara',
    'An-Naml', 'Al-Qasas', 'Al-Ankabut', 'Ar-Rum', 'Luqman', 'As-Sajdah', 'Al-Ahzab', 'Saba', 'Fatir', 'Ya-Sin', 'As-Saffat', 'Sad',
    'Az-Zumar', 'Ghafir', 'Fussilat', 'Ash-Shura', 'Az-Zukhruf', 'Ad-Dukhan', 'Al-Jathiyah', 'Al-Ahqaf', 'Muhammad', 'Al-Fath', 'Al-Hujurat',
    'Qaf', 'Adh-Dhariyat', 'At-Tur', 'An-Najm', 'Al-Qamar', 'Ar-Rahman', 'Al-Waqiah', 'Al-Hadid', 'Al-Mujadilah', 'Al-Hashr', 'Al-Mumtahanah',
    'As-Saff', 'Al-Jumuah', 'Al-Munafiqun', 'At-Taghabun', 'At-Talaq', 'At-Tahrim', 'Al-Mulk', 'Al-Qalam', 'Al-Haqqah', 'Al-Maarij', 'Nuh',
    'Al-Jinn', 'Al-Muzzammil', 'Al-Muddaththir', 'Al-Qiyamah', 'Al-Insan', 'Al-Mursalat', 'An-Naba', 'An-Naziat', 'Abasa', 'At-Takwir',
    'Al-Infitar', 'Al-Mutaffifin', 'Al-Inshiqaq', 'Al-Buruj', 'At-Tariq', 'Al-Ala', 'Al-Ghashiyah', 'Al-Fajr', 'Al-Balad', 'Ash-Shams',
    'Al-Layl', 'Ad-Duha', 'Ash-Sharh', 'At-Tin', 'Al-Alaq', 'Al-Qadr', 'Al-Bayyinah', 'Az-Zalzalah', 'Al-Adiyat', 'Al-Qariah', 'At-Takathur',
    'Al-Asr', 'Al-Humazah', 'Al-Fil', 'Quraysh', 'Al-Maun', 'Al-Kawthar', 'Al-Kafirun', 'An-Nasr', 'Al-Masad', 'Al-Ikhlas', 'Al-Falaq', 'An-Nas',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: context.edgeInsets(all: 16),
         child: Column(
         children: [
            TextField(
             style: TextStyle(
               fontSize: context.sp(15),
               color: Colors.white
             ),
               decoration: InputDecoration(
                 prefixIcon: Padding(
                   padding: context.edgeInsets(all:10),
                   child: Image.asset("assets/images/ic_quran.png",
                     color: Theme.of(context).colorScheme.primary,
                     width: context.w(15),
                     height: context.h(20),
                     fit: BoxFit.cover,),
                 ),
                 hintText: "Sura Name"
               ),

             ),
           30.verticalSpace,
           Align(
             alignment: AlignmentGeometry.topLeft,
             child: Text("Suras List",style: Theme.of(context).textTheme.bodyMedium
             ),
           ),
              Expanded(
             child: ListView.separated(itemBuilder:(context,index)=>
                 Padding(
                   padding: context.edgeInsets(horizontal: 7,vertical: 10),
                   child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     // Expanded(
                     //  // flex: 2,
                     //   child:
                      Stack(
                        children: [
                          Positioned(left:
                       (index+1) <10 ?
                   context.sp(20)
                              : (index+1)  <100 ?context.sp(11):context.sp(6),

                              bottom: (index+1) <10 ? context.sp(15) :context.sp(10),

                              child: Padding(
                                padding: (index+1)>9?context.edgeInsets(all: 5):  context.edgeInsets(all: 0) ,
                                child: Text("${index+1}",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: context.sp(15))),
                              )),
                          Image.asset("assets/images/img_sur_number_frame.png",fit: BoxFit.cover,
                            height: context.h(57),
                            width: context.w(50),),
                        ]
                      ),
                     //),
                // RSizedBox(width: 1,),
                //      Expanded(
                //        flex: 3,
                //        child:
                     context.horizontalSpace(20),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text(surahNames[index],style: Theme.of(context).textTheme.bodyLarge,),
                           //10.verticalSpace,

                           Text("${versesNumber[index]} Verses", style: Theme.of(context).textTheme.bodySmall)
                         ],
                       ),
                   // ),
                    //  Expanded(
                    // flex: 2,
                    //  child:
                     //80.horizontalSpace,
                    // RSizedBox(width: 70,),
                     Spacer(),
                      Text(suraNames[index],style: Theme.of(context).textTheme.bodyLarge,)
                     //)
                   ],
                                  ),
                 ),
              separatorBuilder: (context,int index)=>Container(
               margin: context.edgeInsets(horizontal: 25),
               child: Divider(
               ),
             ), itemCount: suraNames.length),
           )

         ],
       ),
     ),
    );
  }
}
