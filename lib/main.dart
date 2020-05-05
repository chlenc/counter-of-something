import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeapp/stores/root_store.dart';
import 'Components/App.dart';
import 'Components/Settings.dart';

void main() => runApp(Provider.value(value: RootStore(), child: Root()));

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}

class _MyAppState extends State<MyApp> {

  @override
  void didChangeDependencies() {
    Provider.of<RootStore>(context).loadStoreData();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter of something',
      initialRoute:  '/',
      routes: {
        '/': (context) => App(title: 'Counter of something'),
        '/settings': (context) => Settings(),
      },
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}