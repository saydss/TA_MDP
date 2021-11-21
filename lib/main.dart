import 'package:flutter/material.dart';
import 'package:ta_mdp/screen/home.dart';
import 'package:ta_mdp/Screen/detail.dart';
void main() async {
  runApp(const DotaInfo());
}
 
class DotaInfo extends StatelessWidget {
  const DotaInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dota2 Info',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/detail': (context) => const DetailPage(id: 1, hero: ''),
      },
    );
  }
}
