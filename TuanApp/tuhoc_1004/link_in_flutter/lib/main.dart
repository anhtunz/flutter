import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

 final Uri _url = Uri.parse('https://facebook.com');

// void main() => runApp(
//       const MaterialApp(
//         home: Material(
//           child: Center(
//             child: ElevatedButton(
//               onPressed: _launchUrl,
//               child: Text('Show Facebook homepage'),
//             ),
//           ),
//         ),
//       ),
//     );

void main(List<String> args) {
  runApp(const MyApp());
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hehehe',
      home: Scaffold(
        appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
          child: Column(
            children: <Widget> [
              GestureDetector(
                onTap: () {
                  _launchUrl();
                },
                child: const Icon(
                  Icons.link,
                  size: 48.0,
                ),
              )
            ],
          ),
        ),
      ),
      );
  }
}