import 'package:flutter/material.dart';
import 'package:liquid/src/widgets/liquid_pages.dart';
import 'package:liquid_swipe/Constants/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: liquidPages,
        fullTransitionValue: 500,
        enableLoop: true,
        enableSlideIcon: false,
        waveType: WaveType.liquidReveal,
        onPageChangeCallback: (page)=>pageChangeCallback(page),

      )
    );
  }
  pageChangeCallback(int page){
    print(page);
  }
}
