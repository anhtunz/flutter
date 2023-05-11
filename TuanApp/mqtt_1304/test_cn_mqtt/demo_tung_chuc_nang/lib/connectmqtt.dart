import 'dart:async';
import 'dart:io';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'custom_message.dart';


class H {

final client = MqttServerClient.withPort("smatec.com.vn", "dsfsdfsdf", 2883);
  List<CustomMessage> message = [];

  final passStatusStreamController = StreamController<List<CustomMessage>>.broadcast();
  late StreamSink<List<CustomMessage>> sinkPassStatus;
  late Stream<List<CustomMessage>> streamPassStatus;

H(){
  sinkPassStatus = passStatusStreamController.sink;
  streamPassStatus = passStatusStreamController.stream;
}
  
initMqtt() async {
    
    client.logging(on: true);
    client.setProtocolV311();
    client.keepAlivePeriod = 20;
    client.connectTimeoutPeriod = 2000; // milliseconds
    client.onConnected = onConnected;
    client.onSubscribed = onSubscribed;
    client.onDisconnected = onDisconnected;
    // client.pongCallback = pong;
    
    
    final connMess = MqttConnectMessage()
        .withClientIdentifier('Mqtt_MyClientUniqueId')
        .withWillTopic('willtopic') // If you set this you must set a will message
        .withWillMessage('My Will message')
        .startClean() // Non persistent session for testing
        .withWillQos(MqttQos.atLeastOnce);
    print('Đang kết nối với sever...');
    client.connectionMessage = connMess;
    
    
    try {
      await client.connect();
    } on NoConnectionException catch (e) {
      // Raised by the client when connection fails.
      print('EXAMPLE::client exception - $e');
      client.disconnect();
    } on SocketException catch (e) {
      // Raised by the socket layer
      print('EXAMPLE::socket exception - $e');
      client.disconnect();
    }
    const topic = 'Dart/Mqtt_client/testtopic1'; // Not a wildcard topic
    client.subscribe(topic, MqttQos.atLeastOnce);

    if (client.connectionStatus!.state == MqttConnectionState.connected) {
      print('Người dùng đã connect đến subcriber');
    } else {
      print("Người dùng chưa connect được đến subcriber");
      client.disconnect();
      // exit(-1);
    }


    client.updates!.listen((List<MqttReceivedMessage<MqttMessage?>>? c) {
      final recMess = c![0].payload as MqttPublishMessage;
      final pt =
      MqttPublishPayload.bytesToStringAsString(recMess.payload.message);
      message.add(CustomMessage(name: "may2", msg: pt));
      sinkPassStatus.add(message);
     final pubMess = recMess.payload;
       print(
          'EXAMPLE::Manually Acknowledging message id ${pubMess.variableHeader?.messageIdentifier}');
    });
    client.published!.listen((MqttPublishMessage message) {
      print(
         'EXAMPLE::Published notification:: topic is ${message.variableHeader!.topicName}, with Qos ${message.header!.qos}');
    });
      final builder = MqttClientPayloadBuilder();
      builder.addString('Hello from mqtt_client');
  }


  void Ngatketnoi(){
    client.disconnect();
    print('Đã ngắt kết nối với sever...');
    
  }

  void Ketnoilai(){
    client.connect();
    print(
        'Đã kết nối lại với sever');
  }
  
  void sendMessage(String m){
    
    message.add(CustomMessage(name: "may 1", msg: m));
    sinkPassStatus.add(message);
    final builder = MqttClientPayloadBuilder();
    builder.addString(m);
    client.publishMessage('Dart/Mqtt_client/testtopic2',MqttQos.atLeastOnce,builder.payload!);
  }
  /// The subscribed callback
  void onSubscribed(String topic) {
    //print('EXAMPLE::Subscription confirmed for topic $topic');
  }

  void onDisconnected() {
      print('Da ngat ket noi');
  }
  /// The successful connect callback
  void onConnected() {
    print(
        'Đã kết nối với sever');
  }

}

