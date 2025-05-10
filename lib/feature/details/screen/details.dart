import 'package:atbjobsapp/config/theme/app_text_style.dart';
import 'package:atbjobsapp/core/extensions/extensions.dart';
import 'package:atbjobsapp/core/utils/appbar_widget.dart';
import 'package:atbjobsapp/core/utils/app_button.dart';
import 'package:atbjobsapp/feature/details/widgets/dropdown_service.dart';
import 'package:atbjobsapp/feature/details/widgets/text_field.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String? gender;
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  final ageController = TextEditingController();
  bool isChangeColor = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    resizeToAvoidBottomInset: true,
    body: Stack(
      children: [
        Column(
        children: [
          const AppbarWidget(text: 'Enter your details'),
          Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const SizedBox(height: 20,),
              Text("Gender", style: AppTextStyle.textFieldOptionStyle(),),
              const SizedBox(height: 7,),
              CustomDropdown(
                items: const ['Male', 'Female'],
                label: 'Fruits',
                onChanged: (val) {
                  setState(() {
                    gender = val;
                  if(gender != null && heightController.text.isNotEmpty && weightController.text.isNotEmpty && ageController.text.isNotEmpty){
                      isChangeColor = false;
                  }else{
                      isChangeColor = true;
                  }
                  });
                },
              ),
              const SizedBox(height: 20,),
              Text("Weight", style: AppTextStyle.textFieldOptionStyle(),),
              const SizedBox(height: 10,),
              CustomStyledTextField(
                controller: weightController,
                label: 'Enter your weight',
                suffixText: 'cm',
                onChanged: (val) {
                  setState(() {
                  if(gender != null && heightController.text.isNotEmpty && weightController.text.isNotEmpty && ageController.text.isNotEmpty){
                      isChangeColor = false;
                  }else{
                      isChangeColor = true;
                  }
                  });
                },
              ),
              
              
              const SizedBox(height: 20,),
              Text("Height", style: AppTextStyle.textFieldOptionStyle(),),
              const SizedBox(height: 10,),
              CustomStyledTextField(
                controller: heightController,
                label: 'Enter your height',
                suffixText: 'cm',
                onChanged: (val) {
                  setState(() {
                  if(gender != null && heightController.text.isNotEmpty && weightController.text.isNotEmpty && ageController.text.isNotEmpty){
                      isChangeColor = false;
                  }else{
                      isChangeColor = true;
                  }
                  });
                },
              ), 
              const SizedBox(height: 20,),
              Text("Age", style: AppTextStyle.textFieldOptionStyle(),),
              const SizedBox(height: 10,),
              CustomStyledTextField(
                  controller: ageController,
                  label: 'Enter your age',
                  suffixText: '',
                  onChanged: (val) {
                  setState(() {
                  if(gender != null && heightController.text.isNotEmpty && weightController.text.isNotEmpty && ageController.text.isNotEmpty){
                      isChangeColor = false;
                  }else{
                      isChangeColor = true;
                  }
                  });
                  },
                ),
                SizedBox(height: 100,)
              ],
              ),
            ),
          )),
        ],
        ),
        Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 30),
          child: MyButton(text: 'Next', isDisabled: isChangeColor, 
          onPressed: (){
            if(isChangeColor == false){
            final calories = gender!.calculateCalories(
                weightKg: double.parse(weightController.text.trim()),
                heightCm: double.parse(heightController.text.trim()),
                age: int.parse(ageController.text.trim()),
              );
            Navigator.pushNamed(context, '/order', arguments: calories);
          }}),
        ))
      ],
    ),
    );
  }
}
