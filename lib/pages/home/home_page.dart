import 'package:flutter/material.dart';
import 'package:interface_responsiva_package/pages/home/widgets/app-bar-responsiva.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 52),
          child: AppBarResponsiva(),
        )
    );
  }
}
