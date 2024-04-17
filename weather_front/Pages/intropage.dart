import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:weather/weather.dart';
import 'package:flutter/rendering.dart';
import 'package:weather_front/constants.dart';

// creating the intro page
class IntroPage extends StatefulWidget {
  const IntroPage({super.key});


  @override 
  State<IntroPage> createState() => IntroPageState();

}
//diplaying the city of the current weather
class IntroPageState extends State<IntroPage> {

final WeatherFactory _wf = WeatherFactory(api);

Weather? _weather;

@override
void initState(){
  super.initState();

  _wf.currentWeatherByCityName("Baton Rouge").then((w){
    setState((){
      _weather = w;

    });
  });
}
  @override 
  Widget build(BuildContext context){
    return Scaffold(body: _buildUI(),);
  }
  Widget _buildUI(){
    if (_weather == null){
      return const Center(
        child:  CircularProgressIndicator(),
        );
    }
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height:MediaQuery.sizeOf(context).height,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _LocHead(),
          SizedBox(
            height: MediaQuery.sizeOf(context.height * 0.08,
          ),
          _dateTime(),
        ],
      ),
    );
  }
Widget _LocHead(){
  return Text(
    _weather?.areaName ?? "",
    style: const TextStyle(
       fontSize: 20,
       fontWeight: FontWeight.w500,
       )
  );
}
// creating the date-Time widgets for the intro page 
Widget _dateTime(){
  DateTime now = _weather!.date!;
  return Column (
    children: [
      Text(
        DateFormat("h:mm a").format(now),
        style: const TextStyle(
        fontSize: 35,
      ),
      ),
      const SizedBox(
       height:10,
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Text(
          DateFormat("EEEE").format(now),
          style: const TextStyle(
            fontWeight: FontWeight.w700,
        ),
      ),
        Text (
          " ${DateFormat("d.m.y").format(now)}",
          style: const TextStyle(
            fontWeight: FontWeight.w400,
      ],
      ),
    ],
);