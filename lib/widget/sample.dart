import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  const Sample({Key? key}) : super(key: key);
  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
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
