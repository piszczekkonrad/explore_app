import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({
    super.key,
  });

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _currentValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Row(
            children: [
              Text('0 km',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(60, 60, 59, 0.7)
              ),),
              Expanded(child: SizedBox()),
              Text('100km',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(60, 60, 59, 0.7)
                ),),
            ],
          ),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            valueIndicatorColor: const Color.fromRGBO(13, 222, 174, 1),
            activeTrackColor: const Color.fromRGBO(0, 102, 177, 1),
            inactiveTrackColor: const Color.fromRGBO(0, 0, 0, 0.07),
            thumbColor: const Color.fromRGBO(255, 255, 255, 1),
          ),
          child: Slider(
            value: _currentValue,
            min: 0,
            max: 100,
            divisions: 100,
            label: '${_currentValue.toStringAsFixed(0)} km',
            onChanged: (double value) {
              setState(() {
                _currentValue = value;
              });
            }, // White dot
          ),
        ),
        const SizedBox(height: 50,)
      ],
    );
  }
}
