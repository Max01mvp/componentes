import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Slider'),
      ),
        body: Container(
          child: Text('Slider'),
        ),
    );
  }
}