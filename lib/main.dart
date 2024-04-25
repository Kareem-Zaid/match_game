import 'dart:math';
import 'package:flutter/material.dart';

// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Match Me F U Can',
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.purple[700],
          title: const Center(
            child: Text(
              'تطابق الصورتين',
              style: TextStyle(fontFamily: 'Cairo', color: Colors.white),
            ),
          ),
        ),
        body: const ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftimagenumber = 1;
  int rightimagenumber = 2;
  void changeImage() {
    leftimagenumber = Random().nextInt(9) + 1;
    rightimagenumber = Random().nextInt(9) + 1;
  }
  // Creating a function

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          rightimagenumber == leftimagenumber ? 'Congrats!' : 'Try again',
          style: const TextStyle(fontSize: 40, color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                      // Calling the function
                    });
                  },
                  child: Image.asset('images/image-$leftimagenumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                    });
                  },
                  child: Image.asset('images/image-$rightimagenumber.png'),
                ),
              ),
            ],
          ),
        ),
        const Text(
          'KZ',
          style: TextStyle(fontSize: 24, color: Colors.purpleAccent),
        ),
      ],
    );
  }
}
