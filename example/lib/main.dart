import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:responsive_svg_icons/responsive_svg_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resoponsive Svg Icons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Resoponsive Svg Icons'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LayoutBuilder(builder: (c, cs) {
              double size = min(cs.maxWidth, cs.maxHeight);
              return SvgIcon(
                size: size,
                icon: ResponsiveSvgIcons.cart,
              );
            }),
            IconTheme(
                data: const IconThemeData(size: 250),
                child: SvgIcon(icon: ResponsiveSvgIcons.cart)),
          ],
        ),
      ),
    );
  }
}
