// import 'package:atbjobsapp/config/theme/app_text_style.dart';
// import 'package:atbjobsapp/config/theme/colors.dart';
// import 'package:atbjobsapp/core/utils/assets/image_assets.dart';
// import 'package:atbjobsapp/feature/order/widgets/circle_button.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class OrderBody extends StatefulWidget {
//   const OrderBody({super.key});
//
//   @override
//   State<OrderBody> createState() => _OrderBodyState();
// }
//
// class _OrderBodyState extends State<OrderBody> {
//   int increase = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//    height: 78,
//    width: double.infinity,
//    padding: EdgeInsets.all(10),
//    decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(12), // Adjust as needed
//       boxShadow: [
//         BoxShadow(
//           color: const Color(0xFF898989).withOpacity(0.24),
//           //offset: const Offset(1, 2),
//           blurRadius: 5.5,
//           spreadRadius: 0, // You can adjust this if needed
//         ),
//       ],
//     ),
//     child: Row(
//     children: [
//       Image.asset(icBeef, height: 60,),
//       SizedBox(width: 10,),
//       Padding(
//         padding: const EdgeInsets.symmetric(vertical: 3.0),
//         child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//          Text("Bell Pepper", style: AppTextStyle.hintTextStyle().copyWith(color: defaultTextColor, fontWeight: FontWeight.w400)),
//          Spacer(),
//          Text("12 Cal", style: AppTextStyle.hintTextStyle().copyWith(fontSize: 14),),
//         ],
//         ),
//       ),
//       Spacer(),
//       Column(
//       mainAxisAlignment: MainAxisAlignment.end,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         Text("\$12", style: AppTextStyle.hintTextStyle().copyWith(color: defaultTextColor, fontWeight: FontWeight.w500)),
//         Spacer(),
//         Row(
//          children: [
//            CircleButton(onTap: (){
//              setState(() {
//                increase++;
//              });
//            }, icon: const Icon(FontAwesomeIcons.plus, size: 15, color: whiteColor),),
//            SizedBox(width: 7),
//            Text(increase.toString(), style: AppTextStyle.hintTextStyle().copyWith(color: defaultTextColor, fontWeight: FontWeight.w500)),
//            SizedBox(width: 7),
//            CircleButton(onTap: (){
//              if(increase>0){
//                setState(() {
//                  increase--;
//                });
//              }
//            }, icon:  Icon(FontAwesomeIcons.minus, size: 15, color: whiteColor),)
//           
//          ],
//          )
//       ],
//       )
//     ],
//     ),
//    );
//   }
// }
