import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop_uitm/ui_screen/page_detail.dart';

class PageHome extends StatefulWidget {
  String email ="";
  PageHome({required this.email});//constructor atau penampung data

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {

  List<Container> listFoto =[];

  var itemListFoto = [
    {"nama" : "Wisata 1", "gambar":  "gambar1.jpg"}, //0
    {"nama" : "Wisata 2", "gambar":  "gambar2.jpg"},//1
    {"nama" : "Wisata 3", "gambar":  "gambar3.jpg"},//2
    {"nama" : "Wisata 4", "gambar":  "gambar4.jpg"},
    {"nama" : "Wisata 5", "gambar":  "gambar5.jpg"},
    {"nama" : "Wisata 6", "gambar":  "gambar6.jpg"},
  ];

  _createAlbumFoto ()async{
    for(var i = 0; i<itemListFoto.length; i++){
      final itemFoto = itemListFoto[i];
      final String? gambarFoto = itemFoto['gambar'];
      String namaFoto = itemFoto['nama']!;

      listFoto.add(Container(
          padding: EdgeInsets.all(10),
        child: Card(
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageDetail(namaFoto: namaFoto, fileFoto: gambarFoto!)
              ));
            },
            child: Column(
              children: [
                Padding(padding:  EdgeInsets.all(5),),
                Hero(
                  tag: namaFoto,
                  child: Image.asset('asset/$gambarFoto', height: 125,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('$namaFoto'),
                )
              ],
            ),
          ),

        ),
      ));

    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _createAlbumFoto();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Home'),
      ),

      body: GridView.count(crossAxisCount: 2,
        children: listFoto,
      ),
      // body: Center(
      //   child: Text('Welcome ${widget.email}',
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 16,
      //       color: Colors.deepPurple
      //     ),
      //
      //   ),
      // ),
    );
  }
}
