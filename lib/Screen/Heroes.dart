// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'home.dart';
import 'detail.dart';

class HeroList extends StatefulWidget {
  const HeroList({Key? key}) : super(key: key);
 
  @override
  _HeroListState createState() => _HeroListState();
}
 
class _HeroListState extends State<HeroList> {
  late Future<List<Show>> shows;

  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Heroes'),
            backgroundColor: Colors.blue[900],),
             backgroundColor: Colors.black, 
            body: Container(child: Padding(
              padding: const EdgeInsets.all(50),
              child:GridView(children: [
                GestureDetector
                (
                  onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new DetailPage(id: 1, hero: ""))
                  ),
                  child: Container (decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepPurple[800],),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset('Hero/antimage.png',scale: 6,),
                    Padding(padding: new EdgeInsets.all(10),),
                    Text("ANTI MAGE",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],
                  ),
                  ),
                ),
                GestureDetector
                (
                  onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new DetailPage(id: 2, hero: ""))
                  ),
                  child: Container (decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepOrangeAccent[400],),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset('Hero/clinkz.png',scale: 5.5,),
                    Padding(padding: new EdgeInsets.all(10),),
                    Text("CLINKZ",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],
                  ),
                  ),
                ),
                GestureDetector
                (
                  onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new DetailPage(id: 3, hero: ""))
                  ),
                  child: Container (decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.amber[800],),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset('Hero/earthshaker.png',scale: 6,),
                    Padding(padding: new EdgeInsets.all(10),),
                    Text("EARTHSHAKER",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],
                  ),
                  ),
                ),
                GestureDetector
                (
                  onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new DetailPage(id: 4, hero: ""))
                  ),
                  child: Container (decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[800],),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset('Hero/faceless_void.png',scale: 6,),
                    Padding(padding: new EdgeInsets.all(10),),
                    Text("FACELESS VOID",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],
                  ),
                  ),
                ),
                GestureDetector
                (
                  onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new DetailPage(id: 5, hero: ""))
                  ),
                  child: Container (decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange[900],),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset('Hero/juggernaut.png',scale: 5,),
                    Padding(padding: new EdgeInsets.all(10),),
                    Text("JUGGERNAUT",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],
                  ),
                  ),
                ),
                GestureDetector
                (
                  onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new DetailPage(id: 6, hero: ""))
                  ),
                  child: Container (decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueGrey[700]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset('Hero/terrorblade.png',scale: 5,),
                    Padding(padding: new EdgeInsets.all(10),),
                    Text("TERRORBLADE",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],
                  ),
                  ),
                ),
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20, mainAxisSpacing: 20),
              ),
              ),
              ),
              );
  }
}