import 'package:atbjobsapp/config/theme/app_text_style.dart';
import 'package:atbjobsapp/config/theme/colors.dart';
import 'package:atbjobsapp/feature/order/presentation/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductInfo extends StatefulWidget {
  final String name;
  final String image;
  final String cal;
  final GestureTapCallback? onTapAdd;
  final GestureTapCallback? onTapSub;
  final int increase;
  const ProductInfo({super.key, required this.name, required this.image, required this.cal, required this.onTapAdd, required this.onTapSub, required this.increase});

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 196,
     width: 183,
     padding: const EdgeInsets.all(10),
     margin: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 5),
     decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(12), // Adjust as needed
         boxShadow: [
           BoxShadow(
             color: const Color(0xFF898989).withOpacity(0.24),
             //offset: const Offset(1, 2),
             blurRadius: 5.5,
             spreadRadius: 0, // You can adjust this if needed
           ),
         ],
       ),
       child: Column(
       children: [
         //SvgImage().asset(path: icPepper)
         Image.network(widget.image, height: 100,),
          const SizedBox(height: 10,),
          Row(
          crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Text(widget.name, style: AppTextStyle.hintTextStyle().copyWith(color: defaultTextColor, fontWeight: FontWeight.w400),),
           const Spacer(),
           Text("${widget.cal} Cal", style: AppTextStyle.hintTextStyle().copyWith(fontSize: 14),),
         ],
         ),
         const SizedBox(height: 5,),
         Row(
         children: [
           Text("\$12", style: AppTextStyle.hintTextStyle().copyWith(color: defaultTextColor, fontWeight: FontWeight.w500)),
           const Spacer(),
           !isShow ? InkWell(
           onTap: (){
             setState(() {
               isShow = true;
             });
           },
             child: Container(
             height: 32,
             width: 65,
             decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12),
             color: addColor
             ),
             child: Center(child: Text("Add", style: AppTextStyle.hintTextStyle().copyWith(color: whiteColor),)),
             ),
           ) :
           Row(
           children: [
             CircleButton(onTap: widget.onTapAdd,
             // (){
             //   setState(() {
             //     increase++;
             //   });
             // }, 
             icon: const Icon(FontAwesomeIcons.plus, size: 15, color: whiteColor),),
             SizedBox(width: 7),
             Text(widget.increase.toString(), style: AppTextStyle.hintTextStyle().copyWith(color: defaultTextColor, fontWeight: FontWeight.w500)),
             SizedBox(width: 7),
             CircleButton(onTap: widget.onTapSub,
             // (){
             //   if(increase>0){
             //     setState(() {
             //       increase--;
             //     });
             //   }
             // }, 
             icon:  Icon(FontAwesomeIcons.minus, size: 15, color: whiteColor),)
             
           ],
           )
          
         ],
         )
       ],
       ),
     );
  }
}
