import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mqtt_client_sample/custom_message.dart';
import 'connectmqtt.dart';

Future<void> main() async {
  
  runApp(const MainApp());
}
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  
  final  _textnhapvao = TextEditingController();
  late H h;

  @override
  void initState() {
    h = H();
    h.initMqtt();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MQTT Conection'),
        ),
        body: Center(         
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              SizedBox(
                child: Column(
                  children: [
                    TextField(
                      controller: _textnhapvao,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nhập gì đấy...',
                      ),
                    ),
                    ElevatedButton(onPressed: (){
                      h.sendMessage(_textnhapvao.text);
                      // handleMessage(message);
                      
                    }, child: const Text('Gửi')),
                  ],
                ),
              ),
              StreamBuilder<List<CustomMessage>>(
                stream: h.streamPassStatus,
                initialData: [],
                builder: (context, snapshot) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text("${snapshot.data![index].name}: ${snapshot.data![index].msg}"),
                        );
                      },
                    ),
                  );
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
