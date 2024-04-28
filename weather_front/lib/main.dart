import 'package:flutter/material.dart';
import 'LocationInputWidget.Dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/weather.dart';
import 'package:weather_front/constants.dart';
import 'NavWidget.dart';



class HomePage extends StatefulWidget {
  final String locInput; // Add a parameter for location input
  const HomePage({Key? key, required this.locInput}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState(locInput: '');
}

class _HomePageState extends State<HomePage> {
  
  final String locInput; // Declaring as a class-level variable
  _HomePageState({required this.locInput});

  final WeatherFactory _wf = WeatherFactory(api);

  Weather? _weather;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    _wf.currentWeatherByCityName(locInput).then((w){
      setState(() {
      _weather = w;  
      });
    } ,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildUI());
  }
  

 Widget _buildUI() {
  if (_weather == null){
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
  return SizedBox(
   width: MediaQuery.sizeOf(context).width,
   height: MediaQuery.sizeOf(context).height, 
   child: Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      _locationHeader(),
      SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.08,
      ),
      _dateTimeInfo(),
      SizedBox(
        height: MediaQuery.sizeOf(context).height *0.05,
      ),
      _weatherIcon(),
      SizedBox(
        height: MediaQuery.sizeOf(context).height *0.02,
      ),
      _currentTemp(),
      SizedBox(
        height: MediaQuery.sizeOf(context).height *0.02,
      ),
      _extraInfo(),

     ],
    ),
   );   
 }

 Widget _locationHeader(){
 return Text(
   _weather?.areaName ?? "",
   style: const TextStyle(
     fontSize: 20,
     fontWeight: FontWeight.w500,
    ),
  );
 }

 Widget _dateTimeInfo(){
  DateTime now = _weather!.date!;
  return Column(
    children: [
      Text(
        DateFormat("h: mm a").format(now),
        style: const TextStyle(
          fontSize: 35,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            DateFormat("EEEE").format(now),
            style: const TextStyle(
              fontWeight: FontWeight.w700,
        ),
      ),
      Text(
            DateFormat("yMd").format(now),
            style: const TextStyle(
              fontWeight: FontWeight.w700,
        ),
      ),
     ],
     )
    ],
  );
 }
 Widget _weatherIcon(){
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: MediaQuery.sizeOf(context).height * 0.20,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: NetworkImage(
                  "http://openweathermap.org/img/wn/${_weather?.weatherIcon}@4x.png"),
            ),
          ),
        ),
        Text(
          _weather?.weatherDescription ?? "",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),


    ],
  );

 }

 Widget _currentTemp(){
  return Text(
    "${_weather?.temperature?.fahrenheit?.toStringAsFixed(0)}° F",
    style: const TextStyle(
      color: Colors.black,
      fontSize: 90,
      fontWeight: FontWeight.w500,
    )
  );
 }

Widget _extraInfo(){
  return Container(
    height:MediaQuery.sizeOf(context).height * 0.15,
    width: MediaQuery.sizeOf(context).width *0.80,
    decoration: BoxDecoration(
      color: Colors.deepPurpleAccent,
      borderRadius: BorderRadius.circular(
        20,
      ),
    ),
    padding: const EdgeInsets.all(
      8.0,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Max: ${_weather?.tempMax?.fahrenheit?.toStringAsFixed(0)}° F",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Text("Min: ${_weather?.tempMin?.fahrenheit?.toStringAsFixed(0)}° F",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Wind: ${_weather?.windSpeed?.toStringAsFixed(0)}m/s",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Text(
                "Humidity: ${_weather?.humidity?.toStringAsFixed(0)}%",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                )
          ],
        )
      ],
    ),
  );
 }
 
}

