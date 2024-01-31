import 'package:flutter/material.dart';
import 'package:untitled/res/colors.dart';
class RoundButton extends StatelessWidget {

  final String title;
  final bool loading;
  final VoidCallback onpress;

  const RoundButton({Key? key,required this.title,
    this.loading = false,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
  child:    Container(
height: 40,
      width: 200,
      decoration: BoxDecoration(
        color: Appcolors.buttonColor,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Center(
      child:loading?CircleAvatar():
      Text(title,style: TextStyle(color: Appcolors.whiteColor,fontSize: 20),))
    ));
  }
}
