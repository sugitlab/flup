import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flup/pages/basic_page.dart';
import 'package:flup/pages/basic_title_page.dart';
import 'package:flup/pages/sbs_page.dart';
import 'package:flup/pages/sbsww_page.dart';
import 'package:flup/md_parser/separator.dart';

class FlupStyle {
  final String? coverImageUrl;
  const FlupStyle({
    this.coverImageUrl,
  });
}

class Flup extends StatefulWidget {
  const Flup({
    Key? key,
    this.style,
    this.title = "Flup Slide",
    required this.md,
  }) : super(key: key);

  final String md;
  final String title;
  final FlupStyle? style;
  @override
  _FlupState createState() => _FlupState();
}

class _FlupState extends State<Flup> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    var max = mdSeparator(widget.md).length;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: widget.title,
      theme: ThemeData.light(),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SlideScreen(
            child: GestureDetector(
              onTap: () {
                setState(
                  () => {
                    page = (page == max - 1) ? 0 : (page + 1),
                  },
                );
              },
              child: IndexedStack(
                index: page,
                children: mdSeparator(widget.md).asMap().entries.map((entry) {
                  if (entry.key == 0) {
                    return BasicTitlePage(
                      coverUrl: widget.style?.coverImageUrl,
                      page: entry.key + 1,
                      md: entry.value,
                    );
                  } else if (entry.key == 1) {
                    return BasicPage(page: entry.key + 1, md: entry.value);
                  } else if (entry.key == 2) {
                    return SbsPage(
                        coverUrl: widget.style?.coverImageUrl,
                        page: entry.key + 1,
                        md: entry.value);
                  } else if (entry.key == 3) {
                    return SbswwPage(
                        widget: const SampleMyWidget(),
                        page: entry.key + 1,
                        md: entry.value);
                  } else {
                    return BasicPage(page: entry.key + 1, md: entry.value);
                  }
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SlideScreen extends StatelessWidget {
  const SlideScreen({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Container(
        color: Theme.of(context).canvasColor,
        child: child,
      ),
    );
  }
}

class SampleMyWidget extends StatefulWidget {
  const SampleMyWidget({Key? key}) : super(key: key);
  @override
  _SampleMyWidgetState createState() => _SampleMyWidgetState();
}

class _SampleMyWidgetState extends State<SampleMyWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 300,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Counter',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            ElevatedButton(
              child: const Text('count up'),
              onPressed: () {
                setState(() => counter = counter + 1);
              },
            ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blueGrey[800],
      ),
    );
  }
}
