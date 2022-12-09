import 'package:flutter/material.dart';

class ItemSugestao extends StatelessWidget {
  const ItemSugestao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 5, 0, 5),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/60450795?v=4"
            ),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 16,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "luiz",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                Text(
                  "Luiz Fernando",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: (){},
              child: const Text(
                "Ligar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Color(0xff03960f6)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
