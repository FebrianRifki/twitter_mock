import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_mock_app/home_page.dart';
import 'package:twitter_mock_app/landing_page.dart';
import 'package:twitter_mock_app/login_page.dart';
import 'package:twitter_mock_app/login_with_google_page.dart';
import 'package:twitter_mock_app/register_page.dart';
import 'routing_constants.dart';

Route<dynamic> generateRoute(RouteSettings? routeSettings) {
  switch (routeSettings!.name) {
    case landingPage:
      return slideTransitionRoute(LandingPage(),
          routeSettings: RouteSettings(name: landingPage));
    case loginPage:
      return slideTransitionRoute(LoginPage(),
          routeSettings: RouteSettings(name: loginPage));
    case loginWithGooglePage:
      return slideTransitionRoute(LoginWithGooglePage(),
          routeSettings: RouteSettings(name: loginWithGooglePage));
    case registerPage:
      return slideTransitionRoute(RegisterPage(),
          routeSettings: RouteSettings(name: registerPage));
    case homePage:
      return slideTransitionRoute(HomePage(),
          routeSettings: RouteSettings(name: homePage));
    default:
      return slideTransitionRoute(LandingPage(),
          routeSettings: RouteSettings(name: landingPage));
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Akan Datang'),
          Text('Login Page'),
        ],
      )),
    );
  });
}

Route slideTransitionRoute(Widget widget, {RouteSettings? routeSettings}) {
  return PageRouteBuilder(
    settings: routeSettings,
    pageBuilder: (context, animation, secondaryAnimation) => widget,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.5, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
