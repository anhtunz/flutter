import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('I will come backk!!!'),
      ),
      body: Center(
        child:_buildImageColumn(),
      ),
      ),

    );
  }
  Widget _buildImageColumn(){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 10,
          color: Colors.black12,         
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          _buildImageRow(1),
          _buildImageRow(4),
          _buildImageRow(7),
          
        ],
      ),
    );
  }

  Widget _buildDecorateImg(int imgIndex) => Expanded(
    child: 
      Container(
        decoration: BoxDecoration(
          border: Border.all(
          width: 10,
          color: Colors.black12,         
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        margin: const EdgeInsets.all(4),
        child: Image.asset('assets/images/pic$imgIndex.jpg'),
      ),
  );

  Widget _buildImageRow(int imgIndex) => Row(
    children: [
      _buildDecorateImg(imgIndex),
      _buildDecorateImg(imgIndex + 1),
      _buildDecorateImg(imgIndex + 2),
    ],
  );
}



