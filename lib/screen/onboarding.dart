import 'package:city_guide_app/core/enums.dart';
import 'package:city_guide_app/core/textstyle.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              
              height: 256,
              width: 256,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
           Text("Kano City App", style: kTextStyle(14, textWeight: TextWeight.semiBold, color: Colors.black12),)
        ],
      ),
    );
  }
}
