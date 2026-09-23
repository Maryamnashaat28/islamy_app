import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:islamy_app/reusable_components/AppBarImage.dart';
import 'package:islamy_app/reusable_components/RadioRowButton.dart';

import 'package:islamy_app/tabs/radio/radio/presentation/manager/view_model/RadioViewModel.dart';
import 'package:islamy_app/tabs/radio/radio/presentation/manager/view_model/RecitersViewModel.dart';
import 'package:islamy_app/tabs/radio/radio/presentation/widgets/RadioItem.dart';
import 'package:islamy_app/tabs/radio/radio/presentation/widgets/RecitersItem.dart';

import '../../data/models/Radios.dart';
import '../../data/models/Reciters.dart';
import '../../data/models/RecitersResponse.dart';
class RadioTab extends StatefulWidget {

  RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  String selected = "Radio";
  AudioPlayer player = AudioPlayer();
  RadioViewModel radioViewModel = RadioViewModel();
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
                child: FutureBuilder(future: radioViewModel.getRadioData(),
                    builder: (BuildContext context,AsyncSnapshot<List<Radios>?> snapshot){
                  if(snapshot.connectionState== ConnectionState.waiting){
                  return Center(
                     child: CircularProgressIndicator(),
                   );
                  }else if(snapshot.hasError){
                   return Text("${snapshot.error}");
                      }else if(snapshot.hasData){
                       var radios = snapshot.data!;
                    return ListView.builder(
                        itemCount: radios.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,int index) {
                    var radioIndex = radios[index];
                    return RadioItem(radio: radioIndex,player: player,index: index,);
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
                child: FutureBuilder(future: RecitersViewModel.getRecitersData(), 
                    builder: (BuildContext context, AsyncSnapshot<List<Reciters>?> snapshot){
                  if(snapshot.connectionState == ConnectionState.waiting){
                  return  Center(child: CircularProgressIndicator());
                  }else if(snapshot.hasError){
                    return Text("Error:${snapshot.error}");
                  }else if(snapshot.hasData){
                    var reciters = snapshot.data!;
                    return ListView.builder(itemCount: reciters.length,
                        itemBuilder:(context, int index) {
                      var reciterIndex = reciters[index];
                      return RecitersItem(reciter: reciterIndex, player: player,
                      index: index,);
                    });
                  }
                  return Text("Something went wrong");
                }
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
