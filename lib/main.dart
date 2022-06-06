import 'package:anima/routes/onGenerateRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const AnnotatedRegion<SystemUiOverlayStyle>(
    value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/paralax',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
