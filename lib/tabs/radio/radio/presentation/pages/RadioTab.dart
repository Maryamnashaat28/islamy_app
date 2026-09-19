import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:islamy_app/reusable_components/AppBarImage.dart';
import 'package:islamy_app/reusable_components/RadioRowButton.dart';
import 'package:islamy_app/tabs/radio/radio/presentation/manager/view_model/RadioViewModel.dart';
import 'package:islamy_app/tabs/radio/radio/presentation/widgets/RadioItem.dart';

import '../../data/models/Radios.dart';
class RadioTab extends StatefulWidget {

  RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  String selected = "Radio";
  AudioPlayer player = AudioPlayer();
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
              context.verticalSpace(10),
              selected== "Radio"?
              Expanded(
                child: FutureBuilder(future: RadioViewModel.getRadioData(),
                    builder: (BuildContext context,AsyncSnapshot<List<Radios>?> snapshot){
                  if(snapshot.connectionState== ConnectionState.waiting){
                  return Center(
                     child: CircularProgressIndicator(),
                   );
                  }else if(snapshot.hasError){
                   return Text("${snapshot.error}");
                      }else if(snapshot.hasData){
                       var radios = snapshot.data!;
                    return ListView.builder(itemCount: radios.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,int index) {
                    var radioIndex = radios[index];
                    return RadioItem(radio: radioIndex,player: player,);
                    }
                    );
                    }
                  return Center(

                      child: Text("Something went wrong",style: Theme.of(context).textTheme.bodyLarge,));
                }


                ),
              )
                  :
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
