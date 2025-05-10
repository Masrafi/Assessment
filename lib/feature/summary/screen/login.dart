import 'package:atbjobsapp/config/theme/app_text_style.dart';
import 'package:atbjobsapp/config/theme/colors.dart';
import 'package:atbjobsapp/core/utils/appbar_widget.dart';
import 'package:atbjobsapp/core/utils/app_button.dart';
import 'package:atbjobsapp/core/utils/assets/image_assets.dart';
import 'package:atbjobsapp/feature/order/presentation/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({super.key});

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  int increase = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
      children: [
        Column(
        children: [
          AppbarWidget(text: "Order summary"),
          SizedBox(height: 16),
          Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
              children: [
                Container(
                height: 78,
                width: double.infinity,
                padding: EdgeInsets.all(10),
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
                 child: Row(
                 children: [
                   Image.asset(icBeef, height: 60,),
                   SizedBox(width: 10,),
                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 3.0),
                     child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      Text("Bell Pepper", style: AppTextStyle.hintTextStyle().copyWith(color: defaultTextColor, fontWeight: FontWeight.w400)),
                      Spacer(),
                      Text("12 Cal", style: AppTextStyle.hintTextStyle().copyWith(fontSize: 14),),
                     ],
                     ),
                   ),
                   Spacer(),
                   Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     Text("\$12", style: AppTextStyle.hintTextStyle().copyWith(color: defaultTextColor, fontWeight: FontWeight.w500)),
                     Spacer(),
                     Row(
                      children: [
                        CircleButton(onTap: (){
                          setState(() {
                            increase++;
                          });
                        }, icon: const Icon(FontAwesomeIcons.plus, size: 15, color: whiteColor),),
                        SizedBox(width: 7),
                        Text(increase.toString(), style: AppTextStyle.hintTextStyle().copyWith(color: defaultTextColor, fontWeight: FontWeight.w500)),
                        SizedBox(width: 7),
                        CircleButton(onTap: (){
                          if(increase>0){
                            setState(() {
                              increase--;
                            });
                          }
                        }, icon:  Icon(FontAwesomeIcons.minus, size: 15, color: whiteColor),)
                        
                      ],
                      )
                   ],
                   )
                 ],
                 ),
                )
              ],
              ),
            ),
          ))
        ],
        ),
        Align(
        alignment: Alignment.bottomCenter,
        child: Container(
        height: 164,
          width: double.infinity,
          color: whiteColor,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 30),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                Row(
                children: [
                  Text("Cals", style: AppTextStyle.hintTextStyle().copyWith(color: defaultTextColor, fontWeight: FontWeight.w400),),
                  const Spacer(),
                  Text("1198 Cal out of 1200 Cal", style: AppTextStyle.hintTextStyle().copyWith(fontSize: 14),)
                ],
                ),
                const SizedBox(height: 5,),
                Row(
                children: [
                  Text("Price", style: AppTextStyle.hintTextStyle().copyWith(color: defaultTextColor, fontWeight: FontWeight.w400),),
                  const Spacer(),
                  Text("\$ 125", style: AppTextStyle.hintTextStyle().copyWith(fontSize: 14, color: addColor),)
                ],
                ),
                const SizedBox(height: 10,),
                MyButton(text: 'Confirm', isDisabled: false, onPressed: (){Navigator.pushNamed(context, '/orderSummary');}),
              ],
            ),
          ),
        ))
      ],
    ),
    );
  }
}
