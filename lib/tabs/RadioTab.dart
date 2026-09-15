import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:islamy_app/reusable_components/AppBarImage.dart';
import 'package:islamy_app/reusable_components/RadioRowButton.dart';
class RadioTab extends StatefulWidget {

  RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  String selected = "Radio";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(fit: BoxFit.fill,image: AssetImage("assets/images/radio_ackground.png"
        ,))
      ),
      child: Scaffold(
       appBar: AppBar(
         title: AppBarImage(),
       ),
        body: Padding(
          padding: context.edgeInsets(horizontal: 15,vertical: 8),
          child: Column(

            children: [
              Row(
                  children: [
                    Expanded(child: RadioRowButton(buttonText: "Radio",
                      isSelected: selected=="Radio",
                      onButtonClicked: (){
                    setState(() {
                      selected = "Radio";
                    });

                      }
                    )),
                    context.horizontalSpace(10),
                    Expanded(child: RadioRowButton(buttonText: "Reciters",
                      isSelected: selected=="Reciters",
                      onButtonClicked: (){
                     setState(() {
                       selected="Reciters";
                     });

                      },
                    )),

                  ],
                ),
              // Column(
              //   children: [
              //
              //   ],
              // )
              context.verticalSpace(10),
              selected== "Radio"?
              Expanded(
                child: ListView.builder(itemCount: 10,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,int index)=>
                    Container(width: context.w(60),
                      margin: context.edgeInsets(horizontal: 3,vertical: 8),
                      height: context.h(120),
                      child: Stack(
                        children: [
                          Positioned(
                                 right: context.w(150),
                              bottom: context.h(85),
                              child: Text("Radio",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: context.sp(17)),)),
                          Positioned(
                            bottom: context.h(2),
                            child: Image.asset("assets/images/radio_mosque.png",width: 
                            context.w(325),
                            height: context.h(90),
                            fit: BoxFit.fill,),
                          ),
                          // Positioned(
                          //   bottom: context.h(3),
                          //   right: context.w(132),
                          //   child: IconButton(onPressed: (){}, icon:
                          //   Icon(Icons.play_arrow_rounded,
                          //   color: Color(0xff202020),size:
                          //     context.sp(45),)),
                          // ),
                          Positioned(
                            bottom: context.h(18),
                            right: context.w(105),
                            child: Image.asset("assets/images/Volume_High.png",
                            height: context.h(25),
                            fit: BoxFit.fill,),
                          ),Positioned(
                            bottom: context.h(18),
                            right: context.w(145),
                            child: Image.asset("assets/images/play_icon.png",
                            height: context.h(30),
                            width: context.w(25),
                            fit: BoxFit.fill,),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadiusGeometry.circular(context.r(20)),
                        
                    ),
                     
                    )

                ),
              ):
              Expanded(
                child: ListView.builder(scrollDirection: Axis.vertical,itemCount: 10,itemBuilder: (context,int index)=>
                    Container(

                    )
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
