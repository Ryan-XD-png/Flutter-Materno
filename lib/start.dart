import 'package:flutter/material.dart';
import 'package:flutter_mae/love_words.dart';
import 'dart:ui';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Você é muito especial',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Te Amo Muito Mãe",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 0, 0),
              fontSize: 25,
              decoration: TextDecoration.underline,
              decorationStyle:TextDecorationStyle.dotted,
              decorationColor: Color.fromARGB(255, 255, 0, 0),
              fontWeight: FontWeight.bold,
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 15, 0),
                child: Center(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 2),
                    child: Icon(
                      Icons.favorite,
                      color: const Color.fromARGB(55, 38, 38, 41),
                      size: 200,
                    ),
                  ),
                ),
              ),
              Center(
                child: IconButton.filled(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoveWords()),
                    );
                  },
                  icon: Icon(Icons.favorite, color: Colors.red, size: 200),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
