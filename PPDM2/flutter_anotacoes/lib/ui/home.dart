import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() =>  _HomeState();
}

class  _HomeState extends State<Home> {
  List<dynamic> anotacoes = [
    {"data": "2026-07-24 10:00", "anotacao": "Tomar café"},
    {"data": "2026-07-24 12:00", "anotacao": "Almoço"},
    {"data": "2026-07-24 12:00", "anotacao": "Café da tarde"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Anotações"),),
      body: Center(
        child: ListView.separated(itemBuilder: (context, i)=> ListTile(
          title: Text(anotacoes[i].data),
          subtitle: Text(anotacoes[i]["anotacao"]),
        ),
        separatorBuilder: ( _, _) => Divider(),
        itemCount: 3,
        ),
      ),
    );
  }
}