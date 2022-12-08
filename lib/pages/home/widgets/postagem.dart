import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Postagem extends StatelessWidget {
  const Postagem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _retornarMargemParaDesktop(desktop)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
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
                const Expanded(
                  child: Text(
                    "Luiz Fernando",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),
                  ),
                ),
                GestureDetector(
                  child: const Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Image.network(
              "https://avatars.githubusercontent.com/u/60450795?v=4"
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Row(
              children: [
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.favorite_border),
                  color: Colors.white,
                ),
                const SizedBox(width: 4,),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.message_outlined),
                  color: Colors.white,
                ),
                const SizedBox(width: 4,),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.send),
                  color: Colors.white,
                ),
                const SizedBox(width: 4,),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.bookmark_border),
                  color: Colors.white,
                ),
                const SizedBox(width: 4,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Curtido por Luiz F. e outras 1000 pessoas",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 8,),
                Text(
                  "HÁ 1 HORA",
                  style: TextStyle(color: Colors.white,fontSize: 10),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          _exibirCaixaDeComentario(desktop)
        ],
      ),
    );
  }

  Widget _exibirCaixaDeComentario(bool desktop){
    if(desktop){
      return Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                  isCollapsed: true,
                  hintText: "Adicione um comentário",
                  hintStyle: TextStyle(
                    fontSize: 13,
                    color: Colors.white
                  )
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: (){},
            child: Text("Publicar",),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
          )
        ],
      );
    }else{
      return Container();
    }
  }

  double _retornarMargemParaDesktop(bool desk){
    if(desk){
      return 35;
    }else{
      return 0;
    }
  }
}
