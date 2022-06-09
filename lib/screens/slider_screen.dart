import 'package:flutter/material.dart';
import 'package:widgets_app/theme/appTheme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 500,
                value: _sliderValue,
                activeColor: AppTheme.primary,
                onChanged: (value) {
                  _sliderValue = value;
                  setState(() {});
                }),
            Image(
              image: const NetworkImage('https://i.pinimg.com/564x/19/22/2b/19222b8922332ef9271b5718cbf20c02.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,),
          ],
        ),
      ),
    );
  }
}
