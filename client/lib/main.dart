import 'package:client/test.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:network_info_plus/network_info_plus.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GRPC Client'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? myIP;
  String remoteIP = "";
  String log = "";
  bool running = false;
  MyServiceClient? myServiceClient;
  int timeout = 50;

  Future<void> getIP () async {
    if (myIP != null) {
      return;
    }
    final info = NetworkInfo();
    String? ip= await info.getWifiIP();
    setState(() {
      myIP = ip;
      if (ip != null) {
        remoteIP = ip;
      }
    });
  }

  void resetWidget(){
    setState((){});
  }

  void grpc() async{
    if (running) {
      return;
    }
    setState(() {
      running = true;
      log = "Started $remoteIP, timeout: $timeout";
    });

    ChannelOptions options = ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
        codecRegistry:
          CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()])
    );
    ClientChannel channel=ClientChannel(remoteIP, port: 25000, options: options);
    myServiceClient = MyServiceClient(channel);
    resetWidget();
    CallOptions callOptions=CallOptions(timeout: Duration (milliseconds: timeout));
    MyRequest request = MyRequest();
    request.a=true;
    request.b=true;
    request.c=true;
    for (int j=0;j<5;j++) {
      try {
        MyResponse response = await myServiceClient!.getService(
            request, options: callOptions);
        log += "\nGood response";
      } on GrpcError catch (e) {
        log +=
        "\nGRPC error: code ${e.code}, codename ${e.codeName}, message ${e
            .message}";
      }
    }
    setState(() {
      log+= "\nEnded";
      running = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (myIP == null) {
      getIP();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Local IP"),
            Text(myIP==null?"Unknown":myIP!),
            const Text("Remote IP"),
            TextFormField(
              onChanged: (text){remoteIP = text;},
              initialValue: remoteIP,
            ),
            const Text("Timeout (default 50)"),
            TextFormField(
              onChanged: (text){
                int? t = int.parse(text);
                if (t != null) {
                  timeout = t;
                }
                },
              initialValue: remoteIP,
            ),
            TextButton(
              onPressed: grpc,
              child: Text(running?'Waiting':'Start'),
            ),
            const Text("Log"),
            Text(log),
          ]
        ),
      ),
    );
  }
}
