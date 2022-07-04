import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../utils/ai_util.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: Stack(children: [
        VxAnimatedBox().size(context.screenWidth, context.screenHeight)
        .withGradient(
            LinearGradient(colors: [
              AIMusicColor.primaryColor1,
              AIMusicColor.primaryColor2
            ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
        ).make(),
        AppBar(
          title: "AI QMusic".text.xl4.bold.make(),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ).h(80).p16()
      ],),
    );
  }
}
