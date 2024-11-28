import 'package:flutter/material.dart';

class CalendarButtonsRow extends StatelessWidget {
  const CalendarButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Row(children: [
        TextButton(onPressed: (){}, child: const Text('Anuluj',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Color.fromRGBO(0, 102, 177, 1),
          ),),),
        const Spacer(),
        MaterialButton(onPressed: (){},
          color: const Color.fromRGBO(0, 102, 177, 1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
          child: const Text('Dodaj',
            style: TextStyle(
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