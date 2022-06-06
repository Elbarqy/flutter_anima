import 'package:anima/animations/parallax/parralaxHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case "/":
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: Center(
                  child: Text("works"),
                ),
              ));
    case "/paralax":
      return MaterialPageRoute(builder: (context) => ParalaxHome());
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text("404"),
          ),
        ),
      );
  }
}
