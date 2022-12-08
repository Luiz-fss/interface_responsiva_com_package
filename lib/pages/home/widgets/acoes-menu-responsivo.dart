import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AcoesMenuResponsivo extends StatelessWidget {
  const AcoesMenuResponsivo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          child: IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
          visible: false,
          visibleWhen: [
            Condition.smallerThan(name: TABLET)
          ],
        ),
        const SizedBox(width: 4,),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.home),
        ),
        const SizedBox(width: 4,),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.send),
        ),
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.favorite_border),
        ),
        const SizedBox(width: 4,),
        const SizedBox(width: 16,),
        const CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              "https://avatars.githubusercontent.com/u/60450795?v=4"
          ),
        )
      ],
    );
  }
}
