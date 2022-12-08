import 'package:flutter/material.dart';
import 'package:interface_responsiva_package/pages/home/widgets/app-bar-responsiva.dart';
import 'package:interface_responsiva_package/pages/home/widgets/listagem-stories.dart';
import 'package:interface_responsiva_package/pages/home/widgets/postagem.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 52),
          child: AppBarResponsiva(),
        ),
      backgroundColor: Colors.black87,
      body: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1000
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: ListView(
            children: [
              ListagemStories(),
              Postagem()
            ],
          ),
        ),
      ),
    );
  }
}
