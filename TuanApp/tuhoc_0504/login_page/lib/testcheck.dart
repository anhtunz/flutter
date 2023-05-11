import 'package:flutter/material.dart';

class CheckTest extends StatefulWidget {
  const CheckTest({super.key});

  @override
  State<CheckTest> createState() => _CheckTestState();
}

class _CheckTestState extends State<CheckTest> {
  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: SizedBox(
        child: Center(
          child: Container  (color: Colors.red,
            height: 800,
            width: 400,
            child: Column(
                children:<Widget> [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Container(
                        width: 400,
                        height: 50,
                        color: Colors.blue,
                      ),
                    ],
                  )
                ],
              ),
          ),
        ),
      ),
    );
  }
}
