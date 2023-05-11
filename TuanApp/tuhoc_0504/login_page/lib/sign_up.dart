import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _showhidepassword = true;

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

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: "SignUp Page",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Container(
            height: screenHeight,
            width: 400,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                const SizedBox(height: 25.0,),
                Row(
                  children: const [
                    Text(
                      'Username',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0,),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your username',
                  ),
                ),
                const SizedBox(height: 10.0,),
                Row(
                  children: const [
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0,),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your email',
                  ),
                ),
                const SizedBox(height: 10.0,),
                Row(
                  children: const [
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0,),
                Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    TextFormField(
                        obscureText: _showhidepassword,
                        decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                         suffixIcon: togglePassword(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0,),
                Row(
                  children: const [
                    Text(
                      'Confirm Password',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0,),
                Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget> [
                       TextFormField(
                        obscureText: _showhidepassword,
                        decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: 'Password',
                        suffixIcon: togglePassword(),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 25.0,),
                StyledText(
                  text: 'By clicking Sign Up, you agree to our '
                  '<red>Terms & Conditions</red> and that '
                  'you have read our <red>Privacy Policy</red>',
                  tags: {
                    'red': StyledTextTag(style: const TextStyle(color: Colors.red)),
                  },
                  ),const SizedBox(height: 10.0,),
                SizedBox(
                  width: 120,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      final snackBar = SnackBar(
                        content: const Text('Da bam nut dang ki'),
                        action: SnackBarAction(
                          label: 'Xong',
                          onPressed: () {
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: const Text('SIGN UP'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}