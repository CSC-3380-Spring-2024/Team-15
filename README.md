# Team-15
Official documentation for 'WeatherTether': a cross platform weather app that combines gameplay with functional and real time weather forecasts. The objective of this application is to motivate the users to check the forecasts daily so they are not left unprepared. 

*All tools mentioned are free of charge and begginner friendly. All tools provided in this README file have easily and readily accessable explainations, articles, and youtube videos that can aid in your development!

*Prereq development tools:*

*****************************************************************************************************************
// Weather Portion!!//



Flutter for app development
    This allows more versatility that React Native. You can develope for both IOS and Android simultaneously (See official documentation for dependencies and proper set up): [Flutter Official website](https://flutter.dev/multi-platform/mobile)

GOTDOT (IGUANA)
    Platform for development of video games. (See official documentation for dependencies, proper set up and all uses): https://godotengine.org/download/windows/

OpenWeather API (3hr 5 day forecast)
    Openweather API is a weather API that allows you to have access to free real time weather data according to the city/location. Their free subscription options offer all you will need for your first build. (See official documentation for dependencies, proper set up and all uses): https://openweathermap.org/

PostMan
    This development tool is a website that allows you to test your api calls before development. It will show you working output to compare to. This is also how you can check you weather API's format for neccessary classes: https://web.postman.co/

Rest Client extension (VsCode) by Huachao Mao
    Another option for testing your API directly in VScode. Simple and easy. Just install the extention, create a file with the ending ".http", and use "get {http link}". After clicking "send request" above your get command, your testing window will open.

Geolocator by Pub.dev
    Documentation and instructions for proper use and installation of the flutter Geolocator pluggin. This is neccassary for any Geolocational services. Please follow proper steps for set-up @: https://pub.dev/packages/geolocator


*Resources/tutorials followed and/or found helpful:*

Flutter Weather App Tutorial | OpenWeather API Weather App Flutter | Tutorial For Beginners By Hussain Mustafa:  https://www.youtube.com/watch?v=6wTl0yqgBzU&t=288s

How To start a Flutter project within an Already existing project: https://docs.flutter.dev/tools/vs-code

Handling Events and User Input in Flutter By Abhishek Dhanani for Flutter Angency: https://flutteragency.com/handling-events-and-user-input-in-flutter/#:~:text=The%20TextField%20widget%20can%20be%20used%20to%20manage,const%20TextFieldEventDemo%28%7Bsuper.key%7D%29%3B%20%40override%20_TextFieldEventDemoState%20createState%28%29%20%3D%3E%20_TextFieldEventDemoState%28%29%3B%20%7D

Navigation Bar class from official Flutter webpage:\
https://api.flutter.dev/flutter/material/NavigationBar-class.html


*Breakdown of Files needed*
- In your flutter Lib file: Create a "constants.dart" or "const.dart" file to hold your api key. You can copy our exactly just paste in your own key.
- Weather_front: This is wear the main weather program happens. This page is responsible for the intorductory screen of the app asking for location and displaying the basic weather information. This file also includes the interactive play button that takes the user to game play.

*Widgets included*
- LocationInputWidget.dart: Here I made a widget that uses user input instead of geolocation to find the user's current location
- NavWidget.dart: This was started but will be finished in dev file. Here we create a front page navigation from the front weather page to game play. 