import 'package:flutter/material.dart';

class NLighten extends StatelessWidget {
  const NLighten({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      title: 'NLighten',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: const Center(
            child: Text(
          "NLighten",
          style: const TextStyle(fontSize: 24),
        )),
      ),
    );
  }
}
