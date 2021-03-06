import 'package:flutter/material.dart';
import 'package:flutter_button_type/flutter_button_type.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Buttons Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _height = _size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            FlutterTextButton(
              buttonText: 'Text Button',
              buttonHeight: _height * 0.2,
              onTap: () {},
            ),
            SizedBox(height: _height * 0.02),
            FlutterCircleButton(
              buttonColor: Colors.pink,
              buttonBorderColor: Colors.transparent,
              buttonIcon: const Icon(
                Icons.camera_alt,
                size: 60,
              ),
              onTap: () {},
            ),
            SizedBox(height: _height * 0.02),
            FlutterIconButton(
              buttonText: 'Take Picture',
              buttonColor: Colors.green,
              buttonIcon: const Icon(Icons.camera_alt),
              onTap: () {},
            ),
            SizedBox(height: _height * 0.02),
            FlutterOutlineIconButton(
              buttonText: 'Take Picture',
              buttonIcon: const Icon(Icons.camera_alt),
              onTap: () {},
            ),
            SizedBox(height: _height * 0.02),
            FlutterCircleButton(
              buttonIcon: const Icon(Icons.camera_alt),
              onTap: () {},
            ),
            SizedBox(height: _height * 0.02),
          ],
        ),
      ),
    );
  }
}
