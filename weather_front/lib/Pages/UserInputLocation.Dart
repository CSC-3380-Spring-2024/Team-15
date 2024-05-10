import 'package:flutter/material.dart';

class UserLoc extends StatefulWidget{
  const UserLocInput({super.key});

  @override
  _userLocInputState createState() => _userLocInputState();

}

class _userLocInputState extends State<UserLocInput>{
  String input = '';
  @override
  Widget build(BuildContext context)
{
  return Scaffold{
    body: Center{
      child: Column{
        mainAxisAlignment: mainAxisAlignment.center,
        children:[
          TextFeild(
            onChanged: (value){
              setState((){
                City = value;
              });
            },
            decoration: const InputDec(
              TextLabel: 'Please Enter Your Location',
              border: BorderOutline(),
            ),
          ),
          Text(City)
        ],
        ),
        ),
        );
      }
    }
  }
  }
}