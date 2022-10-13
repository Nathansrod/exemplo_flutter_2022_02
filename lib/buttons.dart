import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override

  Color scaffoldBgColor = Colors.white;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        title: Text('Troca Cores'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_color_reset, size: 35.0,),
        onPressed: (){
          //TODO criar uma função que limpa a cor de fundo
        },
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  setState((){
                    scaffoldBgColor = Colors.red;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                      children: const [
                        Icon(Icons.circle, size: 40.0, color: Colors.red,),
                        SizedBox(width: 10.0,),
                        Text("Vermelho"),
                      ],
                  )
                ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: (){
                setState((){
                  scaffoldBgColor = Colors.green;
                });
              },
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: const [
                      Icon(Icons.circle, size: 40.0, color: Colors.green,),
                      SizedBox(width: 10.0,),
                      Text("Verde"),
                    ],
                  )
              ),
            ),
            //TODO adicionar mais botões que troquem a cor de fundo para uma nova cor, a sua escolha
          ],
        ),
      ),
    );
  }
}
