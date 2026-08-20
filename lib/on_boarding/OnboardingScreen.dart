import 'package:flutter/material.dart';
import 'package:islamy_app/reusable_components/AppBarImage.dart';
class OnboardingScreen  extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      appBar: AppBar(
        title: AppBarImage(),
      ),
      body:Column(
        children: [
          PageView(controller: _controller,
             children: [


             ],
          )
        ],
      ),
    );
  }
}
