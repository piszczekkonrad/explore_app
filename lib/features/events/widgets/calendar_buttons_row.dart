import 'package:flutter/material.dart';

class BlueButtonsRow extends StatelessWidget {
  const BlueButtonsRow({
    super.key, required this.leftText, required this.rightText,
  });
  final String leftText;
  final String rightText;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child:  Text(leftText,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Color.fromRGBO(0, 102, 177, 1),
          ),),),
        MaterialButton(onPressed: (){
          Navigator.of(context).pop();
          },
          color: const Color.fromRGBO(0, 102, 177, 1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
          child: Text(rightText,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color.fromRGBO(255,255,255,1),
            ),
          ),
        )
      ],),
    );
  }
}