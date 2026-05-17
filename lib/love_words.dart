import 'package:flutter/material.dart';
import 'package:flutter_mae/start.dart';
import 'texto.dart';


class LoveWords extends StatelessWidget {
  const LoveWords({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Center(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Start()),
              );
            },
            child: Text(
              "Meu Amor",
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: palavras.length,
        itemBuilder: (context, index) {
          return Card( color: Colors.white,
          elevation: 0,
          child: Column(
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(palavras[index].word,
                textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                  ),),
              ),
              SizedBox(height: 20,),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(palavras[index].url,
              width: 300,height:350,fit: BoxFit.cover,),
              ),
              SizedBox(height: 20,),
            ],
          ));
        },
      ),
    );
  }
}
