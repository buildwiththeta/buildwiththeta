import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_events/firebase_options.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:theta/theta.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
    Theta.initialize(
      anonKey: 'Anon Key',
    ),
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThetaProvider(
      theme: ThemeMode.light,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage(
          title: 'Flutter Demo Home Page',
          analytics: analytics,
          observer: observer,
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
    required this.analytics,
    required this.observer,
  });

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final FirebaseAnalytics analytics;
  final FirebaseAnalyticsObserver observer;

  String get now => DateTime.now().toIso8601String();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = UIBoxController();

  @override
  void initState() {
    super.initState();
    controller.onLoaded(() async {
      await widget.analytics.logScreenView(
        screenName: controller.componentName,
      );
      await widget.analytics.logEvent(
        name: controller.componentName,
        parameters: {
          'component_id': controller.componentID,
          'branch': controller.branch,
          'created_at': widget.now,
        },
      );
    });
    controller.onError((error) async => await widget.analytics.logEvent(
          name: 'Error loading view',
          parameters: {
            'error': error.toString(),
            'component': controller.componentName,
            'component_id': controller.componentID,
            'branch': controller.branch,
            'created_at': widget.now,
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UIBox(
        'Component name',
        controller: controller,
        branch: 'Branch Name',
        errorWidget: (error) => Center(child: Text(error.toString())),
        workflows: [
          Workflow(
              'Element',
              Trigger.onTap,
              () async => await widget.analytics.logEvent(
                    name: 'Open checkout',
                    parameters: {
                      'session': '...',
                      'component': controller.componentName,
                      'component_id': controller.componentID,
                      'branch': controller.branch,
                      'created_at': widget.now,
                    },
                  )),
        ],
      ),
    );
  }
}
