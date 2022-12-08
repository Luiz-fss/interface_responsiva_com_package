import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:interface_responsiva_package/pages/home/widgets/conteudo-storie.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ListagemStories extends StatelessWidget {
  const ListagemStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;

    print(ResponsiveWrapper.of(context));

    return Container(
      height: 110,
      margin: EdgeInsets.symmetric(vertical: _retornarMagemPelaPlataforma(mobile)),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (context,index){
          return const SizedBox(width: 16,);
        },
        itemCount: 16,
        itemBuilder: (context,index){
          return ConteudoStorie();
        },
      ),
    );
  }

  double _retornarMagemPelaPlataforma(bool mobile){
    if(mobile){
      return 5;
    }else{
      return 35;
    }
  }
}
