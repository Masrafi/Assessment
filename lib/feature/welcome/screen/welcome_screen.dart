import 'package:atbjobsapp/core/utils/app_button.dart';
import 'package:atbjobsapp/core/utils/assets/image_assets.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
    height: double.infinity,
    decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage(icWelcome,),
        fit: BoxFit.fill,
    )
    ),
    child: Stack(
      children: [
        Align(
        alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 45),
            child: MyButton(text: 'Order Food', onPressed: ()
            {
              Navigator.pushNamed(context, '/details');
            }, isDisabled: false),
          ),
        ),
      ],
    )
    ),
    );
  }
}
