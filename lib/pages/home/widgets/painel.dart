import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interface_responsiva_package/pages/home/widgets/item-sugestao.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Painel extends StatelessWidget {
  const Painel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: TABLET)
      ],
      child: Container(
        width: 300,
        margin: const EdgeInsets.fromLTRB(35, 56, 20, 0),
        child: Column(
          children: [
            Row(
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
                        "Luiz",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey
                        ),
                      )
                    ],
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (){},
                    child: const Text(
                      "Sair",
                      style: TextStyle(
                        color: Color(0xFF0396F6),
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Sugestões para você",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white12
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "Ver tudo",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 8,),
            ItemSugestao(),
            ItemSugestao(),
            ItemSugestao()

          ],
        ),
      ),
    );
  }
}
