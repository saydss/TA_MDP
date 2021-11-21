// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DetailItem extends StatefulWidget {
  final int id;
  final String title;
  const DetailItem({Key? key, required this.id, required this.title})
      : super(key: key);
 
  @override
  _DetailItemState createState() => _DetailItemState();
}
 
class _DetailItemState extends State<DetailItem> {
  late Future<List<Item>> items;
 
  @override
  void initState() {
    super.initState();
    items = fetchitems(widget.id);
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Items'),
          backgroundColor: Colors.black),
          backgroundColor: Colors.grey[700],
      body: Center(
          child: FutureBuilder(
        builder: (context, AsyncSnapshot<List<Item>> snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.network("${snapshot.data![index].Gambar?? ''}" ),
                        
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //Image.network("${snapshot.data![index].Gambar?? ''}" ),
                        Text("Items: ${snapshot.data![index].item?? ''}" ),
                        Text("Info: ${snapshot.data![index].info?? ''}"),
                        Text("Harga: ${snapshot.data![index].harga?? ''}"),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            );
          } else if (snapshot.hasError) {
            print(snapshot.error.toString());
            return const Center(child: Text('Something went wrong :('));
          }
          return const CircularProgressIndicator();
        },
        future: items,
      )),
    );
  }
}
class Item {
  final int? id;
  final String? item;
  final String? info;
  final String? harga;
  final String? Gambar;
  

Item({
  this.id,
  this.item,
  this.info,
  this.harga,
  this.Gambar
  });

factory Item.fromJson(Map<String, dynamic> json) {
  return Item(
    id: json ['id'] as int,
    item: json ['item'] as String,
    info: json ['Info'] as String,
    harga: json ['harga'] as String,
    Gambar: json ['Gambar'] as String
  );
}
}
Future<List<Item>> fetchitems(id) async {
  final response = await http
      .get(Uri.parse('https://my-json-server.typicode.com/saydss/APIDotaItem/db/'));
 
  if (response.statusCode == 200) {
    Iterable it = jsonDecode(response.body)['dotaitem'] as List;
    return it.map((item) => Item.fromJson(item)).toList();
  } else {
    throw Exception('Failed to load items');
  }
}
// class RepositoryItems{
//   final _baseUrl = 'https://my-json-server.typicode.com/saydss/APIDotaItem/db/';

//   Future getData() async{
//     try {
//       final response = await http.get(Uri.parse(_baseUrl));
//        if (response.statusCode == 200) {
//         Iterable it = jsonDecode(response.body);
//         List<Item> detailitem = it.map((e) => Item.fromJson(e)).toList();
//         return detailitem;
//       }
//     } catch (e) {
//       // ignore: avoid_print
//       print(e.toString());
//     }
//   }
// }
// List<Item> listItem = [];
// RepositoryItems repositoryItems = RepositoryItems();
