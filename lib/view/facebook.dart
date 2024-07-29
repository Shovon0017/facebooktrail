

import 'package:flutter/material.dart';

class FaceBook extends StatefulWidget {
  const FaceBook({super.key});

  @override
  State<FaceBook> createState() => _FaceBookState();
}

class _FaceBookState extends State<FaceBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 370,
            ),
            CircleAvatar(
              radius: 45,child: Image.asset("images/facebook1.png",fit: BoxFit.fill,),
            ),
            const SizedBox(height: 340),
            const Text("from"),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook,color: Colors.blueAccent,),
                Text("Meta",style: TextStyle(fontSize: 20,color: Colors.blueAccent))
              ],
            )
          ],
        ),
      ),
    );
  }
}
