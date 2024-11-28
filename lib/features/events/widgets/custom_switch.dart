import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    super.key,
  });

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      }, //

      activeThumbImage: const AssetImage('assets/custom_icons/tick.png'),// Change the active color
      activeTrackColor: const Color.fromRGBO(13, 222, 174, 1),
      inactiveThumbColor: const Color.fromRGBO(77, 76, 76, 1),
      inactiveTrackColor: Colors.transparent,

    );
  }
}