import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:quiz_competition_client/quiz_competition_client.dart';
import 'package:flutter/material.dart';
import 'package:quiz_competition_flutter/Client/ClientDetails.dart';
import 'package:quiz_competition_flutter/Client/Clients.dart';
import 'package:quiz_competition_flutter/EventController.dart';

import 'package:quiz_competition_flutter/controllers/EventsController.dart';
import 'package:quiz_competition_flutter/controllers/TeamsController.dart';
import 'package:quiz_competition_flutter/controllers/question_controller.dart';
import 'package:quiz_competition_flutter/screens/quiz/quiz_screen.dart';
import 'package:quiz_competition_flutter/screens/serverside/dashboard.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import 'screens/welcome/welcome_screen.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
var client = Client(
  'http://192.168.100.13:8080/',
  authenticationKeyManager: FlutterAuthenticationKeyManager(),
)..connectivityMonitor = FlutterConnectivityMonitor();
late SessionManager sessionManager;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sessionManager = SessionManager(
    caller: client.modules.auth,
  );
  await sessionManager.initialize();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ClientProvider(),
    )
  ], child: const MyApp()));
  configLoading();
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    connectConnection();
  }

  @override
  void dispose() {
    //WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.detached) {
      // The app is going into the background or is being killed
      sendMessage();
    } else if (state == AppLifecycleState.resumed) {
      if (Get.find<ClientGetController>()
          .nameController
          .value
          .text
          .isNotEmpty) {
        await client.pixorama.sendStreamMessage(MyMessage(
            todo: 'connected',
            value: Get.find<ClientGetController>()
                .nameController
                .value
                .text
                .trim()));
      }
    }
  }

  sendMessage() async {
    await client.pixorama.sendStreamMessage(MyMessage(
        todo: 'disconnected',
        value:
            Get.find<ClientGetController>().nameController.value.text.trim()));
  }

  connectConnection() async {
    var handle = StreamingConnectionHandler(
      client: client,
      listener: (c) {
        int v = 0;
        if (c.status == StreamingConnectionStatus.connected) {
          v = 1;
        } else if (c.status == StreamingConnectionStatus.connecting) {
          v = 2;
        } else if (c.status == StreamingConnectionStatus.disconnected) {
          v = 3;
        } else if (c.status == StreamingConnectionStatus.waitingToRetry) {
          v = 4;
        }
        try {
          Get.find<ClientGetController>().isConnected.value = v;
        } catch (e) {}
      },
    );
    handle.connect();
    handleMessages();
    // await client.openStreamingConnection();
  }

  handleMessages() async {
    await for (var v in client.pixorama.stream) {
      try {
        print('----------------code------');
        print(v);
        if (v is OnGoingEvent) {
          context.read<ClientProvider>().updateOnGoingQUestion(v);
        } else if (v is MyMessage) {
          if (v.todo == 'hide') {
            context
                .read<ClientProvider>()
                .changeHiddenState(toHide: bool.tryParse(v.value) ?? false);
          }
          if (v.todo == 'issue') {
            EasyLoading.show(status: v.value, dismissOnTap: true);
          }
          if (v.todo == 'connected' || v.todo == 'disconnected') {
            //EasyLoading.showToast(v.value, dismissOnTap: true);
            context.read<ClientProvider>().addConnectedTeam(
                teamName: v.value, toAdd: v.todo == 'connected');
            if (v.todo == 'connected') {
              if (Get.find<ClientGetController>().nameController.value.text ==
                      'admin' &&
                  v.value == 'admin') {
                Get.offAll(const DashBoardScreen());
              } else if (Get.find<ClientGetController>()
                          .nameController
                          .value
                          .text ==
                      'admin1' &&
                  v.value == 'admin1') {
                Get.to(const QuizScreen());
              } else if (Get.find<ClientGetController>()
                      .nameController
                      .value
                      .text ==
                  v.value) {
                Get.to(const QuizScreen());
              }
            }
          }
        }
      } catch (e) {
        print('========isssuee when handling messages');
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Get.put(OnGoingEventController());
    Get.put(EventController());
    Get.put(ClientGetController());

    Get.put(QuestionController());
    Get.put(TeamsController());
    //Get.put(OnGoingEventController());

    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        builder: EasyLoading.init(),
        title: 'Serverpod Demo',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        home: WelcomeScreen());
  }
}
