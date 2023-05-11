import 'package:flutter/material.dart';
import 'package:login_page/home.dart';
import 'package:login_page/sign_up.dart';
import 'package:url_launcher/url_launcher.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
  final Uri _url = Uri.parse('https://facebook.com');
  final Uri _url1 = Uri.parse('https://gmail.com');
   final Uri _url2 = Uri.parse('https://instagram.com');


  Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $_url');
  }
}
//   Future<void> _launchUrl1() async {
//   if (!await launchUrl(_url1)) {
//     throw Exception('Could not launch $_url');
//   }
// }
//   Future<void> _launchUrl2() async {
//   if (!await launchUrl(_url2)) {
//     throw Exception('Could not launch $_url');
//   }
// }

class _LoginPageState extends State<LoginPage> {
  bool _showhidepassword = true;
  TextEditingController emailController =  TextEditingController();
  TextEditingController passController =  TextEditingController();
  var emailErr = 'Email không hợp lệ';
  var passErr = 'Mật khẩu phải trên 6 kí tự';
  var emailInvalid = false;
  var passInvalid = false;

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _showhidepassword = !_showhidepassword;
        });
      },
      icon: _showhidepassword
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    void onSignInClick(){
      setState(() {
        if(emailController.text.length < 6 || !emailController.text.contains('@')){
          emailInvalid = true;
        }
        else{
          emailInvalid = false;
        }
        if(passController.text.length < 6 ){
          passInvalid = true;
        }
        else{
          passInvalid = false;
        }
        if(!emailInvalid && !passInvalid){
          Navigator.push(
            context, 
            MaterialPageRoute(builder:(context) => const HomePage(),
            )
            );
        }
      });
    }
    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Center(
          child: Container(
            height: screenHeight,
            width: 400,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'WELCOME TO MY APP',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
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
                const SizedBox(
                  height: 10.0,
                ),
                Form(child: Column(
                  children: [
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your email',
                        errorText: emailInvalid ? emailErr : null ,
                      ),
                      onChanged:(value){
                        if(value.isEmpty){
                          setState(() {
                            value = 'Nhap gia tri';
                          });
                        }
                      },
                    ),
                  ],
                )
                ),
                const SizedBox(
                  height: 10.0,
                ),
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
                const SizedBox(
                  height: 10.0,
                ),
                Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    TextFormField(
                      controller: passController,
                      obscureText: _showhidepassword,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: 'Password',
                        suffixIcon: togglePassword(),
                        errorText: passInvalid ? passErr : null,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 120,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: onSignInClick,
                    child: const Text('SIGN IN'),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: Stack(
                    children: [
                      const Align(
                          alignment: Alignment.center,
                          child: Divider(
                            height: 2,
                          )),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7.0),
                              border: Border.all(width: 1.0)),
                          child: const Text(" OR "),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 325,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Chuyển đến trang web khi biểu tượng được nhấn
                          _launchUrl(_url);
                        },
                        child: const Icon(
                            Icons.facebook,
                            color: Colors.blue,
                            size: 40,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Chuyển đến trang web khi biểu tượng được nhấn
                          _launchUrl(_url1);
                        },
                        child: const Icon(
                            Icons.mail,
                            color: Colors.blue,
                            size: 40,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Chuyển đến trang web khi biểu tượng được nhấn
                          _launchUrl(_url2);
                        },
                        child: const Icon(
                            Icons.person,
                            color: Colors.blue,
                            size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(' Not a user? '),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}
