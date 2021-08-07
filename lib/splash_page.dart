import 'package:flutter/material.dart';
import 'package:nlighten/router/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 1)).then((value) =>
          Navigator.of(context, rootNavigator: true)
              .pushReplacementNamed(Routes.homeRoute));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCCE03),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Center(
          child: Image.asset("lib/assets/icon/app-icon.png"),
        ),
      ),
    );
  }
}
