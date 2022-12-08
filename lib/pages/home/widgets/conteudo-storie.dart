import 'package:flutter/material.dart';

class ConteudoStorie extends StatelessWidget {
  const ConteudoStorie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.green
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft
            )
          ),
          alignment: Alignment.center,
          child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black
            ),
            alignment: Alignment.center,
            child: const CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/60450795?v=4"
              ),
            ),
          ),
        ),
        Text(
          "Luiz F.",
          style: TextStyle(
            fontSize: 12
          ),
        )
      ],
    );
  }
}
