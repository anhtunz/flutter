import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showhidepassword = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SignUp Page",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Container(
                padding: const EdgeInsets.fromLTRB(70, 20, 0, 40),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ),
              const Text(
                'Username',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                width: 300,
                child: const TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your username',
                  ),
                ),
              ),
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                width: 300,
                child: const TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your email',
                  ),
                ),
              ),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget> [
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                    width: 300,
                    child: TextFormField(
                      obscureText: _showhidepassword,
                      decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Password',
                      suffixIcon: togglePassword(),
                      ),
                    ),
                  ),
                ],
              ),
              const Text(
                'Confirm Password',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget> [
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                    width: 300,
                    child: TextFormField(
                      obscureText: _showhidepassword,
                      decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Password',
                      suffixIcon: togglePassword(),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(' By clicking Sign Up you agree to Terms and\n Conditions and that you have read our Privacy\n Policy',
                        ),
                        // Text('Terms & Conditions ',
                        // softWrap: true,
                        // overflow: TextOverflow.clip,
                        //   style: TextStyle(
                        //     color: Colors.red,
                        //   ),
                        // ),
                        // Text('and that you have read our ',
                        // overflow: TextOverflow.clip,
                        // softWrap: true,
                        // ),
                        // Text('Privacy Policy ',
                        // softWrap: true,
                        //   overflow: TextOverflow.clip,
                        //   style: TextStyle(
                        //   color: Colors.red,
                        //   ),
                        // ),
                      ],
                ),
              ),
              Container(
                width: 260,
                height: 80,
                padding: const EdgeInsets.fromLTRB(50, 30, 0, 0),
                child: ElevatedButton(
                onPressed: (){
                  // Chưa có thông báo hiện ra
                  final snackBar = SnackBar(
                    content: const Text('Yay! A SnackBar!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  ); 
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }, 
                child: const Text('SIGN UP'),
                // Chua radius duoc
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
  Widget togglePassword(){
    return IconButton(
      onPressed:(){
        setState(() {
          _showhidepassword = !_showhidepassword;
        });
      },
     icon: _showhidepassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
     color: Colors.grey,
     );
  }
}