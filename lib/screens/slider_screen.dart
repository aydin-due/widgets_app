import 'package:flutter/material.dart';
import 'package:widgets_app/theme/appTheme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 500,
              value: _sliderValue,
              activeColor: AppTheme.primary,
              onChanged: _sliderEnabled ? (value) {
                _sliderValue = value;
                setState(() {});
              }
              : null
              ),
          
          // Checkbox(
          //     value: _sliderEnabled,
          //     onChanged: (value) {
          //       _sliderEnabled = value ?? true;
          //       setState(() {});
          //     }),
          
          // Switch.adaptive(
          //   value: _sliderEnabled, 
          //   onChanged:  (value)=> setState(() {_sliderEnabled =value ?? true;})),
          
          CheckboxListTile(
            title: const Text('Habilitar slider'),
            activeColor: AppTheme.primary,
            value: _sliderEnabled, 
            onChanged: (value)=> setState(() {_sliderEnabled =value ?? true;})),
          
          SwitchListTile.adaptive(
            title: const Text('Habilitar slider'),
            activeColor: AppTheme.primary,
            value: _sliderEnabled, 
            onChanged: (value)=> setState(() {_sliderEnabled =value ?? true;})),

          const AboutListTile(), //licencias usadas

          Expanded(
            // los widgets hijos toman el espacio restante
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://i.pinimg.com/564x/19/22/2b/19222b8922332ef9271b5718cbf20c02.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
