import 'package:atbjobsapp/config/theme/app_text_style.dart';
import 'package:atbjobsapp/config/theme/colors.dart';
import 'package:atbjobsapp/core/utils/assets/image_assets.dart';
import 'package:atbjobsapp/core/utils/svg_image.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  final String text;
  const AppbarWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
return Container(
     width: double.infinity,
     height: 86,
     padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
     color: whiteColor,
     child: Center(
       child: Row(
       children: [
         InkWell(
         onTap: (){Navigator.pop(context);},
         child: SvgImage().asset(path: icBack)),
         const Spacer(),
         Text(text, style: AppTextStyle.appBarStyle(),),
         const Spacer()
       ],
       ),
     ),
     );
  }
}
