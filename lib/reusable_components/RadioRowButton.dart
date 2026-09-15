import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
typedef buttonClicked = void Function();
class RadioRowButton extends StatefulWidget {
  RadioRowButton({super.key,required this.buttonText,required this.onButtonClicked,required this.isSelected
  });
String buttonText;
buttonClicked onButtonClicked;
bool isSelected = false;

  @override
  State<RadioRowButton> createState() => _RadioRowButtonState();
}

class _RadioRowButtonState extends State<RadioRowButton> {


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
        widget.onButtonClicked();

    },
        style: ElevatedButton.styleFrom(
          padding: context.edgeInsets(all: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(context.r(10))
          ),
           backgroundColor: widget.isSelected ?Theme.of(context).primaryColor:
           Colors.black.withOpacity(0.1)

        ),
        child: Text(
          widget.buttonText,
          style: widget.isSelected ? Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black)
              :Theme.of(context).textTheme.bodySmall
          ,
        ));

  }
}
