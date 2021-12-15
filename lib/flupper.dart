import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flupper/mdfx/parser.dart';

class Flupper extends StatefulWidget {
  const Flupper({Key? key}) : super(key: key);
  @override
  _FlupperState createState() => _FlupperState();
}

class _FlupperState extends State<Flupper> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flupper Slides',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        // child: Text(parse(md)),
        child: GestureDetector(
          onTap: () {
            setState(() => page = (page + 1) % 2);
          },
          child: IndexedStack(
            index: page,
            children: const [
              Markdown(
                data: md,
              ),
              Markdown(
                data: md2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const md = '''
# header

body

## header2

body2
''';

const md2 = '''
# header

second

## header2

second body 
''';
