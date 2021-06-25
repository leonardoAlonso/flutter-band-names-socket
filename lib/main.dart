import 'package:band_names/services/socket_service.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:band_names/src/status.dart';
import 'package:band_names/src/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => SocketService())],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          initialRoute: 'home',
          routes: {'home': (_) => HomePage(), 'status': (_) => StatusPage()},
        ));
  }
}
