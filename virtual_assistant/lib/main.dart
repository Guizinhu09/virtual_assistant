import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstRoute(),

  ));
}

 class FirstRoute extends StatelessWidget{
  @override
   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("AgendaApp"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("images/assistente.jpg", height: 300,),
            Text(""),
            ElevatedButton(
              child: Text("IR PARA A ASSISTENTE"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
            Text(''),
            ElevatedButton(
              child: Text("SOBRE NÓS"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdRoute()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
 }

 class SecondRoute extends StatelessWidget{
  @override
   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("ASSISTENTE VIRTUAL"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            //Icons and lyrics
            ListTile(leading: Icon(Icons.map),title: Text("Mapa"),),
            ListTile(leading: Icon(Icons.photo_album),title: Text("Foto album"),),
            ListTile(leading: Icon(Icons.call),title: Text("Ligação"),),
            ListTile(leading: Icon(Icons.accessible),title: Text("Accessibilidade"),),
            ListTile(leading: Icon(Icons.location_city),title: Text("Localização"),),
            //search for topics
            ListTile(
              tileColor: Colors.black,
              title: Text("PESQUISAR TÓPICOS",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            ListBody(
              children: <Widget>[
                Image.asset("images/lupa.png", height: 300,),
                ElevatedButton(
                  child: Text("Voltar"),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FirstRoute()),
                    );
                  },
                )

              ],
            )
          ],
        ),
      ),
    );
  }
 }

 class ThirdRoute extends StatelessWidget
 {
   @override
   Widget build(BuildContext context)
   {
     return Scaffold(
       appBar: AppBar(
         title: Text("SOBRE ASSISTENTES VIRTUAIS!"),
         backgroundColor: Colors.green,
       ),
       body: Center(
         child: Column(
           children: [
             Image.asset("images/lupa.png", height: 300,),
             Text("Um assistente virtual é, geralmente um profissional autônomo que oferece assistência administrativa, técnica, criativa ou apenas assistência para clientes remotamente a partir de um home office.",
             style: TextStyle(
               fontWeight: FontWeight.bold
             ),),
             Text(""),
             ElevatedButton(
               child: Text("Voltar"),
               onPressed: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => FirstRoute()),
                 );
               },
             )
           ],
         ),
       ),
     );
   }
 }

